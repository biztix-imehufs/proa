<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ page import ="java.io.File" %>
            <%@ page import = "java.util.*" %>
        
<!DOCTYPE html>
<html>
  <head>
  <script src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="http://www.amcharts.com/lib/3/serial.js"></script>
<script src="http://www.amcharts.com/lib/3/themes/light.js"></script>
  
  <style>
  #chartdiv {
	width		: 100%;
	height		: 500px;
	font-size	: 11px;
}		
  </style>
  
    <meta charset="UTF-8">
    <title>Sequential Analysis</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
	<!-- iCheck -->
    <link href="plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="skin-blue sidebar-mini">
    <div class="wrapper">

     		<header class="main-header">
			<!-- Logo -->
			<a href="ProA_Main.jsp" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>ProA-</b>Home</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>ProA_</b>Home</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<div class="navbar-custom-menu">

					<ul class="nav navbar-nav">
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="dist/img/hufs.jpg" class="user-image" alt="User Image" />
								<span class="hidden-xs">HUFS_IME</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img src="dist/img/hufs.jpg"
									class="img-circle" alt="User Image" />
									<p>
										HUFS_IME - Web Developer <small>JSP Class_Project</small>
									</p></li>
								<!-- Menu Body -->
								<li class="user-body">
									<div>User By IME Students</div>
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">

									<div class="pull-right">
										<a href="ProA_Login.jsp" class="btn btn-default btn-flat">Sign
											out</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
					</ul>
				</div>
			</nav>
		</header>


		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="dist/img/hufs.jpg" class="img-circle" alt="User Image" />
					</div>
					<div class="pull-left info">
						<p>HUFS_IME</p>
					</div>
				</div>

				<!-- search form -->
				<form method="post" class="sidebar-form">
					<div class="input-group">
						<span> <input type="file" name="file" class="btn btn-flat"
							placeholder="Search..." />
							<button type='submit' name='search' value="submit"
								class="btn btn-flat" onclick="form.action='ProA_setZero.jsp';" />
							<%
								///////////////////////////////file name/////////////////////////////////
							%> <i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>

				<!-- /.search form -->


				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">ProA_Menu</li>
					<li class="active treeview"><a href="ProA_Main.jsp"> <i
							class="fa fa-dashboard"></i> <span>ProA_Home</span>
					</a></li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-pie-chart"></i> <span>ProA_Analysis</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="ProA_AnalysisData.jsp">
							<i	class="fa fa-circle-o"></i> Analysis Data </a></li>
							<li><a href="ProA_Timeline.jsp"><i
									class="fa fa-circle-o"></i> TimeLine Analysis</a></li>
							<li><a href="ProA_Utilization.jsp"><i
									class="fa fa-circle-o"></i> Utilization Analysis</a></li>
							<li><a href="ProA_Pattern.jsp"><i class="fa fa-circle-o"></i>
									Pattern Analysis</a></li>
							<li><a href="ProA_Sequence.jsp"><i
									class="fa fa-circle-o"></i> Sequence Analaysis</a></li>
						</ul></li>
						
					 <li class="treeview">
             		 <a href="#">
                <i class="fa fa-pie-chart"></i> <span>Data</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i> Original Data <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li>
                      <a href="#"><i class="fa fa-circle-o"></i> Data Table </a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i> Filter Data <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li>
                      <a href="#"><i class="fa fa-circle-o"></i> Data Table </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
					
					<li><a href="ProA_calendar.jsp"> <i class="fa fa-calendar"></i>
							<span>ProA_Calendar</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Sequential Analysis
            <small></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="MPAS_Main.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>MPAS_Analysis</li>
            <li class ="active"><a href="MPAS_Sequence.jsp">Sequence</a></li>
         
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-6">
              <!-- AREA CHART -->
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Sequential Chart Show</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <div class="btn-group">
                      <button class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i></button>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="MPAS_setNumOne.jsp">Original Data</a></li>
                        <li class="divider"></li>
                        <li><a href="MPAS_setNumTwo.jsp">Filter Data</a></li>
                      </ul>
                    </div>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <div class="box-body">
                 <iframe src="http://threegraphs.com/charts/preview/1981/embed/" width="700" height="500" scrolling="no" frameborder="0" style="border:none;"></iframe>
                 </div><!-- /.box-body -->
              </div><!-- /.box -->

              <!-- DONUT CHART -->
             

            </div><!-- /.col (LEFT) -->
            <div class="col-md-6">
              <!-- LINE CHART -->
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Data points</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <div class="btn-group">
                      <button class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i></button>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="MPAS_setNumOne.jsp">Original Data</a></li>
                        <li class="divider"></li>
                        <li><a href="MPAS_setNumTwo.jsp">Filter Data</a></li>
                      </ul>
                    </div>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <div class="box-body">
                <%
	StringBuffer data = new StringBuffer();
	ArrayList<String> pattern = new ArrayList<String>();
	ArrayList<Float> patterndiff = new ArrayList<Float>();
	ArrayList<String> act = new ArrayList<String>();
	

	float value = 0;
	//System.out.println(pattern.size());
	//System.out.println(act.size());
	out.println(" X:Pattern  // Y:Activity // Z:Time Spent");
