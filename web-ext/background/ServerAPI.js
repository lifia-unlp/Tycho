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

    async getSessionFromServer(id) {
        try {
            let json = await axios.get(serviceURL + '/sessions/' + id);
            return json; 
        } catch {
            console.log('Error getting session from server');
        };

    }


}