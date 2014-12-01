<!doctype html>
<html lang="en">
	<head>
		<link rel="stylesheet" href="assets/css/print.css">
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body>
		<header>
			<h3 class="text-center">Health Test Report</h3>
			<address>
				<p>1, Jalan Metro Pudu</p>
				<p>Business Fraser Park</p>
				<p>56000 Kuala Lumpur.</p>
			</address>
			<!-- <span><img alt="Over Surgery" src="logo.png"></span> -->
			<span><h2>Over Surgery</h2></span>
		</header>
		<article>
			<table class="table">
				<thead>
					<tr>
						<th>Test Name</th>
						<th>Value</th>
						<th>Result</th>
						<th>Normal range</th>
						<th>Remark</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Blood Pressure</td>
						<td>mm Hg</td>
						<td>110</td>
						<td>&lt;120</td>
						<td>Medi control</td>
					</tr>
					<tr>
						<td>Heartbeat</td>
						<td>bpm</td>
						<td>100</td>
						<td>70 ~ 120</td>
						<td>Normal</td>
					</tr>
					<tr>
						<td>Blood Sugar - Glucose</td>
						<td>g</td>
						<td>120</td>
						<td>&lt;100</td>
						<td>At risk</td>
					</tr>
					<tr>
						<td>Weight</td>
						<td>kg</td>
						<td>120</td>
						<td>50 ~ 70</td>
						<td>Over weight</td>
					</tr>
					<tr>
						<td>Height</td>
						<td>cm</td>
						<td>160</td>
						<td>-</td>
						<td>-</td>
					</tr>
				</tbody>
			</table>
		</article>
		<p>Prepared by: Dr Yong Zheng Yang</p>
		<p>Report date: dd/MM/yyyy</p>
		<aside>
			<h4>Report Remark</h4>
			<div>
				<p>Please return for checking after 60 days.</p>
			</div>
		</aside>
		<br><br>
		<p class="text-center"><b>This is a computer generated report, no signature required.</b></p>
	</body>
</html>