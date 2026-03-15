class ServerAPI {
    setApiUrl(url) {
        this.apiUrl = url;
    }

    submit(payload, service) {
        axios.post(this.apiUrl + service, payload).catch(function(error) {
            console.log("Error posting: ", error);
        });
    }

    submitTaskReport(report) {
        this.submit(report, "/task-results/");
    }

    // Semaphores are session-scoped in the new Tycho API (Tycho with simulated participants), 
    // so the request must include the ID of the session besides the semaphore ID
    signalSemaphore(semaphoreId, sessionId) {
        axios
            .patch(
                this.apiUrl +"/sessions/" + sessionId + "/semaphores/" + semaphoreId,
                { id: semaphoreId, status: 0 }
            )
            .catch(function(error) {
                console.log("Error posting: ", error);
            });
    }

    // Semaphores are session-scoped in the new Tycho API (Tycho with simulated participants), 
    // so the request must include the ID of the session besides the semaphore ID
    getSemaphore(semaphoreId, sessionId) {
        return axios.get(
            this.apiUrl + "/sessions/" + sessionId + "/semaphores/" + semaphoreId 
        );
    }

    getVariable(variableId, protocolId) {
        return axios.get(
            this.apiUrl + "/variables/" + variableId + "?protocol=" + protocolId
        );
    }

    joinExperiment(participantId) {
        return axios.post(this.apiUrl + "/participants/" + participantId + "/join", {});
    }

    /**
     * @id the id of the session to retrieve
     * @returns a Promise that resolves to the server response
     */
    getExperimentDesignFromServer(id) {
        return new Promise((resolve, reject) => {
            axios
                .get(this.apiUrl + "/protocols/" + id)
                .then(response => {
                    resolve(response);
                })
                .catch(error => {
                    console.log("catched the error");
                    reject(error);
                });
        });
    }
}
