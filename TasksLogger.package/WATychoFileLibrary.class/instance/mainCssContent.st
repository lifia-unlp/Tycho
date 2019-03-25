uploaded
mainCssContent
^	'
@font-face {
  font-family: AmericanTypewriter;
  src: url(', (WATychoFileLibrary / #americantypewriterWoff) printString ,');
}

.splash{
  padding:4.5em 0 2.5em;
  background-image: url("', (WATychoFileLibrary / #homeBgPng) printString ,'");
    background-repeat: no-repeat;
    background-size: 100% 100%;
  text-align:center;
  color:white;
  font-size:1.4em;
  border-bottom: 8px solid black;
}
.splash p, .splash h1{
  padding:20px;
  margin:0;
}
.splash p{
  font-weight:200;
}
.splash h1{
  font-family: AmericanTypewriter;
  font-weight:100;
  font-size:2.1em;
  padding-top: 0;
}
.splash .btn-lg{
  padding:14px 30px;
  background:none;
  color:white;
  font-weight:200; 
  border-color:white;
  margin:20px;
}
.splash .btn-lg:hover, .splash .btn-lg:active{
  color: black;
  background:white;
  border-color:transparent;
}

	.navbar-default{ 
		margin: 0;
		background: #DB3D1C;
		color: white;
		border: none;
		border-radius: 0;
		padding: 1em 0;
	}
	.navbar-default .navbar-brand{ 
		font-family: AmericanTypewriter;
		color: white;
		padding-bottom: 0;
		padding-top: 16%;
		font-size: 1.4em;
		font-weight: 100;
	}
	

	.features{
		padding: 3em;
		color:#333;
	}
	.features img{ width: 35% }
	.features p{
		font-weight:200;
		margin-bottom: 30px;
		font-size: 1.2em;
	}
	.features .col-md-4{
		text-align:center;
		padding: 0 5%;
	}
	.features h2{
		font-size: 1.8em;
		font-weight: 200;
		color: #DB3D1C;
		border: none;
		margin-bottom: 0;
		padding-bottom: 10px;
	}


	.homeRegister{
		color:white;
		background:#DB3D1C;
	}
	.homeRegister .errorMessage {font-size: .9em;}


	.navbar-default .navbar-text{
		color:white;
		margin-bottom:0;
		margin-top: -25px;
	}
	.navbar-default .navbar-text a{
		cursor:pointer;
		color:white;
	}
	.navbar-default .navbar-text a:hover{
		color:#ddd;
	}
	.navbar-default .navbar-text a:active:hover{
		background:none;
	}

	.breadcrumbContainer{
		margin-top: 20px;
		margin-bottom: 10px;
	}
	.mainContainer{
		margin-bottom: 50px;
	}

	.footer{
		text-align: center;
		color: #9b9b9b;
		padding: 30px;
		padding-top: 50px;
		background: #333;
		}

	.footer .col-md-6{
		text-align: left;
	}
	.footer .col-md-6 span{
		font-size:1.1em;
		margin:0 8px;
	}
	.footer .col-md-6 p{
		text-align: left;
		margin: 10px 0;
	}
	.footer .col-md-6 .footerAdditionalLine{
		display:block;
		margin-left:30px;
	}
	.footer .col-md-6 p a{color: #fB5D3C}

	#tasksList li{
		display: inline-block;
		vertical-align:top;
		margin: 0 13px;
		width: 250px;
	  	padding: 3px;
  		position: relative;
		}

	#tasksList li .panel{
		height: 280px;
		}
	#tasksList .panel-heading{ cursor: grab }
	#tasksList .panel-body{ 
		padding-top: 5px;
		overflow: hidden;
		}
	
	#tasksList .ui-sortable-helper .panel{
		background: rgba(240,240,240,0.5);
		border: 1px solid #ddd;
		transform: rotate(1deg);
	}

	#tasksList li:not(:last-child):before {
	  content: '''';
	  position: absolute;
	  width: 0;
	  height: 0;
	  top: 40%;
	  border-style: solid;
	  border-width: 13px 0 13px 15px;
	  border-color: transparent transparent transparent gray;
	  right: -20px;
	  transform: translateY(-10%);
	}

	#tasksList dl{ 
		margin-bottom: 10px;
		font-size: .9em;
		}

	#tasksList dd{
		max-height: 80px;
		overflow: hidden;
		}

	#tasksList dt{
		margin: 4px 0 0 0;
		}

	#tasksList li .actions{
		bottom: 34px;
		position: absolute;
		}


	@media (min-width: 992px){
		.homeRegister > :first-child{ padding:0 6em; }		
		.features{ padding: 6em; font-size: 1.1em; }
		.homeRegister{ padding: 7em 0; }
		.navbar-default .navbar-text{ margin-top: 25px; }	
	}
'