/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function myToast(s) {
    $('#toast').html("<strong>"+s+" <span class='fa fa-check-circle fa-2x'></span></strong>");
    // Get the snackbar DIV
    var x = document.getElementById("toast");

    // Add the "show" class to DIV
    x.className = "show";

    // After 3 seconds, remove the show class from DIV
    setTimeout(function () {
        x.className = x.className.replace("show", "");
    }, 2000);
}