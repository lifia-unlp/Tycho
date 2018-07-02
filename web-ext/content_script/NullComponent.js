class NullComponent extends UIComponent {
    
    constructor(model) {
        super(model)
    }

    render() {
        console.log("Activating a NullComponent :)");
    }

    deactivate() {
        console.log("Deactivating a NullComponent :(");
    }
}