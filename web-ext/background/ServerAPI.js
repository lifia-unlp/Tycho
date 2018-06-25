class ServerAPI {

    submit(payload, service) {
        const params = new URLSearchParams();
        for (let key in payload) {
            params.append(key, payload[key]);
        }
        axios.post(serviceURL + service, params)
            // .then(function (response) {
            //     console.log('Successful post: ', response);
            // })
            .catch(function (error) {
                console.log('Error posting: ', error);
            });
    }

    submitDemographics(demographics) {
        this.submit(demographics, '/users/')
    }

    submitTaskReport(report) {
        this.submit(report, '/tasks/')
    }

    getSessionFromServer(id) {
        return new Promise(function(resolve, reject) { 
            try { 
                var response = axios.get(serviceURL + '/sessions/' + id).
                resolve(response);
            } catch {
                reject('Error talking to the server');
            };
         } );
     }


}