        <g:javascript src="bootstrap-datepicker.js"/>
	<g:javascript>
		$(function(){
			window.prettyPrint && prettyPrint();
			$('#dp3').datepicker();

		});
                function filInDate(){
                  var h = $('#d12').val();
                  var m = $('#d12').val().split("-");
                  $('#pd').val(m[0]);
                  $('#pm').val(m[1]);
                  $('#py').val(m[2]);

                }

	</g:javascript>