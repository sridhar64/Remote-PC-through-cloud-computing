/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function sendControls(s)
{
    var a = [document.getElementById(s + 'dos').checked, document.getElementById(s + 'monitor').checked, document.getElementById(s + 'control').checked];
    var i = 1, t = 0;
    for (var j = 0; j < 3; j++, i *= 2)
    {
        if (a[j] == true)
        {
            t += i;
        }
    }
    loadDoc(t, s);
    addToPending(s, t, a);
}

function loadDoc(t, un) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            myToast('Request Sent ');
        }
    };
    xhttp.open("POST", "requests.jsp?m=" + t + "&un=" + un, true);
    xhttp.send();
}

function acceptControls(ts)
{
    var a = [document.getElementById(ts + 'dosn').checked, document.getElementById(ts + 'monitorn').checked, document.getElementById(ts + 'controln').checked];
    var i = 1, t = 0;
    for (var j = 0; j < 3; j++, i *= 2)
    {
        if (a[j] == true)
        {
            t += i;
        }
    }

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            removePendingElement(ts);
            myToast('Accepted ');
        }
    };
    xhttp.open("POST", "accept.jsp?m=" + ts + "&t=" + t, true);
    xhttp.send();
}

function getSpeed()
{
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            parseSpeed(xhttp.responseText);
        }
    };
    xhttp.open("POST", "speed.jsp?un=" + document.getElementById('currentuser').value, true);
    xhttp.send();
}

function parseSpeed(s)
{
    var c, st = "", fs = 0;
    var d, m, conc;
    for (var i = 0; i < s.length; i++)
    {
        c = s.charAt(i);
        if (c == ';')
        {
            if (fs == 1)
            {
                d = parseInt(st);
            }
            if (fs == 2)
            {
                m = parseInt(st);
            }
            if (fs == 3)
            {
                conc = parseInt(st);
            }
            st = "";
            fs++;
        } else
            st += c;
    }
    document.getElementById('speedd').value = d;
    document.getElementById('speedm').value = m;
    document.getElementById('speedc').value = conc;
}

function lr()
{
    alert('lr');
}

function ch(id)
{
    alert(id);
    pillsMenuBarClose();
    if (id == 1)
    {
        stopControl();
        startDos();
        $('#dospanel').show();
    } else if (id == 2)
    {
        stopDos();
        stopControl();
        $('#monpanel').show();
        //startMonitor();
    } else if (id == 3)
    {
        //stopMonitor();
        stopDos();
        $('#conpanel').show();
        startControl();
    }
}

function sendSpeed()
{
    $('#hostbutton').html('<span class="fa fa-spinner fa-pulse fa-2x"></span>');
    var d = document.getElementById('hostpagedosvalue').value;
    var m = document.getElementById('hostpagemonvalue').value;
    var c = document.getElementById('hostpageconvalue').value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            $('#hostbutton').html('<span class="fa fa-check-square-o fa-2x"></span>');
        }
    };
    xhttp.open("POST", "details.jsp?d=" + d + "&m=" + m + "&c=" + c + "&un=" + document.getElementById('username').value, true);
    xhttp.send();
}

function connectHost(ids)
{
    document.getElementById('currentuser').value = ids;
    getSpeed();
    changePage('activenavbar');
    myToast('User '+ids+' Activated ');
}

function pillsMenuBarClose()
{
    var dbu = '';
    var mbu = '';
    var cbu = '';
    dbu += '<button id="buttonpilltoggled" type="button" class="btn btn-default" aria-label="Right Align" onclick="pillsMenuBarToggle()">';
    dbu += '<span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>';
    dbu += '</button>';
    mbu += '<button id="buttonpilltogglem" type="button" class="btn btn-default" aria-label="Right Align" onclick="pillsMenuBarToggle()">';
    mbu += '<span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>';
    mbu += '</button>';
    cbu += '<button id="buttonpilltogglec" type="button" class="btn btn-default" aria-label="Right Align" onclick="pillsMenuBarToggle()">';
    cbu += '<span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>';
    cbu += '</button>';
    $('#pillsbarmenu').slideUp(800);
    $('#pilldos').prepend(dbu);
    $('#pillmon').prepend(mbu);
    $('#pillcon').prepend(cbu);
}
function pillsMenuBarToggle()
{
    $('#pillsbarmenu').slideToggle(800);
    $('#buttonpilltoggled').remove();
    $('#buttonpilltogglem').remove();
    $('#buttonpilltogglec').remove();
}