/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {

    function loadDoc1() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (xhttp.readyState == 4 && xhttp.status == 200) {
                check1(xhttp.responseText);
            }
        };
        var m = getN1();
        xhttp.open("POST", "monitor.jsp?m=" + m + "&un="+getCurrentUser(), true);
        xhttp.send();
    }

    function check1(tx)
    {
        tx.trim();
        var n = new Number(tx);
        var n1 = getN1();
        if (n > n1)
        {
            $('#pp').html('<img id="aa" src="' + n + '.jpg" style="height:' + getImgHeight() + 'px;width:' + getImgWidth() + 'px" name="' + n + '"><img alt="image' + n + '" onclick="mouseHandler()" id="bb" src="' + n1 + '.jpg" style="height:' + getImgHeight() + 'px;width:' + getImgWidth() + 'px" name="' + n1 + '">');
            $('#aa').hide();
        }
    }
    function getN1()
    {
        var s = document.getElementById("aa").name;
        var n1 = parseInt(s);
        return n1;
    }

    var monint1;

    function startControlLoad()
    {
        loadImgDim(getCurrentUser());
        monint1 = window.setInterval(loadDoc1, parseInt(document.getElementById('speedc').value));
        startControl();
        alert('control started');
    }
    function stopControlLoad()
    {
        if (monint1 != null)
            clearInterval(monint1);
        stopControl();
        alert('stopped control');
    }

    $('#conmodeactive').click(function () {
        startControlLoad();
    });

    $('#dosmodeactive').click(function () {
        stopControlLoad();
    });

    $('#monmodeactive').click(function () {
        stopControlLoad();
    });

    function getImgHeight()
    {
        return document.getElementById("imgheightcss").value;
    }

    function getImgWidth()
    {
        return document.getElementById("imgwidthcss").value;
    }

    function loadImgDim(name)
    {
        $.post("imgDim.jsp",
                {
                    name: "" + name + "",
                },
                function (data, status) {
                    //alert("Data: " + data + "\nStatus: " + status);
                    parseImg(data);
                });
    }

    function parseImg(s)
    {
        var m = "";
        var h = 0, w = 0;
        var co = 0;
        for (var i = 0; i < s.length; i++)
        {
            var c = s.charAt(i);
            if (c == ';')
            {
                if (co == 0)
                    h = parseInt(m);
                else
                    w = parseInt(m);
                m = "";
                co++;
            } else
                m += c;
        }
        alert(h + " " + w);
        $(".monimg").css({"height": h, "width": w});
        document.getElementById("imgwidthcss").value = w;
        document.getElementById("imgheightcss").value = h;
    }
});
