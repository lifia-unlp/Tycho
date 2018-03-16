var serviceURL = "http://autorefactoring.lifia.info.unlp.edu.ar/tracker";
var serviceURL = "http://localhost:8080/tracker";

var userId = localStorage.getItem("userId");
if (userId == null) userId = uuidv4();
var state = JSON.parse(localStorage.getItem("tasksState"));
if (state == null) state = {
    currentTaskIndex: -1,
    ellapsedMs: 0,
    status: "stopped",
    startTime: 0,
    justStarted: true
};

var tasks = [{
        id: 1,
        description: "<b>Tarea 1</b> a)Busque botas (en ingles, <b>\"BOOT\"</b>) con el buscador del sitio. b)Seleccione entre los resultados <b>\"Women's Bootie Baqueira - Seaweed\"</b>. c)Seleccione el talle 37 (medida europea). Pulse <b>Iniciar</b> cuando esté listo, y luego <b>Finalizar</b> cuando lo haya encontrado.",
        successCondition: '($(".details-right-head:contains(\'Baqueira\')").length && $("select").first().val()==6.5)?1:0'
    },
    {
        id: 2,
        description: "<b>Tarea 2</b> a)Agregue 2 pares botas al carrito. b)Complete el proceso de compra (Checkout). Pulse <b>Iniciar</b> cuando esté listo, <b>Finalizar</b> cuando haya finalizado el proceso.",
        successCondition: '$(\'#success\').length'
    },
];
var susQuestions = [{
        number: 1,
        description: "Creo que me gustará utilizar con frecuencia este sitio"
    },
    {
        number: 2,
        description: "Encontré el sitio innecesariamente complejo"
    },
    {
        number: 3,
        description: "Me pareció que fue fácil utilizar el sitio"
    },
    {
        number: 4,
        description: "Creo que necesitaría del apoyo de un experto para usar el sitio"
    },
    {
        number: 5,
        description: "Encontré las diversas posibilidades del sitio bastante bien integradas"
    },
    {
        number: 6,
        description: "Me pareció que había demasiada inconsistencia en el sitio"
    },
    {
        number: 7,
        description: "Imagino que la mayoría de las personas aprenderían muy rápidamente a utilizar el sitio"
    },
    {
        number: 8,
        description: "Encontré el sitio muy grande al utilizarlo"
    },
    {
        number: 9,
        description: "Me sentí muy confiado/a en el manejo del sitio"
    },
    {
        number: 10,
        description: "Necesito aprender muchas cosas antes de manejarme con el sitio"
    }
];

