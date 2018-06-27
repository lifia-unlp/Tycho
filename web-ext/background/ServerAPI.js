class ServerAPI {
  submit(payload, service) {
    // const params = new URLSearchParams();
    // for (let key in payload) {
    //   params.append(key, payload[key]);
    // }
    axios
      .post(serviceURL + service, payload) // used to be params)
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
    this.submit(report, "/task-results/");
  }

  /**
   * @id the id of the session to retrieve
   * @returns a Promise that resolves to the server response
   */
  getExperimentDesignFromServer(id) {
    //console.log("requested session from serveer");
    return new Promise((resolve, reject) => {
      axios
        .get(serviceURL + "/designs/" + id)
        .then(response => {
          //console.log("Session is: " + JSON.stringify(response));
          resolve(response);
        })
        .catch(error => {
          console.log("catched the error");
          reject(error);
        });
    });
  }
}
