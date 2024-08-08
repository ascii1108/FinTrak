<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Currency Converter</title>
	<link rel="stylesheet"
		href=
"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
	</script>
	<script src=
"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js">
	</script>
	<script src=
"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
	</script>

	<link rel="preconnect"
		href=
"https://fonts.gstatic.com">
	<link href=
"https://fonts.googleapis.com/css2?family=Amiri&family=Lobster&family=Pacifico&display=swap"
		rel="stylesheet">
	<!-- linking style.css file-->
	<style>

		body {
			background-color: #ffb4a4;
			background-position: center;
			background-size: cover;
			background-attachment: fixed;
			background-repeat: no-repeat;
		}
		
		.heading {
			
			margin: 95px auto 20px;
		}
		
		hr {
			border-top: 2px solid rgba(57, 237, 231, 0);
			width: 40%;
			margin-bottom: 55px;
		}
		
		.main {
			width: 60vw;
			margin: auto;
			padding: 40px;
			border-radius: 10 px;
			background-color: rgba(0, 0, 0, 0.5);
			color: white;
		}
		
		label {
			font-size: 20px;
		}
		
		
		.btn {
			width: 200px;
		}
		
		.btn1 {
			width: 200px;
			text-decoration: none;
			position: relative;
			top: 0;
		}
		
		#finalAmount {
				
			display: none;
			margin: 50px auto;
		}
		
		#finalAmount h2 {
			font-size: 50px;
		}
		
		.finalValue {
			font-family: 'Amiri', serif;
		}
		
		@media (max-width: 768px) {
			hr {
				width: 60%;
			}
		
			.main {
				width: 100%;
			}
		}
		
		@media (max-width: 400px) {
			.heading {
				font-size: 60px;
			}
		
			hr {
				width: 75%;
			}
		
			#finalAmount h2,
			.finalValue {
				font-size: 40px;
			}
		}
		

	</style>
</head>

