class ServerAPI {

  setApiUrl(url) {
    this.apiUrl = url;
  }

  submit(payload, service) {

    axios
      .post(this.apiUrl + service, payload)
      .catch(function(error) {
        console.log("Error posting: ", error);
      });
  }

  submitTaskReport(report) {
    this.submit(report, "/task-results/");
  }

  signalSemaphore(semaphoreId, protocolId) {
    axios
    .patch(this.apiUrl + "/semaphores/" + semaphoreId + "?protocol=" + protocolId, {id: semaphoreId, status: 0})
    .catch(function(error) {
      console.log("Error posting: ", error);
    });

  }

  getSemaphore(semaphoreId, protocolId) {
      return axios.get(this.apiUrl + "/semaphores/" + semaphoreId + "?protocol=" + protocolId);
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
