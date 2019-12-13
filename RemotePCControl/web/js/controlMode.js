/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$('#kbd').hide();
var smt = "", mt;
var pkey = 0;
kb = 0, rcc = 0;

function showKB()
{
    if (kb == 0)
    {
        kb = 1;
        $('#bt1').html('Close KeyBoard');
    } else
    {
        kb = 0;
        $('#bt1').html('keyboard <span class="caret">');
    }
    $('#kbd').toggle();
}
function rc()
{
    if (rcc == 0)
    {
        rcc = 1;
        $('#bt2').html('Left Click');
    } else
    {
        rcc = 0;
        $('#bt2').html('Fight Click');
    }
    cchange();
}


function show(key)
{
    if (key == 16 || key == 17 || key == 18 || key == 524)
    {
        if (pkey == key)
        {
            smt += "2," + key + ";";
        } else
            smt += "3," + key + ";";
        pkey = key;
        return;
    }
    pkey = key;
    smt += "2," + key + ";";
}

function getCurrentUser()
{
    return document.getElementById("currentuser").value;
}

function sendmk() {
    smt.trim();
    if (smt == "")
        return;
    $.post('pcevents.jsp', {
        q: "" + smt, un: getCurrentUser()
    }, function (data, status) {
        alert("controlmodejs: "+data+status);
        if (status !== 'success')
        {
            alert('error');
        } else
            smt = "";
    });
}
function startControl()
{
    mt = window.setInterval(sendmk, parseInt(document.getElementById('speedc').value));
    cre();
    document.getElementById("body").addEventListener("keydown",keyHandler);
    alert('started control');
}
function stopControl()
{
    document.getElementById("body").removeEventListener("keydown",keyHandler);
    des();
    if (mt == null)
        return;
    else
        clear(mt);
    alert('stopped control');
}