$(function() {
    $("head").append("<style>#tracker{position:fixed;width:100%;display:block;background:#aaffaa;bottom:0px;z-index:9999;padding:10px}</style>");
    $("head").append("<style>#notification{position:fixed;width:25%;left:40%;text-align:center;display:block;background:#aaffaa;top:20px;z-index:9999;padding:10px}</style>");
    $("head").append("<style>#welcome{position:fixed}.topNotification{text-align:center;font-size:.9em;width:60%;margin:0 20%;display:block;background:#aaffaa;top:20px;z-index:9999;padding:10px 50px}#sus{position:absolute;} #sus table{width:80%;margin:0 10%}#sus td{width:20%;font-size:.8em;text-align:center}.susRadio{cursor:pointer}#welcome>p.field{text-align:left}#welcome>p.field input{width:80px}</style>");
    $("head").append("<style>#overlay {position: fixed;top: 0;left: 0;width: 100%;height: 100%;background-color: #000;filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity: 0.5;opacity: 0.5;z-index: 9998;}</style>");
    $("body").append("<div id=\"tracker\"><span id=\"trackerDescription\"></span> </div>");
    $("body").append("<div id=\"notification\"></div>");
    $("body").append("<div id=\"overlay\"></div>");
    $("#tracker").append(newButton("startButton", "Iniciar", startTask)).append(" ");
    $("#tracker").append(newButton("pauseButton", "Pausar", pauseTask)).append(" ");
    $("#tracker").append(newButton("resumeButton", "Reanudar", resumeTask)).append(" ");
    $("#tracker").append(newButton("endButton", "Finalizar", endTask)).append(" ");
    $("#tracker").append(newButton("resetButton", "Reiniciar", resetExperiment)).append(" ");

    function animate() {
        $("#startButton").animate({
            opacity: "0.4"
        }, "fast").animate({
            opacity: "1"
        }, "fast", animate)
    };
    animate();
    createSUSQuestionnaire();
    $("#notification").hide();
    $("#overlay").hide();
    $("#sus").hide();
    $("#tracker").hide();
    if (state.justStarted) {
        $("#overlay").show();
        var welcome = $("<form id=\"welcome\" class=\"topNotification\"></form>").submit(sendDemographics);
        welcome.append("<h2>Bienvenido al experimento</h2>");
        welcome.append("<p>En la barra inferior encontrará las instrucciones.</p>");
        welcome.append("<p>Le pediremos que realice 2 tareas, y luego le presentaremos un formulario multiple choice para completar.</p>");
        var fields = $("<div class=\"row\">");
        welcome.append("<p class=\"field\"><label for=\"age\">Ingrese su edad</label><br/><input class=\"form-control\" id=\"age\" placeholder=\"Edad\"></p>");
        welcome.append("<p class=\"field\"><label for=\"hoursPerDay\">¿Cuántas hs por día promedio navega por internet?</label><br/><input class=\"form-control\" id=\"hoursPerDay\" placeholder=\"Nro\"></p>");
        welcome.append("<p><input type=\"submit\" class=\"btn btn-default\" value=\"Comenzar\"/></p>")
        welcome.append(fields);
        $("body").append(welcome);
    } else {
        if (state.status == "ended") showEndedExperimentUI();
        else {
            task = tasks[state.currentTaskIndex];
            $("#trackerDescription").html(task.description);
            hideAllButtons();
            if (state.status == "paused") {
                $("#tracker").show();
                $("#overlay").show();
                $("#resumeButton").show();
                say("Tarea en pausa (" + state.ellapsedMs + "ms)", false);
            }
            if (state.status == "playing") {
                $("#tracker").show();
                $("#pauseButton").show();
                $("#endButton").show();
            }
            if (state.status == "stopped") {
                $("#tracker").show();
                $("#overlay").show();
                $("#startButton").show();
            }
        }
    };
})

function removeWelcome() {
    $("#welcome").delay(200).fadeOut()
}

function save() {
    localStorage.setItem("tasksState", JSON.stringify(state));
    localStorage.setItem("userId", userId);
}

function reset() {
    localStorage.removeItem("tasksState");
    localStorage.removeItem("userId");
}

function hideAllButtons() {
    $("#startButton").hide();
    $("#pauseButton").hide();
    $("#endButton").hide();
    $("#resumeButton").hide();
    $("#resetButton").hide();
}

function startNextTask() {
    state.currentTaskIndex++;
    task = tasks[state.currentTaskIndex];
    var noMoreTasks = typeof(task) == "undefined";
    if (noMoreTasks) {
        endExperiment();
    } else {
        state.ellapsedMs = 0;
        save();
        hideAllButtons();
        $("#trackerDescription").html(task.description);
        $("#startButton").show();
    }
}

function say(text, mustFade) {
    mustFade = typeof mustFade !== "undefined" ? mustFade : true;
    $("#notification").html(text).show();
    if (mustFade) {
        $("#notification").delay(1000).fadeOut();
    }
}

function startTask() {
    $("#overlay").hide();
    $("#startButton").hide();
    $("#pauseButton").show();
    $("#endButton").show();
    state.status = "playing";
    state.startTime = new Date().getTime();
    save();
    say("Tarea Iniciada");
}

function pauseTask() {
    $("#overlay").show();
    $("#pauseButton").hide();
    $("#endButton").hide();
    $("#resumeButton").show();
    state.status = "paused";
    state.ellapsedMs += (new Date().getTime() - state.startTime);
    save();
    say("Tarea en pausa (" + state.ellapsedMs + "ms)", false);
}

function resumeTask() {
    $("#overlay").hide();
    $("#resumeButton").hide();
    $("#pauseButton").show();
    $("#endButton").show();
    state.status = "playing";
    state.startTime = new Date().getTime();
    save();
    say("Tarea reanudada");
}

