class ExperimentTask {
  
    constructor(name, notes, componentClassname, model) {
        this.name = name;
        this.notes = notes;
        this.componentClassname = componentClassname;
        this.model = model;
        this.koboldEvents = [];
    }

    setModel(model) {
        this.model = model;
    }

    logExternalKoboldEvent(event) {
        this.koboldEvents.push(event);
    }

    static fromJson(taskJson) {
        return new ExperimentTask(
            taskJson.name,
            taskJson.notes,
            taskJson.componentClassname,
            taskJson.model
        );
    }
}
