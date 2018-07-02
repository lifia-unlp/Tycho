class Facade {

    handle(rmcRequest) {
        const me = this;
        let prom = new Promise((resolve, reject) => {
            //Reject if the rmcRequest is not well formed
            //console.log('Received: ', JSON.stringify(rmcRequest));
            if ((!rmcRequest.hasOwnProperty('methodName')) || (!rmcRequest.hasOwnProperty('arguments'))) {
                reject("Invalid remote method call" + JSON.stringify(rmcRequest));
                return;
            }
            //Reject if the Façade does not not understand the message
            if (!me[rmcRequest.methodName]) {
                reject("Message not understood");
                return;
            }
            let result = me[rmcRequest.methodName](rmcRequest.arguments)
            //console.log('Promised: ', JSON.stringify(result));
            resolve(result);
        });
        return prom
    }

}