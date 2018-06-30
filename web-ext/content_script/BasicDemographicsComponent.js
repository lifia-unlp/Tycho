class BasicDemographicsComponent extends UIComponent {
   
    constructor(model) {
        super(model);
    }

    buildComponent() {
        let me = this;
        let welcome = $("<div id=\"welcome\" class=\"topNotification\"></div>");
        welcome.append("<h2>Cuéntenos sobre usted</h2>");
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
        this.model.age = $("#age").val();
        this.model.hoursPerDay = $("#hoursPerDay").val();
        $('#welcome-button').prop( "disabled",(! this.model.age) ||  (! this.model.hoursPerDay));
    }

    async submitAndFinish() {
        await this.submitResults();
        this.done();
    }


}