<body>
	<!-- Currency Converter -->
	<h1 class="heading text-center display-2">
		CURRENCY CONVERTER
	</h1>
	<hr>
	<div class="container">
		<div class="main">
			<div class="form-group">
				<label for="oamount">
					Amount to Convert :
				</label>
				<input type="text" class="form-control searchBox" placeholder="0.00" id="oamount">
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">From</span>
						</div>
						<select class="form-control from" id="sel1">
							<option value="">Select One …</option>
							<option value="USD">USD</option>
							<option value="AED">AED</option>
							<option value="ARS">ARS</option>
							<option value="AUD">AUD</option>
							<option value="BGN">BGN</option>
							<option value="BRL">BRL</option>
							<option value="BSD">BSD</option>
							<option value="CAD">CAD</option>
							<option value="CHF">CHF</option>
							<option value="CLP">CLP</option>
							<option value="CNY">CNY</option>
							<option value="COP">COP</option>
							<option value="CZK">CZK</option>
							<option value="DKK">DKK</option>
							<option value="DOP">DOP</option>
							<option value="EGP">EGP</option>
							<option value="EUR">EUR</option>
							<option value="FJD">FJD</option>
							<option value="GBP">GBP</option>
							<option value="GTQ">GTQ</option>
							<option value="HKD">HKD</option>
							<option value="HRK">HRK</option>
							<option value="HUF">HUF</option>
							<option value="IDR">IDR</option>
							<option value="ILS">ILS</option>
							<option value="INR">INR</option>
							<option value="ISK">ISK</option>
							<option value="JPY">JPY</option>
							<option value="KRW">KRW</option>
							<option value="KZT">KZT</option>
							<option value="MVR">MVR</option>
							<option value="MXN">MXN</option>
							<option value="MYR">MYR</option>
							<option value="NOK">NOK</option>
							<option value="NZD">NZD</option>
							<option value="PAB">PAB</option>
							<option value="PEN">PEN</option>
							<option value="PHP">PHP</option>
							<option value="PKR">PKR</option>
							<option value="PLN">PLN</option>
							<option value="PYG">PYG</option>
							<option value="RON">RON</option>
							<option value="RUB">RUB</option>
							<option value="SAR">SAR</option>
							<option value="SEK">SEK</option>
							<option value="SGD">SGD</option>
							<option value="THB">THB</option>
							<option value="TRY">TRY</option>
							<option value="TWD">TWD</option>
							<option value="UAH">UAH</option>
							<option value="UYU">UYU</option>
							<option value="ZAR">ZAR</option>
						</select>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">To</span>
						</div>
						<select class="form-control to" id="sel2">
							<option value="">Select One …</option>
							<option value="USD">USD</option>
							<option value="AED">AED</option>
							<option value="ARS">ARS</option>
							<option value="AUD">AUD</option>
							<option value="BGN">BGN</option>
							<option value="BRL">BRL</option>
							<option value="BSD">BSD</option>
							<option value="CAD">CAD</option>
							<option value="CHF">CHF</option>
							<option value="CLP">CLP</option>
							<option value="CNY">CNY</option>
							<option value="COP">COP</option>
							<option value="CZK">CZK</option>
							<option value="DKK">DKK</option>
							<option value="DOP">DOP</option>
							<option value="EGP">EGP</option>
							<option value="EUR">EUR</option>
							<option value="FJD">FJD</option>
							<option value="GBP">GBP</option>
							<option value="GTQ">GTQ</option>
							<option value="HKD">HKD</option>
							<option value="HRK">HRK</option>
							<option value="HUF">HUF</option>
							<option value="IDR">IDR</option>
							<option value="ILS">ILS</option>
							<option value="INR">INR</option>
							<option value="ISK">ISK</option>
							<option value="JPY">JPY</option>
							<option value="KRW">KRW</option>
							<option value="KZT">KZT</option>
							<option value="MVR">MVR</option>
							<option value="MXN">MXN</option>
							<option value="MYR">MYR</option>
							<option value="NOK">NOK</option>
							<option value="NZD">NZD</option>
							<option value="PAB">PAB</option>
							<option value="PEN">PEN</option>
							<option value="PHP">PHP</option>
							<option value="PKR">PKR</option>
							<option value="PLN">PLN</option>
							<option value="PYG">PYG</option>
							<option value="RON">RON</option>
							<option value="RUB">RUB</option>
							<option value="SAR">SAR</option>
							<option value="SEK">SEK</option>
							<option value="SGD">SGD</option>
							<option value="THB">THB</option>
							<option value="TRY">TRY</option>
							<option value="TWD">TWD</option>
							<option value="UAH">UAH</option>
							<option value="UYU">UYU</option>
							<option value="ZAR">ZAR</option>
						</select>
					</div>
				</div>
			</div>

			<div class="text-center">

				<!-- convert button -->
				<button class="btn btn-primary convert m-2" type="submit">
					Convert
				</button>
				<!-- reset button -->
				<button class="btn btn-primary m-2" onclick="clearVal()">
					Reset
				</button>
			</div>

		</div>

		<div id="finalAmount" class="text-center">

			<!-- Display the converted amount -->
			<h2>Converted Amount :
				<span class="finalValue" style="color:rgb(0, 0, 0);">
				</span>
			</h2>
		</div>
	</div>

	<!-- linking script.js file -->
	<script>
		// Include api for currency change
const api = "https://api.exchangerate-api.com/v4/latest/USD";

// For selecting different controls
let search = document.querySelector(".searchBox");
let convert = document.querySelector(".convert");
let fromCurrecy = document.querySelector(".from");
let toCurrecy = document.querySelector(".to");
let finalValue = document.querySelector(".finalValue");
let finalAmount = document.getElementById("finalAmount");
let resultFrom;
let resultTo;
let searchValue;

// Event when currency is changed
fromCurrecy.addEventListener('change', (event) => {
	resultFrom = `${event.target.value}`;
});

// Event when currency is changed
toCurrecy.addEventListener('change', (event) => {
	resultTo = `${event.target.value}`;
});

search.addEventListener('input', updateValue);

// Function for updating value
function updateValue(e) {
	searchValue = e.target.value;
}

// When user clicks, it calls function getresults 
convert.addEventListener("click", getResults);

// Function getresults
function getResults() {
	fetch(`${api}`)
		.then(currency => {
			return currency.json();
		}).then(displayResults);
}

// Display results after conversion
function displayResults(currency) {
	let fromRate = currency.rates[resultFrom];
	let toRate = currency.rates[resultTo];
	finalValue.innerHTML =
		((toRate / fromRate) * searchValue).toFixed(2);
	finalAmount.style.display = "block";
}

// When user click on reset button
function clearVal() {
	window.location.reload();
	document.getElementsByClassName("finalValue").innerHTML = "";
};

	</script>
	
	
</body>
</html>