function endTask() {
    $("#overlay").show();
    $("#resumeButton").hide();
    $("#pauseButton").hide();
    $("#endButton").hide();
    state.ellapsedMs += (new Date().getTime() - state.startTime);
    state.status = "stopped";
    save();
    say("Tarea en finalizada (" + state.ellapsedMs + "ms)");
    $("#sus").show();
}

function resetExperiment() {
    reset();
    window.location.reload(false);
}

function endExperiment() {
    showEndedExperimentUI();
    state.status = "ended";
    save();
}

function showEndedExperimentUI() {
    hideAllButtons();
    $("#sus").css("position", "fixed");
    $("#sus").show();
    $("#sus").html("<h2>¡Es todo! Gracias por participar</h2>").delay(1000).fadeOut();

    $("#resetButton").show();
    $("#trackerDescription").html("El experimento terminó. ¡Gracias por participar!");
    $("#overlay").delay(1000).fadeOut();
    $("#tracker").hide();
}

function sendTaskResults() {
    var url = serviceURL + "/tasks/";
    var taskId = tasks[state.currentTaskIndex].id;
    var body = {
        taskId: taskId,
        taskDescription: tasks[state.currentTaskIndex].description,
        milliseconds: state.ellapsedMs,
        successful: eval(tasks[state.currentTaskIndex].successCondition),
        userId: userId
    };
    for (questionNumber = 1; questionNumber <= 10; questionNumber++)
        body["question" + questionNumber] = $("input:radio[name=\"question" + questionNumber + "\"]:checked").val();
    $.post(url, body)
        .done(function(data) {
            $("input:radio").prop("checked", false);
            $("#sus").hide();
            startNextTask();
        });
    return false;
}


function sendDemographics() {
    var url = serviceURL + "/users/";
    var version = getUrlParameter("version");
    var body = {
        userId: userId,
        age: $("#age").val(),
        hoursPerDay: $("#hoursPerDay").val(),
        version: version
    };
    $.post(url, body)
        .done(function(data) {
            state.justStarted = false;
            save();
            removeWelcome();
            $("#tracker").show();
            startNextTask();
        });
    return false;
}

function newButton(id, text, func) {
    return $("<a/>", {
        text: text,
        href: "javascript:void(0)",
        class: "btn btn-default",
        id: id,
        click: func
    });
}

function createSUSQuestionnaire() {
    var susForm = $("<form id=\"sus\" class=\"topNotification\"></form>").submit(sendTaskResults);
    susForm.append("<legend>Gracias, por favor complete el siguiente formulario.</legend>");
    susForm.append("<input type=\"hidden\" name=\"userId\" value=\"" + userId + "\"/>");
    susForm.append("<input type=\"hidden\" name=\"taskId\" id=\"taskId\"/>");
    for (questionNumber = 0; questionNumber < 10; questionNumber++) {
        var question = susQuestions[questionNumber];
        var paragraph = $("<p></p>");
        var table = $("<table></table>");
        var row = $("<tr></tr>");
        table.append(row);
        paragraph.append("<label>" + question.number + ". " + question.description + "</label>");
        paragraph.append(table);
        for (optionNumber = 1; optionNumber <= 5; optionNumber++) {
            var radio = $("<td><input class=\"susRadio\" type=\"radio\" name=\"question" + question.number + "\" value=\"" + optionNumber + "\" /></td>");
            if (optionNumber == 1) radio.append("<p>En completo desacuerdo</p>");
            if (optionNumber == 5) radio.append("<p>Completamente de acuerdo</p>");
            if (optionNumber > 1 && optionNumber < 5) radio.append("<p>&nbsp;<br/>&nbsp;</p>");
            row.append(radio);
        }
        susForm.append(paragraph);
    }
    susForm.append("<button class=\"btn btn-default\" type=\"submit\">Enviar</button>");
    $("body").append(susForm);
}

function uuidv4() {
    return ([1e7] + -1e3 + -4e3 + -8e3 + -1e11).replace(/[018]/g, c =>
        (c ^ crypto.getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16)
    )
}

var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split("&"),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split("=");

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
}
