/** 
* This class implement the Facade pattern. It is the only entry point
* in the content script subsystem for remote messages from the background scripts. 
* See content.js to learn how I receive messages from a remote object (the background scripts)
* All my methods have one argument (arguments)
*/

let contentFacadeSingleton = null;

class ContentFacade extends Facade {

    static getSingleton() {
        if (contentFacadeSingleton == null) {
            contentFacadeSingleton = new ContentFacade();
        }
        return contentFacadeSingleton
    }

    //The session changed in the background / update
    async render() {
        let task = await BackgroundProxy.getSingleton().getActiveTask();
        this.renderComponent(task);
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
            this.activeComponent = new (this.componentClasses()[className])(model);
            this.activeComponent.render();
        }
    }

    //Ugly trick until I learn how to do this with reflection.
    componentClasses() {
        return {
            NullComponent: NullComponent,
            BasicDemographicsComponent: BasicDemographicsComponent,
            TaskInstructionsComponent: TaskInstructionsComponent,
            SUSComponent: SUSComponent,
            HelloGoodbyeComponent: HelloGoodbyeComponent,
            MessageComponent: MessageComponent
        }
    }



}