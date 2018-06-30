class NullComponent {
    
    constructor(parameters) {
        this.notice = parameters.notice;
    }

    render() {
        console.log("Activating a NullComponent :)", this.notice);
    }

    deactivate() {
        console.log("Deactivating a NullComponent :(", this.notice);
    }
}