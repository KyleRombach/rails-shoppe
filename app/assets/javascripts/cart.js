 $(document).ready(function() {
  $('#add').on('ajax:success', function(event, response) {
  	$('body').append(response);
  	$('#cart').dialog({
  	});
  	$(this).parent().parent().hide();
 });