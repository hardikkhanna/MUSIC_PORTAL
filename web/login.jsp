<html><head>
<title>Login Page</title>
   <style>
    body{
    font-family:sans-serif;  
}
.box{
    width:300px;
    padding:40px;
    position:absolute;
    top:50%;
    left:50%;
    transform: translate(-50%,-50%);
    background: #0A0A0A;
    text-align: center;
}
.box h1{
    font-weight: 500;
    text-transform: uppercase;
    color:white;
}
#login,#password{
    border:0;
    outline:none;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 14px 10px;
    width:200px;
    color:white;
    border-radius: 24px;
    transition: 0.25s;
}
#login:focus,#password:focus{
    width:280px;
    border-color: #2ecc71;

}
#submit{
    border:0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #2ecc71;
    padding: 14px 40px;
    color:white;
    border-radius: 24px;
    cursor: pointer;
        transition: 0.25s;
    outline: none;
}
#submit:hover{
    background: #2ecc71;
}

#im{
    height:100%;
    width:100%;
}
    </style>
    </head>
    <body>
         <img src="image.jpg" id="im">
    <form class="box" action="login1.jsp" method="post">
        <h1>Login</h1>
        <input type="text" id="login" placeholder="Username" name="t1">
        <input type="password" id="password" name="t2" placeholder="Password" >
        <input type="submit" id="submit" value="login">
        </form>
    </body>
</html>
