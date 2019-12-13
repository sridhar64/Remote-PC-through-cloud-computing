/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
//alert('load.js started');

$(document).ready(function () {

    function loadDoc() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (xhttp.readyState == 4 && xhttp.status == 200) {
                check(xhttp.responseText);
            }
        };
        var m = getN();
        var cu = getCurrentUser();
        //alert(cu+" "+m);
        xhttp.open("POST", "monitor.jsp?m=" + m + "&un=" + cu, true);
        xhttp.send();
    }

    function check(tx)
    {
        tx.trim();
        //alert(tx);
        var n = new Number(tx);
        var n1 = getN();
        if (n > n1)
        {
            $('#pmon').html('<img class="monimg" style="height:'+getImgHeight()+'px;width:'+getImgWidth()+'px" id="amon" src="' + n + '.jpg" name="' + n + '"><img class="monimg" alt="image' + n + '" id="bmon" src="' + n1 + '.jpg" style="height:'+getImgHeight()+'px;width:'+getImgWidth()+'px" name="' + n1 + '">');
            $('#amon').hide();
        }
    }
    
    function getImgHeight()
    {
        return document.getElementById("imgheightcss").value;
    }
    
    function getImgWidth()
    {
        return document.getElementById("imgwidthcss").value;
    }
    
    function getN()
    {
        var s = document.getElementById("amon").name;
        var n1 = parseInt(s);
        return n1;
    }

    function getCurrentUser()
    {
        return document.getElementById("currentuser").value;
    }
    var monint;

    function startMonitor()
    {
        alert('monitor started');
        loadImgDim(getCurrentUser());
        monint = window.setInterval(loadDoc, parseInt(document.getElementById('speedm').value));
        alert('mon started');
    }
    function stopMonitor()
    {
        if(monint!=null)
        clearInterval(monint);
        alert('mon stopped');
    }

    $('#monmodeactive').click(function () {
        startMonitor();
    });

    $('#dosmodeactive').click(function () {
        stopMonitor();
    });

    $('#conmodeactive').click(function () {
        stopMonitor();
    });

    function loadImgDim(name)
    {
        $.post("imgDim.jsp",
                {
                    name: ""+name+"",
                },
                function (data, status) {
                    //alert("Data: " + data + "\nStatus: " + status);
                    parseImg(data);
                });
    }

    function parseImg(s)
    {
        var m="";
        var h=0,w=0;
        var co=0;
        for(var i=0;i<s.length;i++)
        {
            var c=s.charAt(i);
            if(c==';')
            {
                if(co==0)
                    h=parseInt(m);
                else
                    w=parseInt(m);
                m="";
                co++;
            }
            else
                m+=c;
        }
        alert(h+" "+w);
        $(".monimg").css({"height": h, "width": w});
        document.getElementById("imgwidthcss").value=w;
        document.getElementById("imgheightcss").value=h;
    }
});


//alert('load.js loaded');