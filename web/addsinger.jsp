<link  rel="stylesheet" href="bootstrap.min.css">
 <div  class="jumbotron"><h1>Welcome  To E-Music website</h1>

    </div>

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
<div class="container">
    <div class="row" style="margin-top: 10px;">
        <div class="col-xs-6 col-xs-offset-3">
            <div class="main-box clearfix">
                <div class="main-box-header clearfix">
                    <h1>
                    ADD SONGS
                    </h1>
                </div>
                <div class="main-box-body clearfix">

                        <form role="form" action="BackEndEntry1.jsp" method="post" name='f'  enctype="multipart/form-data">
                            <div class="form-group">
                            <label for="exampleInputEmail1">Enter Singer ID</label>
                            <input name="t1" size="20" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputEmail1">Enter Singer name</label>
                            <input name="t2"  size="20" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputEmail1">Enter singer number</label>
                            <input name="t3"  size="20" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputPassword1">Enter singer location</label>
                            <input type= name="t4" size="20" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputPassword1">Enter singer email</label>
                            <input type= name="t5" size="20" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            </div>

                            <div class="form-group">
                            <label for="exampleInputPassword1">Profile Picture</label>
                            <input type="file" name="t6" />
                            </div>

                            <div class="form-group">
                            <div >
                            <button type="button" class="btn btn-success"  onclick="valid()">ADD SONG</button>
                            </div>
                            </div>
                         </form>
                </div>
            </div>
        </div>
    </div>
</div>