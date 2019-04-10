/**
 * This class implement the Facade pattern. It is the only entry point
 * in the content script subsystem for remote messages from the background scripts.
 * See content.js to learn how I receive messages from a remote object (the background scripts)
 * All my methods have one argument (arguments)
 */

let contentFacadeSingleton = null;

class ContentFacade extends Facade {
  constructor() {
    super();
  }

  static getSingleton() {
    if (contentFacadeSingleton == null) {
      contentFacadeSingleton = new ContentFacade();
    }
    return contentFacadeSingleton;
  }

  //The session changed in the background / update
  async render(args) {
    let task = await BackgroundProxy.getSingleton().getActiveTask();
    if (args.visible) {
      this.renderComponent(task);
    } else {
      if (this.activeComponent) {
        this.activeComponent.deactivate();
      }
    }
  }

  // Private methods from here down

  renderComponent(componentSpecification) {
    if (this.activeComponent) {
      this.activeComponent.deactivate();
    }
    if (componentSpecification == null) {
      this.activeComponent = null;
    } else {
      let className = componentSpecification.componentClassname;
      let model = componentSpecification.model;
      this.activeComponent = new (this.componentClasses())[className](model);
      this.activeComponent.render();
    }
  }

  attachSkipKeysListener() {
    document.addEventListener("keyup", e => {
        e = e || window.event;
        if (e.getModifierState("Control") & e.getModifierState("Shift")) {
            if (e.keyCode == 39) {
                this.skipForward();
            } else {
                if (e.keyCode == 37) {
                    this.skipBackwards();
                }
            }
        }
    });
}

skipForward() {
    if (window.confirm(browser.i18n.getMessage("skipForwardsWarning"))) {
        BackgroundProxy.getSingleton().skipForwards();
    }
}

skipBackwards() {
  if (window.confirm(browser.i18n.getMessage("skipBackwardsWarning"))) {
    BackgroundProxy.getSingleton().skipBackwards();
  }
}




  //Ugly trick until I learn how to do this with reflection.
  componentClasses() {
    return {
      NullComponent: NullComponent,
      TaskInstructionsComponent: TaskInstructionsComponent,
      SUSComponent: SUSComponent,
      HelloGoodbyeComponent: HelloGoodbyeComponent,
      MessageComponent: MessageComponent,
      YoutubeVideoComponent: YoutubeVideoComponent,
      QuestionaireComponent: QuestionaireComponent,
      SemaphoreWaitComponent: SemaphoreWaitComponent,
      SemaphoreSignalComponent: SemaphoreSignalComponent,
      InputVariableComponent: InputVariableComponent,
      DOMCollectorComponent: DOMCollectorComponent
    };
  }
}
