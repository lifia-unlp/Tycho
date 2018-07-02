class ExperimentTask {
  constructor(name, notes, componentClassname, model) {
    this.name = name;
    this.notes = notes;
    this.componentClassname = componentClassname;
    this.model = model;
    this.koboldModel = { visitedUrls: [] };
  }

  setModel(model) {
    this.model = model;
  }

  logUrl(url, tabId) {
    let visit = { url: url, tab: tabId, date: new Date() };
    let past = this.koboldModel.visitedUrls;
    if (past.length > 0 && past[past.length - 1].url == visit.url) {
      return;
    }
    past.push(visit);
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
