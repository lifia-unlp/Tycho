scripts
validateWeightJs
     ^ '
	function validateWeight(){
    percentage = 0;
    $("#renderProtocolWeight :input#protocolWeightValue").each(function(e){
 	   percentage+=parseFloat(this.value);
    });
	$("#submitWeights").attr("disabled", (percentage != 100));
	if(percentage == 100){
		$("#idErrorWeight").hide();
	}else{
		$("#idErrorWeight").show();
	}
		return percentage;
	}
	'.