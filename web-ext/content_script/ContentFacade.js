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
    async update() {
        let spec = await BackgroundProxy.getSingleton().getActiveComponentSpec();
        this.activateComponentSpec(spec);
    }


    // Private methods from here down

    activateComponentSpec(componentSpecification) {
        if (this.activeComponent) {
            this.activeComponent.deactivate();
        }
        if (componentSpecification == null) {
            this.activeComponent = null;
        } else {
            this.activeComponent = new (this.componentClasses()[componentSpecification.componentClassname])(componentSpecification);
            this.activeComponent.activate();
        }
    }

    //Ugly trick until I learn how to do this with reflection.
    componentClasses() {
        return {
            NullComponent: NullComponent,
            BasicDemographicsComponent: BasicDemographicsComponent,
            TaskInstructionsComponent: TaskInstructionsComponent,
            SUSComponent: SUSComponent,
            MessageComponent: MessageComponent
        }
    }



}