<link  rel="stylesheet" href="bootstrap.min.css">
 <div  class="jumbotron"><h1>Welcome  To E-Music website</h1>

    </div>

<script>
    function valid(){
        if(f.t1.value==""){
            alert("Album id cannot be left empty");
            return;
        }
        if(f.t2.value==""){
            alert("Singer Id cannot be left Empty");
            return;
        }
        if(f.t3.value==""){
            alert("song file cannot be empty");
            return;
        }
        if((/[a-z]/.test(f.t1.value)) || (/[A-Z]/.test(f.t1.value))){
            alert("Album id should be numeric");
            return;
        }
        if((/[a-z]/.test(f.t2.value)) || (/[A-Z]/.test(f.t2.value))){
            alert("Singer id should be numeric");
            return;
        }
        f.submit();
    }
    </script>
<body>
    <div class="container">
    <div class="row" style="margin-top: 10px;">
        <div class="col-xs-6 col-xs-offset-3">
            <div class="main-box clearfix">
                <div class="main-box-header clearfix">
                    <h1>
                    ADD Album
                    </h1>
                </div>
                <div class="main-box-body clearfix">

                        <form role="form" action="addalbum1.jsp" method="post" name='f'  enctype="multipart/form-data">
                            <div class="form-group">
                            <label for="exampleInputEmail1">Enter Song ID</label>
                            <input name="t1" size="20" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputEmail1">Enter Album ID</label>
                            <input name="t2"  size="20" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                            <label for="exampleInputEmail1">Upload Song</label>
                            <input name="t3"  size="20" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                            </div>


                            <div class="form-group">
                            <div >
                            <button type="button" class="btn btn-success"  onclick="valid()" name="t4"">ADD SONG</button>
                            <a href="admin1.jsp">BACK</a>
                            </div>
                            </div>
                         </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>