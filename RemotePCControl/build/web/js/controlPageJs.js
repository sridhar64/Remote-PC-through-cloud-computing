/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function controlPageAjax(page, mode) {
    $.post("controlPageAjax.jsp",
            {
                page: "" + page + "",
                mode: "" + mode + ""
            },
            function (data, status) {
                controlPageDataParse(page, mode, data);
            });
}

function controlPageDataParse(page, mode, data)
{
    if (page.indexOf("connect") == 0)
    {
        if (mode.indexOf("up") == 0)
        {
            $("#connect-for-users-ul").html(data);
        } else if (mode.indexOf("down") == 0)
        {
            $("#connect-for-users-ul-model").html(data);
        }
    } else if (page.indexOf("request") == 0)
    {
        if (mode.indexOf("up") == 0)
        {
            $("#request-for-users-ul").html(data);
        } else if (mode.indexOf("down") == 0)
        {
            $("#request-for-users-ul-model").html(data);
        }
    } else if (page.indexOf("accept") == 0)
    {
        if (mode.indexOf("up") == 0)
        {
            $("#accept-for-users-ul").html(data);
        } else if (mode.indexOf("down") == 0)
        {
            $("#accept-for-users-ul-model").html(data);
        }
    } else if (page.indexOf("pending") == 0)
    {
        if (mode.indexOf("up") == 0)
        {
            $("#requests-for-users-ul").html(data);
        } else if (mode.indexOf("down") == 0)
        {
            $("#requests-for-users-ul-model").html(data);
        }
    }
}


function loadControlPageData()
{
    controlPageAjax("connect", "up");
    controlPageAjax("connect", "down");
    controlPageAjax("request", "up");
    controlPageAjax("request", "down");
    controlPageAjax("accept", "up");
    controlPageAjax("accept", "down");
    controlPageAjax("pending", "up");
    controlPageAjax("pending", "down");
}
function functionConnectForUsersSearch() {
    var input, filter, ul, a, i, m;
    input = document.getElementById('connect-for-users-input');
    filter = input.value.toUpperCase();
    ul = document.getElementById("connect-for-users-ul");
    a = ul.getElementsByTagName('a');
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < a.length; i++) {
        m = a[i].getElementsByTagName("h4")[0];
        if (m.innerHTML.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}

function functionRequestForUsersSearch() {
    var input, filter, ul, a, i, m;
    input = document.getElementById('request-for-users-input');
    filter = input.value.toUpperCase();
    ul = document.getElementById("request-for-users-ul");
    a = ul.getElementsByTagName('a');
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < a.length; i++) {
        m = a[i].getElementsByTagName("h4")[0];
        if (m.innerHTML.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}

function functionRequestsForUsersSearch() {
    var input, filter, ul, a, i, m;
    input = document.getElementById('requests-for-users-input');
    filter = input.value.toUpperCase();
    ul = document.getElementById("requests-for-users-ul");
    a = ul.getElementsByTagName('a');
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < a.length; i++) {
        m = a[i].getElementsByTagName("h4")[0];
        if (m.innerHTML.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}

function functionAcceptForUsersSearch() {
    var input, filter, ul, a, i, m;
    input = document.getElementById('acceptt-for-users-input');
    filter = input.value.toUpperCase();
    ul = document.getElementById("acceptt-for-users-ul");
    a = ul.getElementsByTagName('a');
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < a.length; i++) {
        m = a[i].getElementsByTagName("h4")[0];
        if (m.innerHTML.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}


function removePendingElement(s)
{
    $("#removeElementIdRequests" + s).remove();
}

function addToPending(name,no,a)
{
    var s="";
    s+="<a href=\"#\" class=\"list-group-item list-group-item-danger\" data-toggle=\"modal\" data-target=\"#" + name + "pendingmodel\">";
    s+="<h4 class=\"list-group-item-heading\">" + name + "</h4>";
    s+="<p class=\"list-group-item-text\">" + no + "</p>";
    s+="</a>";
    $('#requests-for-users-ul').append(s);
    $('#removeElementRequest'+name).remove();
}