for(int x=0;x<6;x++){
	//System.out.println(x);
	for(int y=0;y<8;y++){
		
		String pattern1 = pattern.get(x);
		
		if(pattern1.contains(act.get(y))){
			value = patterndiff.get(y);
		}
		else{
			value = 0;
		}
				
				data.append("{").append("x").append(":").append(x).append(",")
				.append("y").append(":").append(y).append(",")
				.append("z").append(":").append(value).append("}").append(",");
	//	{ x : x , y : y , z: value} // string buffer
			out.println("(x:"+x+",y:"+y+",z:"+value+")");
	}
	//System.out.println(data);

}

	data.deleteCharAt(data.lastIndexOf(","));
	//out.println(data);
	
	

%>
              <%-- 
                <%
                jbean.setPattern();
                jbean.PatternDo();
                ArrayList<String> pattern = new ArrayList<String>();
                pattern = jbean.getPattern();
                
                %>
                <%for(int i=0;i<pattern.size();i++)%>
                	<form method="post" action ="MPAS_Sequence.jsp">
                	Pattern Selection : 
                	<%for(int i=0;i<pattern.size();i++){%>
					<input type="checkbox" name = "pattern" value=<%=pattern.get(i).substring(0, 8) %>/><%=pattern.get(i).substring(0, 8)%>
					<%}%>
					<br>
					Option Selection &nbsp;:
					<input type="radio" name = "option" value="time">Time
					<input type="radio" name = "option" value="qty">Quantity
					<br><input type="submit" name ="Submit" value ="Submit" />
					</form>
                 --%>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
