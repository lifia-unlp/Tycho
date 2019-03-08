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

  patchSemaphore(semaphore, workspace) {
    axios
    .patch(this.apiUrl + "/semaphores/" + semaphore.id + "?workspace=" + workspace, semaphore) 
    .catch(function(error) {
      console.log("Error posting: ", error);
    });

  }

  getStatusOfGlobalSemaphore(semaphoreId, workspace) {
      return axios.get(this.apiUrl + "/semaphores/" + semaphoreId + "?workspace=" + workspace);
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
