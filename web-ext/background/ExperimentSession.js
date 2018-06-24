class ExperimentSession {

    constructor(sequence) {
        this.componentSpecSequence = sequence;
        this.current = -1;
        this.userId = this.uuidv4();
    }
    
    getUserId() {
        return this.userId;
    }

    start() {
        this.current = 0;
        ContentProxy.getSingleton().update();
    }

    next() {
        if (this.current + 1 < this.componentSpecSequence.length) {
            this.current = this.current + 1;
        }
        ContentProxy.getSingleton().update();
    }

    getActiveComponentSpec() {
        if (0 <= this.current && this.current < this.componentSpecSequence.length) {
            return this.componentSpecSequence[this.current];
        } else {
            return { componentClass: 'NullComponent', parameters: { notice: 'Session component index is out of bounds' } }
        }
    }


    startActiveTask() {
        let params = this.getActiveComponentSpec().parameters;
        params.paused = false;
        params.startTime = new Date().getTime();
        ContentProxy.getSingleton().update();
    }

    pauseActiveTask() {
        let params = this.getActiveComponentSpec().parameters;
        params.paused = true;
        params.ellapsedMs += new Date().getTime() - params.startTime;
        ContentProxy.getSingleton().update();
    }

    resumeActiveTask() {
        let params = this.getActiveComponentSpec().parameters;
        params.paused = false;
        params.startTime = new Date().getTime();
        ContentProxy.getSingleton().update();
    }

    finishActiveTask() {
        let params = this.getActiveComponentSpec().parameters;
        params.paused = false;
        params.ellapsedMs += new Date().getTime() - params.startTime;
        params.finished = true;
        ContentProxy.getSingleton().update();
    }

    finish() {
        this.current = -1;
        ContentProxy.getSingleton().update();
    }

    uuidv4() {
        return ([1e7] + -1e3 + -4e3 + -8e3 + -1e11).replace(/[018]/g, c =>
            (c ^ crypto.getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16)
        )
    }

    static fromJson(json) {
        let session = new ExperimentSession();
        session.id = json.id;
        session.componentSpecSequence = json.componentSpecSequence;
        return session
    }

    static withOneNullComponent() {
        return new ExperimentSession([
            {
                componentClass: 'NullComponent',
                parameters: { notice: 'A null component to mark the start of the sample' }
            }
        ])
    }

    static withDemoSequence() {
        return new ExperimentSession([
            {
                componentClass: 'WelcomeComponent',
                parameters: {}
            },
            {
                componentClass: 'TaskInstructionsComponent',
                parameters: {
                    id: 1,
                    description: "<b>Tarea 1</b> a)Busque botas (en ingles, <b>\"BOOT\"</b>) con el buscador del sitio. b)Seleccione entre los resultados <b>\"Women's Bootie Baqueira - Seaweed\"</b>. c)Seleccione el talle 37 (medida europea). Pulse <b>Iniciar</b> cuando esté listo, y luego <b>Finalizar</b> cuando lo haya encontrado.",
                    successCondition: '($(".details-right-head:contains(\'Baqueira\')").length && $("select").first().val()==6.5)?1:0'
                }
            },
            {
                componentClass: 'TaskInstructionsComponent',
                parameters: {
                    id: 2,
                    description: "<b>Tarea 2</b> a)Agregue 2 pares botas al carrito. b)Complete el proceso de compra (Checkout). Pulse <b>Iniciar</b> cuando esté listo, <b>Finalizar</b> cuando haya finalizado el proceso.",
                    successCondition: '$(\'#success\').length'
                }
            },
            {
                componentClass: 'NullComponent',
                parameters: { notice: 'A null component to mark the end of the sample' }
            }
        ])
    }
}