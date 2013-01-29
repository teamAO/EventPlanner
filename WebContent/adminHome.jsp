<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--[if lt IE 9]>
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<title>Event Planner Admin Home</title>
<link href="https://www.aoins.com/aoenv/public/corp/css/2.0.1/agencyStyle.css" rel="stylesheet" type="text/css">
<link href="https://www.aoins.com/aoenv/public/corp/css/2.0.1/leftColumn.css" rel="stylesheet" type="text/css"><link href="rightColumn.css" rel="stylesheet" type="text/css">
<link href="https://www.aoins.com/aoenv/public/corp/css/2.0.1/rightCoumn.css" rel="stylesheet" type="text/css">
<style type="text/css">

body {
	font: 1em/150% Arial, Helvetica, sans-serif;
}
a {
	color: #669;
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
h1 {
	font: bold 36px/100% Arial, Helvetica, sans-serif;
}

/************************************************************************************
STRUCTURE
*************************************************************************************/

#pagewrap {
	padding: 5px;
	width: 100%;
	margin: 20px auto;
}
#centerPanel {
	padding-top:5px;
	margin-top:10px;
	width: 65%;
	float: left;
}

#sidebar {
	margin-top:10px;
	width: 25%;
	float: right;
	location: fixed;
}
#footer {
	clear: both;
}



/************************************************************************************
MEDIA QUERIES
*************************************************************************************/
/* for 1280px or less */
@media screen and (max-width: 1280px) {
	
	#pagewrap {
		width: 94%;
	}
	#centerPanel {
		width: 65%;
		height: 50%;
	}
	#sidebar {
		width: 20%;
	}
}



/* for 980px or less */
@media screen and (max-width: 980px) {
	
	#pagewrap {
		width: 94%;
	}
	#centerPanel {
		width: 65%;
		height: 50%;
	}
	#sidebar {
		width: 25%;
	}
}

/* for 700px or less */
@media screen and (max-width: 700px) {

	#centerPanel {
		width: 50%;
		float: none;
	}
	#sidebar {
		width: 50%;
		float: none;
	}
}

/* for 480px or less */
@media screen and (max-width: 480px) {

	#header {
		height: auto;
	}
	h1 {
		font-size: 24px;
	}
	#sidebar {
		display: none;
	}
}

/* border & guideline (you can ignore these) */
#content {
	background: #f8f8f8;
}
#sidebar {
	background: #f0efef;
}
#header, #content, #sidebar {
	margin-bottom: 5px;
}
#pagewrap, #header, #content, #sidebar, #footer {
	border: solid 1px #ccc;
}
</style>
<link rel='stylesheet' type='text/css' href='fullcalendar-1.5.4/fullcalendar/fullcalendar.css' />
<link rel='stylesheet' type='text/css' href='fullcalendar-1.5.4/fullcalendar/fullcalendar.print.css' media='print' />
<script type='text/javascript' src='fullcalendar-1.5.4/jquery/jquery-1.8.1.min.js'></script>
<!--  <script type='text/javascript' src='fullcalendar-1.5.4/jquery/jquery-ui-1.8.23.custom.min.js'></script>-->
<script type='text/javascript' src='fullcalendar-1.5.4/fullcalendar/fullcalendar.js'></script>
<script type='text/javascript'>

	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		$('#calendar').fullCalendar({
			editable: true,
			events: [
				{
					title: 'All Day Event',
					start: new Date(y, m, 1)
				},
				{
					title: 'Golf Outing',
					start: new Date(y, m, 19, 9, 0),
					end: new Date(y, m, 19, 17, 0),
					allDay: false,
					url: 'https://www.google.com/search?q=golf+outing&rlz=1C1OPRB_enUS519US519&oq=golf+outing&aqs=chrome.0.57j60l3j59l2.5133&sourceid=chrome&ie=UTF-8'
				},
				{
					title: 'Long Event',
					start: new Date(y, m, d-5),
					end: new Date(y, m, d-2)
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d-3, 16, 0),
					allDay: false
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d+4, 16, 0),
					allDay: false
				},
				{
					title: 'Meeting',
					start: new Date(y, m, d, 10, 30),
					allDay: false
				},
				{
					title: 'Lunch',
					start: new Date(y, m, d, 12, 0),
					end: new Date(y, m, d, 14, 0),
					allDay: false
				},
/* 				{
					title: 'Birthday Party',
					start: new Date(y, m, d+1, 19, 0),
					end: new Date(y, m, d+1, 22, 30),
					allDay: false
				}, */
				{
					title: 'Click for Google',
					start: new Date(y, m, 28),
					end: new Date(y, m, 29),
					url: 'http://google.com/'
				}
			]
		});
		
	});

</script>
<script type="text/javascript">
    setTimeout("$('#calender').fullCalendar( 'render' );",100);
</script>
</head>
<body>
<body>
		<div id="header">
			<img src="https://www.aoins.com/aoenv/images/corporateGraphics/header/header.png" alt="Auto Owners Insurance">
			<h1>Event Planner</h1>
		</div>
		<div id="leftPanel">
        	<div class="navigation">
                <h3>Administration</h3>
                <ul>
                    <li class="link">
                       <a title="" href="" class="subHeading"><span>Subheading 1</span></a>
                       <ul class="hidden">
                           <li class="link">
                               <a title="" href="#"><span>Link 1</span></a>
                           </li>
                       </ul>
                    </li>
                    <li class="link">
                    	<a title="" href="" class="subHeading"><span>Subheading 2</span></a>
                    	<ul class="hidden">
                    		<li class="link">
                    			<a title="" href="#"><span>Link 2</span></a>
                    		</li>
                    </li>
                </ul>
        	</div>
		</div>
		<div class="mainContainer" id="mainContainer">
			<div id="ribbon">
				<span id="date" class="right">January 14, 2013</span>
				<span>[USER_ID] [USER_NAME]</span>
			</div>
			<div id="centerPanel">
				<div id="calendar"></div>
				<div id="footer">&nbsp;</div>
			</div>
		</div>
		<div id="sidebar"><b>SIDEBAR</b></div>
	</body>
</body>
</html>