//= require jquery3
//= require selectize
//= require moment
//= require datetime_picker

$(function () {
	var keycodes = { space: 32, enter: 13 };

	var visitDataUrl = function(event) {
    if (event.type == "click" ||
        event.keyCode == keycodes.space ||
        event.keyCode == keycodes.enter) {

      if (event.target.href) {
        return;
      }

      var dataUrl = $(event.target).closest("tr").data("url");
      var selection = window.getSelection().toString();
      if (selection.length === 0 && dataUrl) {
        window.location = dataUrl;
      }
    }
  };

	$("table").on("click", ".js-table-row", visitDataUrl);
	$("table").on("keydown", ".js-table-row", visitDataUrl);

	$('body .field-unit--has-many select').selectize({});

	$('body .admin-form').on('change', '#adm_file', function (ev) {
		var inp = $(this);
		var lbl = inp.val().replace(/\\/g, '/').replace(/.*\//, '');
		$('.admin-form').find('#adm_file_path').val(lbl);
		$('.admin-form').find('.actions button.md-button').removeAttr('disabled');
	});

})
