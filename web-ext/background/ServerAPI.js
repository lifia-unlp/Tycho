class ServerAPI {
    setApiUrl(url) {
        this.apiUrl = url;
    }

    /**
     * Sends the result of a task executed by a participant to the Tycho API.
     *
     * This method uses the new participant-scoped endpoint:
     * /participants/{participantId}/tasks/{taskId}/result
     *
     * @param {Object} report - JSON object representing the task result
     * @param {number} participantId - ID of the participant executing the task
     */
    submitTaskReport(report, participantId) {
        let taskId = report.model.id; // Extract taskId from the task model

        axios
            .post(
                this.apiUrl + "/participants/" + participantId + "/tasks/" + taskId + "/result",
                report
            )
            .catch(function(error){
                console.log("Error posting task result: ", error)
            });
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

    // Variables are session-scoped in the new Tycho API (Tycho with simulated participants), 
    // so the request must include the ID of the session besides the variable ID
    getVariable(variableId, sessionId) {
        return axios.get(
            this.apiUrl + "/sessions/" + sessionId + "/variables/" + variableId 
        );
    }

    /**
     * Updates the value of a variable for a specific experiment session.
     * This method sends a PATCH request to the Tycho API in order to persist
     * the new value of the variable within the given session.
     *
     * @param {string} variableId - The unique identifier of the variable to update.
     * @param {string} variableValue - The new value to assign to the variable.
     * @param {string} sessionId - The identifier of the experiment session.
     */
    setVariable(variableId, variableValue, sessionId) {
        axios
            .patch(
                this.apiUrl + "/sessions/" + sessionId + "/variables/" + variableId,
                { id: variableId, value: variableValue }
            )
            .catch(function(error){
                console.log("Error posting: ", error);
            })
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
