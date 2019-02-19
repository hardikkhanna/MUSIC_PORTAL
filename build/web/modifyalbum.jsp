<%@include
    file="DbConnect.jsp" %>
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

<link rel="stylesheet" type="text/css" href="bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/libs/font-awesome.css"/>

<link rel="stylesheet" type="text/css" href="css/compiled/theme_styles.css"/>


</head>
<body>
     <div  class="jumbotron"><h1>Welcome  To E-Music website</h1>

    </div>

    <header class="navbar" id="header-navbar">
            <div class="container">
                    <a href="#" id="logo" class="navbar-brand">

                    </a>
                    <div class="clearfix">
                            <div class="nav-no-collapse pull-right" id="header-nav">
                                    <ul class="nav navbar-nav pull-right">

                                            <li class="hidden-xxs"><a class="btn" href="logout.jsp"> <i
                                                            class="fa fa-power-off"></i>
                                            </a></li>
                                    </ul>
                            </div>
                    </div>
            </div>
    </header>

<div class="container">
    <div class="row" style="margin-top: 10px;">

            <div class="main-box clearfix">
                <div class="main-box-header clearfix">
                    <h1>
                    User List
                    </h1>
                </div>
                <div class="main-box-body clearfix">
                    <div class="table-responsive clearfix">
                        <table class="table table-hover" border="1" cellspacing="0">
                            <thead>
                                    <tr>
                                            <th><span>ALBUM ID</span></th>
                                            <th><span>SINGER ID</span></th>
                                            <th><span>ALBUM NAME</span></th>

                                            <th><span>Modify</span></th>

                                    </tr>
                            </thead>
                            <tbody>

                                <%
                                ResultSet rs ;
                                rs = s.executeQuery("select * from album ORDER BY aid");
                                while (rs.next())
                                    {
                                    String uname= (String) rs.getString("aid");
                                    String uid = rs.getString("sid");
                                    %>
                                    <tr>
                                    <td><%=uname%></td>
                                    <td><%=uid%></td>
                                    <td><%=rs.getString("aname")%></td>
                                    
                                    <td>
                                    <a href="modifyalbum1.jsp?user=<%=uname%>">MODIFY</a>
                                    </td>
                                    </tr>

                                    <%
                                    }
                                %>
                                 </tbody>
                                 </tbody>
                        </table>
                    </div>

                </div>
                </div>


</div>
</div>