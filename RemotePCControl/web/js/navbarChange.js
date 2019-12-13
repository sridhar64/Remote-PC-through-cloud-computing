/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
hideAllPages();
$('#applicationdata').hide();
$('#hostpage').fadeIn(500);
function changePage(s)
{
    hideAllPages();
    if (s == 'hostnavbar')
    {
        var cu = $('#currentnavbar').val();
        $('#currentnavbar').val(s);
        $('#' + cu).removeClass('active');
        $('#' + s).addClass('active');
        $('#hostpage').fadeIn(500);
    } else if (s == 'controlnavbar')
    {
        var cu = $('#currentnavbar').val();
        $('#currentnavbar').val(s);
        $('#' + cu).removeClass('active');
        $('#' + s).addClass('active');
        $('#controlpage').fadeIn(500);
    } else if (s == 'notificationsnavbar')
    {
        var cu = $('#currentnavbar').val();
        $('#currentnavbar').val(s);
        $('#' + cu).removeClass('active');
        $('#' + s).addClass('active');
        $('#notificationspage').fadeIn(500);
    } else if (s == 'activenavbar')
    {
        var cu = $('#currentnavbar').val();
        $('#currentnavbar').val(s);
        $('#' + cu).removeClass('active');
        $('#' + s).addClass('active');
        $('#activepage').fadeIn(500);
    } else
    {
        var cu = $('#currentnavbar').val();
        $('#currentnavbar').val(s);
        $('#' + cu).removeClass('active');
        $('#settingspage').fadeIn(500);
    }
}

function hideAllPages()
{
    $('#hostpage').hide();
    $('#controlpage').hide();
    $('#notificationspage').hide();
    $('#activepage').hide();
    $('#settingspage').hide();
}