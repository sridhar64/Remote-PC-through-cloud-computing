/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$("#DOSGCID").slider({
    tooltip: 'always'
}).on('slide', hostPageDosInputValueChange);

$("#MONGCID").slider({
    tooltip: 'always'
}).on('slide', hostPageMonInputValueChange);

$("#CONGCID").slider({
    tooltip: 'always'
}).on('slide', hostPageConInputValueChange);

function hostPageDosInputValueChange()
{
    $('#hostpagedosvalue').val($("#DOSGCID").slider().data('slider').getValue());
}

function hostPageMonInputValueChange()
{
    $('#hostpagemonvalue').val($("#MONGCID").slider().data('slider').getValue());
}

function hostPageConInputValueChange()
{
    $('#hostpageconvalue').val($("#CONGCID").slider().data('slider').getValue());
}
hostPageDosInputValueChange();
hostPageMonInputValueChange();
hostPageConInputValueChange();