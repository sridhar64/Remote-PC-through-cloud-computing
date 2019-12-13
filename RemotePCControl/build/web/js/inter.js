/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

//alert('inter.js started');

var s,ms,s12;
var a,b;

function f()
{
    $.post('clicheck.jsp?un='+getCurrentUser(),function(data,status){
        data.trim();
        if(status=='success'&&data!='0')
        {
            a=document.getElementById('ti');
            b=a.value;
            a.value=b+data; 
            $('#b').html("<span class='fa fa-code'></span> Execute");
            document.getElementById('t').value="";
            clear(s);
        }            
    });
}

function fi()
{
    $.post('clicheck.jsp?un='+getCurrentUser(),function(data,status){
        data.trim();
        if(status=='success'&&data!='0')
        {
            alert(data);
            var sst=data;
            var ssi="";
            for(var i=0;i<sst.length;i++)
            {
                var c=sst.charAt(i);
                if(c=='>')
                    break;
                else
                    ssi+=c;
            }
            document.getElementById('t').placeholder=ssi+">";
            clear(s12);
        }            
    });
}

function start()
{
    s=setInterval(f,parseInt(document.getElementById('speedd').value));
}

function starti()
{
    s12=setInterval(fi,parseInt(document.getElementById('speedd').value));
}

$(document).ready(function(){
    $('#b').click(function(){
        $('#b').html("<span class='fa fa-spinner fa-spin fa-2x'></span>");
        var st=document.getElementById('t').value;
        if(st!='cls')
        {
            $.post('clidone.jsp',{
                q:""+st,
                un:""+getCurrentUser()
            },function(data,status){
                if(status=='success')
                {
                    start();
                }            
            });
        }
        else
        {
            document.getElementById('ti').value="";
            document.getElementById('t').value="";
        }
    }); 
});

function startDos(){
    alert('dos started');
    document.getElementById('dosappdata').value=1;
    $.post('clidone.jsp',{
        q:""+"cd",
        un:""+getCurrentUser()
    },function(data,status){
        if(status=='success')
        {
            starti();
        }            
    });
}

function stopDos()
{
    if(s!=null)
        clear(s);
    if(s1!=null)
        clear(s1);
    document.getElementById('dosappdata').value=0;
    alert('dos stopped');
}

function getCurrentUser()
{
    return document.getElementById("currentuser").value;
}
/* $(document).ready(function(){
        ex();
    }); 
function ex()
{
   ms=setInterval(view,500);
}
function view()
{
    if(document.getElementById('t').value.match("\n"))
    {
        var st=document.getElementById('t').value;
        if(st!='cls\n')
        {
            $.post('clidone.jsp',{
                q:""+st
            },function(data,status){
                if(status=='success')
                {
                    start();
                }            
            });
            document.getElementById('t').value="";
        }
        else
        {
            document.getElementById('ti').value="";
            document.getElementById('t').value="";
        }
    }
}
 */

//alert('inter.js loaded');