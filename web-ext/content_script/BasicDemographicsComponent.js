class BasicDemographicsComponent extends UIComponent {
   
    constructor(taskSpec) {
        super(taskSpec);
    }

    buildComponent() {
        let me = this;
        let welcome = $("<div id=\"welcome\" class=\"topNotification\"></div>");
        welcome.append("<h2>Bienvenido al experimento</h2>");
        welcome.append("<p>En la barra inferior encontrará las instrucciones.</p>");
        welcome.append("<p>Le pediremos que realice una serie de tareas, y luego le presentaremos un formulario multiple choice para completar.</p>");
        welcome.append("<p class=\"field\"><label for=\"age\">Ingrese su edad</label><br/><input class=\"form-control\" id=\"age\" placeholder=\"Edad\"></p>");
        welcome.append("<p class=\"field\"><label for=\"hoursPerDay\">¿Cuántas hs por día promedio navega por internet?</label><br/><input class=\"form-control\" id=\"hoursPerDay\" placeholder=\"Nro\"></p>");
        welcome.append("<p><input id=\"welcome-button\"  disabled=\"\" type=\"submit\" class=\"tracker-btn\" value=\"Comenzar\"/></p>")
        welcome.on('click','#welcome-button',(e) => {me.submitAndFinish()});
        welcome.on('change keyup paste','#age',(e) => {me.inputChanged()});
        welcome.on('change keyup paste','#hoursPerDay',(e) => {me.inputChanged()});
        return welcome;
    }

    activate() {
        super.activate();
        this.showOverlay();
    }

    inputChanged() {
        this.data = {
            age: $("#age").val(),
            hoursPerDay: $("#hoursPerDay").val(),
        };
        $('#welcome-button').prop( "disabled",(! this.data.age) ||  (! this.data.hoursPerDay));
    }

    submitAndFinish() {
        this.submitResults(this.data);
        this.done();
    }


}