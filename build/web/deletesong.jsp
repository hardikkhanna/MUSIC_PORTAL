<%@include file="DbConnect.jsp"%>
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>My Home</title>

<link rel="stylesheet" type="text/css" href="bootstrap.min.css"/>


</head>
<div  class="jumbotron"><h1>Welcome  To E-Music website</h1>

    </div>
<div class="container">


    <div class="row" style="margin-top: 10px;">

            <div class="main-box clearfix">
                <div class="main-box-header clearfix">
                    <h1>
                    Singer List
                    </h1>
                </div>
                <div class="main-box-body clearfix">
                    <div class="table-responsive clearfix">
                        <table class="table table-hover" border="1" cellspacing="0" >
                            <thead>
                                    <tr>
                                            <th><span>SONG ID</span></th>
                                            <th><span>ALBUM ID</span></th>
                                            <th><span>SONG NAME</span></th>
                                              <th><span>Delete</span></th>

                                    </tr>
                            </thead>
                            <tbody>
                                <%
                                ResultSet rs ;
                                rs = s.executeQuery("select * from song ");
                                while (rs.next())
                                    {
                                    String uname= (String) rs.getString("songid");
                                    String uid = rs.getString("aid");
                                    %>
                                    <tr>
                                    <td><%=uname%></td>
                                    <td><%=uid%></td>
                                    <td><%=rs.getString("sgname")%></td>

                                    <td>
                                    <a href="deletesong1.jsp?user=<%=uname%>">Delete</a>
                                    </td>
                                    </tr>

                                    <%
                                    }
                                %>
                                 </tbody>
                        </table>
                    </div>

                </div>
                </div>

    </div>
</div>