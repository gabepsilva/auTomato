//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

console.log('step view');

$(function() {
    $('div#j--hide').hide();
    $('a#add-log').click(function(event){
        event.preventDefault();
        $('div#j--hide').toggle();
    });
});