<%-- 
              <!-- BAR CHART -->
              <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title">Selected Sequential Chart</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <div class="btn-group">
                      <button class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i></button>
                      <ul class="dropdown-menu" role="menu">
                     <li><a href="MPAS_setNumOne.jsp">Original Data</a></li>
                        <li class="divider"></li>
                        <li><a href="MPAS_setNumTwo.jsp">Filter Data</a></li>
                      </ul>
                    </div>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <div class="box-body">
                
                  <%
              	StringBuffer data = new StringBuffer();
              	ArrayList<Float> patterndiff = new ArrayList<Float>();
              	ArrayList<String> act = new ArrayList<String>();
              	

              	jbean.setPattern();
              	jbean.PatternDo();
              	patterndiff=jbean.getpatterndiff();
              	act=jbean.getProcessAct();
              	float value = 0;
              	System.out.println(pattern.size());
              	System.out.println(act.size());
              	
              for(int x=0;x<5;x++){
              	System.out.println(x);
              	for(int y=0;y<5;y++){
              		
              		String pattern1 = pattern.get(x);
              		
              		if(pattern1.contains(act.get(y))){
              			value = patterndiff.get(y);
              		}
              		else{
              			value = 0;
              		}
              				
              				data.append("{").append("x").append(":").append(x).append(",")
              				.append("y").append(":").append(y).append(",")
              				.append("z").append(":").append(value).append("}").append(",");
              	//	{ x : x , y : y , z: value} // string buffer

              	}
              	//System.out.println(data);

              }

              	data.deleteCharAt(data.lastIndexOf(","));
              	out.println(data);
              	
              	

              %>
                  
                  
                  
                  
                  /* 
                  //////////// too slow 
                  ArrayList<Float> actdiff = new ArrayList<Float>();
                  ArrayList<String> act = new ArrayList<String>();
                  ArrayList<String> cas = new ArrayList<String>();
                  actdiff = jbean.getpatterndiff();
                  act = jbean.getProcessAct();
                  cas = jbean.getProcesscas();
                  StringBuffer Rrequest = new StringBuffer();
                  StringBuffer Ecasually = new StringBuffer();
                  StringBuffer Ethorougly = new StringBuffer();
                  StringBuffer Cticket = new StringBuffer();
                  StringBuffer Decide = new StringBuffer();
                  StringBuffer Rinitiate = new StringBuffer();
                  StringBuffer Pcompensation = new StringBuffer();
                  StringBuffer Rjrequest = new StringBuffer();
                  
                    Rrequest.append("{").append('"').append("Data").append('"').append(":").append('"').append("Register Request").append('"').append(",");
              		Ecasually.append("{").append('"').append("Data").append('"').append(":").append('"').append("Examine Casually").append('"').append(",");
                	Ethorougly.append("{").append('"').append("Data").append('"').append(":").append('"').append("Examine Thoroughly").append('"').append(",");
                	Cticket.append("{").append('"').append("Data").append('"').append(":").append('"').append("Check Ticket").append('"').append(",");
                	Decide.append("{").append('"').append("Data").append('"').append(":").append('"').append("Decide").append('"').append(",");
                	Rinitiate.append("{").append('"').append("Data").append('"').append(":").append('"').append("Reinitiate Request").append('"').append(",");
                	Pcompensation.append("{").append('"').append("Data").append('"').append(":").append('"').append("Pay Compensation").append('"').append(",");
                	Rjrequest.append("{").append('"').append("Data").append('"').append(":").append('"').append("Reject Request").append('"').append(",");

                  String case1 = cas.get(0);
                  for(int i =0;i<cas.size();i++){
                	  if(cas.get(i).equals(case1)){
                		  if(act.get(i).equals("register request")){
                			  Rrequest.append(",").append('"').append(case1).append('"').append(":").append(actdiff.get(i));
                		  }else if(act.get(i).equals("examine casually")){
                			  Ecasually.append(",").append('"').append(case1).append('"').append(":").append(actdiff.get(i));
                		  }else if(act.get(i).equals("check ticket")){
                			  Cticket.append(",").append('"').append(case1).append('"').append(":").append(actdiff.get(i));
                		  }else if(act.get(i).equals("decide")){
                			  Decide.append(",").append('"').append(case1).append('"').append(":").append(actdiff.get(i));
                		  }else if(act.get(i).equals("reinitiate request")){
                			  Rinitiate.append(",").append('"').append(case1).append('"').append(":").append(actdiff.get(i));
                		  }else if(act.get(i).equals("examine thoroughly")){
                			  Ethorougly.append(",").append('"').append(case1).append('"').append(":").append(actdiff.get(i));
                		  }else if(act.get(i).equals("pay compensation")){
                			  Pcompensation.append(",").append('"').append(case1).append('"').append(":").append(actdiff.get(i));
                		  }else if(act.get(i).equals("y compensation")){
                			  Pcompensation.append(",").append('"').append(case1).append('"').append(":").append(actdiff.get(i));
                		  }else if(act.get(i).equals("reject request")){
                			  Rjrequest.append(",").append('"').append(case1).append('"').append(":").append(actdiff.get(i));
                		  }
                		  
                	  }
                		
                	  else{
                		  case1 = cas.get(0);
                		  i--;
                	  }
                	  
                  }
                  
                Rrequest.append("}");
                Ecasually.append("}");
                Cticket.append("}");
                Decide.append("}");
                Rinitiate.append("}");
                Ethorougly.append("}");
                Pcompensation.append("}");
                Rjrequest.append("}");
                /////////////////////////////
                String[] patterns = request.getParameterValues("pattern");
                  if(patterns!=null){
                  for(int k =0;k<patterns.length;k++){
                	  for(int i=0;i<cas.size();i++){
                		if(cas.get(i).equals(patterns[k].substring(7, 8))){
                			
                	data.append("{").append('"').append("Data").append('"').append(":").append(act.get(i)).append(",")
                			
                	.append('"').append("Processing Time").append('"').append(":").append(actdiff.get(i)).append(",")
                	.append('"').append("Total Process Time").append('"').append(":").append(String.valueOf(totime)).append("}").append(",");
                	}
                	  }
                  }
                	   */
                
                 				
                  <script>
                  var chart = AmCharts.makeChart("chartdiv", {
                	    "type": "serial",
                		"theme": "light",
                	    "path": "http://www.amcharts.com/lib/3/",
                	    "legend": {
                	        "horizontalGap": 10,
                	        "maxColumns": 1,
                	        "position": "right",
                			"useGraphSettings": true,
                			"markerSize": 10
                	    },
                	    "dataProvider": [
                	                     <%=Rrequest%>,
                	                     <%=Ecasually%>,
                	                     <%=Ethorougly%>,
                	                     <%=Cticket%>,
                	                     <%=Decide%>,
                	                     <%=Rinitiate%>,
                	                     <%=Pcompensation%>,
                	                     <%=Rjrequest%>
                	                    /*  {"year": 2003,"europe": 2.5,"namerica": 2.5,"asia": 2.1,"lamerica": 0.3,"meast": 0.2,"africa": 0.1}, 
                	                     {"year": 2004,"europe": 2.6,"namerica": 2.7,"asia": 2.2,"lamerica": 0.3,"meast": 0.3,"africa": 0.1}
                	    				 */],
                	    				
                	    "valueAxes": [{
                	        "stackType": "regular",
                	        "axisAlpha": 0.3,
                	        "gridAlpha": 0
                	    }],
                	    
                	    "graphs": [{
                	        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                	        "fillAlphas": 0.8,
                	        "labelText": "[[value]]",
                	        "lineAlpha": 0.3,
                	        "title": "Register Request",
                	        "type": "column",
                			"color": "#000000",
                	        "valueField": "Register Request"
                	    }, {
                	        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                	        "fillAlphas": 0.8,
                	        "labelText": "[[value]]",
                	        "lineAlpha": 0.3,
                	        "title": "Examine Casually",
                	        "type": "column",
                			"color": "#000000",
                	        "valueField": "Examine Casually"
                	    }, {
                	        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                	        "fillAlphas": 0.8,
                	        "labelText": "[[value]]",
                	        "lineAlpha": 0.3,
                	        "title": "Examine Thoroughly",
                	        "type": "column",
                			"color": "#000000",
                	        "valueField": "Examine Thoroughly"
                	    }, {
                	        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                	        "fillAlphas": 0.8,
                	        "labelText": "[[value]]",
                	        "lineAlpha": 0.3,
                	        "title": "Check Ticket",
                	        "type": "column",
                			"color": "#000000",
                	        "valueField": "Check Ticket"
                	    }, {
                	        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                	        "fillAlphas": 0.8,
                	        "labelText": "[[value]]",
                	        "lineAlpha": 0.3,
                	        "title": "Decide",
                	        "type": "column",
                			"color": "#000000",
                	        "valueField": "Decide"
                	    }, {
                	        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                	        "fillAlphas": 0.8,
                	        "labelText": "[[value]]",
                	        "lineAlpha": 0.3,
                	        "title": "Reinitiate Request",
                	        "type": "column",
                			"color": "#000000",
                	        "valueField": "Reinitiate Request"
                	    },{
                	        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                	        "fillAlphas": 0.8,
                	        "labelText": "[[value]]",
                	        "lineAlpha": 0.3,
                	        "title": "Pay Compensation",
                	        "type": "column",
                			"color": "#000000",
                	        "valueField": "Pay Compensation"
                	    },{
                	        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                	        "fillAlphas": 0.8,
                	        "labelText": "[[value]]",
                	        "lineAlpha": 0.3,
                	        "title": "Reject Request",
                	        "type": "column",
                			"color": "#000000",
                	        "valueField": "Reject Request"
                	    }],
                	    "categoryField": "Data",
                	    "categoryAxis": {
                	        "gridPosition": "start",
                	        "axisAlpha": 0,
                	        "gridAlpha": 0,
                	        "position": "left"
                	    },
                	    "export": {
                	    	"enabled": true
                	     }

                	});
                  </script>
                  <div id="chartdiv"></div>		
              	
                </div><!-- /.box-body -->
              </div><!-- /.box -->
 --%>
            </div><!-- /.col (RIGHT) -->
          </div><!-- /.row -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
 
      
      <!-- Control Sidebar -->      
      <aside class="control-sidebar control-sidebar-dark">                
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
          <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
          
          <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
          <!-- Home tab content -->
          <div class="tab-pane" id="control-sidebar-home-tab">
            <h3 class="control-sidebar-heading">Recent Activity</h3>
            <ul class='control-sidebar-menu'>
              <li>
                <a href='javascript::;'>
                  <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                    <p>Will be 23 on April 24th</p>
                  </div>
                </a>
              </li>
              <li>
                <a href='javascript::;'>
                  <i class="menu-icon fa fa-user bg-yellow"></i>
                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>
                    <p>New phone +1(800)555-1234</p>
                  </div>
                </a>
              </li>
              <li>
                <a href='javascript::;'>
                  <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>
                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>
                    <p>nora@example.com</p>
                  </div>
                </a>
              </li>
              <li>
                <a href='javascript::;'>
                  <i class="menu-icon fa fa-file-code-o bg-green"></i>
                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>
                    <p>Execution time 5 seconds</p>
                  </div>
                </a>
              </li>
            </ul><!-- /.control-sidebar-menu -->

            <h3 class="control-sidebar-heading">Tasks Progress</h3> 
            <ul class='control-sidebar-menu'>
              <li>
                <a href='javascript::;'>               
                  <h4 class="control-sidebar-subheading">
                    Custom Template Design
                    <span class="label label-danger pull-right">70%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                  </div>                                    
                </a>
              </li> 
              <li>
                <a href='javascript::;'>               
                  <h4 class="control-sidebar-subheading">
                    Update Resume
                    <span class="label label-success pull-right">95%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                  </div>                                    
                </a>
              </li> 
              <li>
                <a href='javascript::;'>               
                  <h4 class="control-sidebar-subheading">
                    Laravel Integration
                    <span class="label label-waring pull-right">50%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                  </div>                                    
                </a>
              </li> 
              <li>
                <a href='javascript::;'>               
                  <h4 class="control-sidebar-subheading">
                    Back End Framework
                    <span class="label label-primary pull-right">68%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                  </div>                                    
                </a>
              </li>               
            </ul><!-- /.control-sidebar-menu -->         

          </div><!-- /.tab-pane -->
          <!-- Stats tab content -->
          <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
          <!-- Settings tab content -->
          <div class="tab-pane" id="control-sidebar-settings-tab">            
            <form method="post">
              <h3 class="control-sidebar-heading">General Settings</h3>
              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Report panel usage
                  <input type="checkbox" class="pull-right" checked />
                </label>
                <p>
                  Some information about this general settings option
                </p>
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Allow mail redirect
                  <input type="checkbox" class="pull-right" checked />
                </label>
                <p>
                  Other sets of options are available
                </p>
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Expose author name in posts
                  <input type="checkbox" class="pull-right" checked />
                </label>
                <p>
                  Allow the user to show his name in blog posts
                </p>
              </div><!-- /.form-group -->

              <h3 class="control-sidebar-heading">Chat Settings</h3>

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Show me as online
                  <input type="checkbox" class="pull-right" checked />
                </label>                
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Turn off notifications
                  <input type="checkbox" class="pull-right" />
                </label>                
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Delete chat history
                  <a href="javascript::;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                </label>                
              </div><!-- /.form-group -->
            </form>
          </div><!-- /.tab-pane -->
        </div>
      </aside><!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class='control-sidebar-bg'></div>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- ChartJS 1.0.1 -->
    <script src="plugins/chartjs/Chart.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js" type="text/javascript"></script>
    <!-- page script -->
  </body>
</html>
