class ServerAPI {
  submit(payload, service) {
    const params = new URLSearchParams();
    for (let key in payload) {
      params.append(key, payload[key]);
    }
    axios
      .post(serviceURL + service, params)
      // .then(function (response) {
      //     console.log('Successful post: ', response);
      // })
      .catch(function(error) {
        console.log("Error posting: ", error);
      });
  }

  submitDemographics(demographics) {
    this.submit(demographics, "/users/");
  }

  submitTaskReport(report) {
    this.submit(report, "/tasks/");
  }

  /**
   * @id the id of the session to retrieve
   * @returns a Promise that resolves to the server response
   */
  getSessionFromServer(id) {
    return new Promise((resolve, reject) => {
      axios
        .get(serviceURL + "/sessions/" + id)
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
