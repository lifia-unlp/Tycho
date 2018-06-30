class SUSComponent extends UIComponent {
  constructor(taskSpec) {
    super(taskSpec);
  }

  //This is not the right hook to do this. Need a new one
  render() {
    super.render();
    if (!this.startTime || this.finished || this.paused) {
      this.showOverlay();
    }
  }

  buildComponent() {
    const me = this;
    let susForm = $('<div id="sus" class="topNotification"></div>');
    susForm.append(
      "<legend>Gracias, por favor complete el siguiente formulario.</legend>"
    );
    for (let questionNumber = 0; questionNumber < 10; questionNumber++) {
      var question = this.getSusQuestions()[questionNumber];
      var paragraph = $("<p></p>");
      var table = $("<table></table>");
      var row = $("<tr></tr>");
      table.append(row);
      paragraph.append(
        "<label>" + question.number + ". " + question.description + "</label>"
      );
      paragraph.append(table);
      for (let optionNumber = 1; optionNumber <= 5; optionNumber++) {
        var radio = $(
          '<td><input class="susRadio" type="radio" name="question' +
            question.number +
            '" value="' +
            optionNumber +
            '" /></td>'
        );
        if (optionNumber == 1) radio.append("<p>En completo desacuerdo</p>");
        if (optionNumber == 5) radio.append("<p>Completamente de acuerdo</p>");
        if (optionNumber > 1 && optionNumber < 5)
          radio.append("<p>&nbsp;<br/>&nbsp;</p>");
        row.append(radio);
      }
      susForm.append(paragraph);
    }
    susForm.append(
      '<input id="susbutton" class="tracker-button" type="submit" value="Enviar"/>'
    );
    susForm.on("click", "#susbutton", () => {
      me.finishSus();
    });
    return susForm;
  }

  finishSus() {
    let results = {};
    for (let questionNumber = 1; questionNumber <= 10; questionNumber++) {
      results["question" + questionNumber] = $(
        'input:radio[name="question' + questionNumber + '"]:checked'
      ).val();
      if (!results["question" + questionNumber]) {
        results["question" + questionNumber] = 0;
      }
    }
    this.submitResults(results);
    this.done();
  }

  getSusQuestions() {
    return [
      {
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
        description:
          "Creo que necesitaría del apoyo de un experto para usar el sitio"
      },
      {
        number: 5,
        description:
          "Encontré las diversas posibilidades del sitio bastante bien integradas"
      },
      {
        number: 6,
        description: "Me pareció que había demasiada inconsistencia en el sitio"
      },
      {
        number: 7,
        description:
          "Imagino que la mayoría de las personas aprenderían muy rápidamente a utilizar el sitio"
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
        description:
          "Necesito aprender muchas cosas antes de manejarme con el sitio"
      }
    ];
  }
}
