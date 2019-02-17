<head>
    <style>
        body{
            background-color: aqua;
}
        </style>
    <script>
        function valid(){
            if(f.t1.value==""){
                alert("Enter singer id");
                return;
            }
            if((/[a-z]/.test(f.t1.value)) || (/[A-Z]/.test(f.t1.value))){
                alert("Singer ID should be a number ");
                return;
            }
            if(f.t2.value==""){
                alert("Enter singer name");
                return;
            }
            if(f.t3.value==""){
                alert("Enter singer phone number");
                return;
            }
            if((/[a-z]/.test(f.t3.value)) || (/[A-Z]/.test(f.t3.value))){
            alert("Phone number format not valid");
            return;
        }
        if(f.t4.value==""){
            alert("Enter singer location");
            return;
        }
        if(f.t5.value==""){
            alert("Enter singer email");
            return;
        }
        n=f.t5.value;
        s=n.indexOf("@");
        if(s==-1){
            alert("Email must include @");
            return;
        }
        s=n.indexOf(".com");
        if(s==-1){
            alert("Enter email properly");
            return;
        }
        if(/[0-9]/.test(f.t2.value))
{
  alert("Enter name properly");
return;
}
if(f.t2.length<10){
    alert("enter 10 digit phone number");
    return;
}
if(f.t6.value==""){
    alert("Please select iamge");
    return;
}
f.submit();
        }
        </script>
</head><body>
<form action="addsinger1.jsp" name="f"  enctype="multipart/form-data"  method="post">
    ENTER SINGER ID : <input type="number" name="t1"><br>
    ENTER SINGER NAME : <input type="text" name="t2"><br>
    ENTER SINGER NUMBER : <input type="number" name="t3" minlength="10" ><br>
    ENTER SINGER LOCATION <input type="text" name="t4"><br>
    ENTER SINGER EMAIl :<input type="email" name="t5"><br>
    SINGER PROFILE PHOTO :<input type="file" name="t6"><br>
    <button type="button" name="t7" onclick="valid()" >ADD</button>
   <a href="admin1.jsp" >BACK</a>
</form></body>