<%@include
    file="DbConnect.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>


<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>Admin Home</title>

<link rel="stylesheet" type="text/css" href="bootstrap.min.css"/>

<script src="js/demo-rtl.js"></script>


<link rel="stylesheet" type="text/css" href="css/libs/font-awesome.css"/>

<link rel="stylesheet" type="text/css" href="css/compiled/theme_styles.css"/>


<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400' rel='stylesheet' type='text/css'>

</head>
<body>
    <div  class="jumbotron"><h1>Welcome  To E-Music website</h1>

    </div>
    <div class="container">
    <div class="row" style="margin-top: 10px;">
        <div class="col-xs-6 col-xs-offset-3">
            <div class="main-box clearfix">
                <div class="main-box-header clearfix">
                    <h1>
                    Update Profile
                    </h1>
                </div>
                <div class="main-box-body clearfix">
                    <%
                        ResultSet rs;
                        String uname=(String) request.getParameter("user");
                        rs = s.executeQuery("select * from singer where sid='"+uname+"'");
                        rs.next();
                        %>
                          <form role="form" action="modifysinger2.jsp" method="post">
                            <div class="form-group">
                            <label for="exampleInputEmail1">Singer ID</label>
                            <input name="t1" value=<%=rs.getString("sid")%> size="20" class="form-control" readOnly id="exampleInputEmail1" placeholder="Enter Singer Id">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputEmail1">Singer Name</label>
                            <input name="t2" value=<%=rs.getString("sname")%> size="20"  class="form-control" id="exampleInputEmail1" placeholder="Singer name">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputEmail1">Phone Number</label>
                            <input name="t3" value=<%=rs.getString("phone")%> size="20"  class="form-control" id="exampleInputEmail1" placeholder="Enter Phone number">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputEmail1">Location</label>
                            <input name="t4" value=<%=rs.getString("loc")%> size="20"  class="form-control" id="exampleInputEmail1" placeholder="Enter Location">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputPassword1">Email</label>
                            <input name="t5" value=<%=rs.getString("email")%> size="20"  class="form-control" id="exampleInputEmail1" placeholder="Enter Location">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputPassword1">Profile Picture</label>
                            <img src="images/<%=rs.getString("image")%>" width="100" height="100" />
                            </div>
                            <div class="form-group">
                            <div >
                            <button type="submit" class="btn btn-success">Update details</button>
                            </div>
                            </div>
                         </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery.js"></script>
<script src="bootstrap.js"></script>


<script src="js/scripts.js"></script>

</body>



</html>