/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
var st = "", ttl;
var ppkey = 0;
rcvar = 1;
var sk = "27,112,113,114,115,116,117,118,119,120,121,122,123,45,46,36,35,33,34,192,49,50,51,52,53,54,55,56,57,48,189,187,8,144,111,106,109,9,81,87,69,82,84,89,85,73,79,80,219,221,220,36,38,33,107,20,65,83,68,70,71,72,74,75,76,186,222,13,37,12,39,16,90,88,67,86,66,78,77,188,190,191,16,35,40,34,17,91,18,32,18,93,17,37,40,38,39,45,46,13;";
var ar = [];
var at = [];
var jk = "27,112,113,114,115,116,117,118,119,120,121,122,123,155,127,36,35,33,34,192,49,50,51,52,53,54,55,56,57,48,45,61,8,144,47,151,45,9,81,87,69,82,84,89,85,73,79,80,91,93,92,103,104,105,521,20,65,83,68,70,71,72,74,75,76,59,222,10,100,101,102,16,90,88,67,86,66,78,77,44,46,47,16,97,98,100,17,524,18,32,18,525,17,37,40,38,39,96,46,10;";

function len(s, s2)
{
    var l = s.length, s1 = "";
    for (var i = 0, c = s.charAt(i), co = 0; i < l; i++, c = s.charAt(i))
    {
        if (c == ',' || c == ';')
        {
            ar[co] = parseInt(s1);
            s1 = "";
            co++;
        } else
            s1 += c;
    }
    s1 = "";
    l = s2.length;
    for (var i = 0, c = s2.charAt(i), co = 0; i < l; i++, c = s2.charAt(i))
    {
        if (c == ',' || c == ';')
        {
            at[co] = parseInt(s1);
            s1 = "";
            co++;
        } else
            s1 += c;
    }
}

len(sk, jk);

function showv(kk)
{
    return at[ar.indexOf(kk)];
}

function keyHandler()
{
    var k = event.keyCode;
    sshow(showv(k));
    alert(k);
}

function sshow(key)
{
    if (key == 16 || key == 17 || key == 18 || key == 524)
    {
        if (ppkey == key)
        {
            st += "2," + key + ";";
        } else
            st += "3," + key + ";";
        ppkey = key;
        return;
    }
    ppkey = key;
    st += "2," + key + ";";
}

function cchange()
{
    if (rcvar == 1)
        rcvar = 4;
    else
        rcvar = 1;
}

function mouseHandler()
{
    var x = event.offsetX;
    var y = event.offsetY;
    st += "" + rcvar + "," + x + "," + y + ";";
    alert(x + ' ' + y);
}

function sendk() {
    st.trim();
    if (st == "")
        return;
    $.post('pcevents.jsp', {
        q: "" + st,
        un:""+getCurrentUser()
    }, function (data, status) {
        alert("events " + data + status);
        if (status !== 'success')
        {
            alert('error');
        } else
            st = "";
    });
}

function des()
{
    clearInterval(ttl);
}
function cre()
{
    var sp=0;
    sp=parseInt(document.getElementById('speedc').value);
    ttl = window.setInterval(sendk, sp);
}