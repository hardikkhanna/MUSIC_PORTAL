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
    <form action="addsong1.jsp" name="f" enctype="multipart/form-data"  method="post">
        Enter Song id<input type="number" name="t1"><br>
        Enter ALBUM id<input type="number" name="t2"><br>
        SONG <input type="file" name="t3"><br>
        <input type="button" value="ADD" name="t4" onclick="valid()">
        <a href="admin1.jsp" >BACK</a>
    </form>
</body>