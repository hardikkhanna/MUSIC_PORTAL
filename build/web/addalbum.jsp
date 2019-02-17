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
            alert("Album name cannot be left empty");
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
    <form action="addalbum1.jsp" name="f">
        Enter Album id<input type="number" name="t1"><br>
        Enter singer id<input type="number" name="t2"><br>
        Enter Album name <input type="text" name="t3"><br>
        <input type="button" value="ADD" name="t4" onclick="valid()">
        <a href="admin1.jsp" >BACK</a>
    </form>
</body>