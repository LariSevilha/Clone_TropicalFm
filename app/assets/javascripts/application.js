// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery

//= require alert_message
//= require jquery_ujs
//= require owl.carousel2
//= require mask
//= require turbolinks
//= require_tree ./scripts

document.addEventListener('turbolinks:load', function() {
  // link
  _link.back(
    $('.back')
  );
  
  // Tooltips Initialization
  $(function () {
    $("#mdb-lightbox-ui").load("/vendor/assets/mdb-addons/mdb-lightbox-ui.html");
    $('[data-toggle="tooltip"]').tooltip();
    $('.mdb-select').materialSelect();
  })

  // // Pickadate
  // $('.datepicker').pickadate(_pt_br);
  
  // Get the elements
  var from_input = $('#startingDate').pickadate(_pt_br),
    from_picker = from_input.pickadate('picker')
  var to_input = $('#endingDate').pickadate(_pt_br),
    to_picker = to_input.pickadate('picker')

  try{
    // Check if there’s a “from” or “to” date to start with and if so, set their appropriate properties.
    if (from_picker.get('value')) {
      to_picker.set('min', from_picker.get('select'))
    }
    if (to_picker.get('value')) {
      from_picker.set('max', to_picker.get('select'))
    }

    // Apply event listeners in case of setting new “from” / “to” limits to have them update on the other end. If ‘clear’ button is pressed, reset the value.
    from_picker.on('set', function (event) {
      if (event.select) {
        to_picker.set('min', from_picker.get('select'))
      } else if ('clear' in event) {
        to_picker.set('min', false)
      }
    })
    to_picker.on('set', function (event) {
      if (event.select) {
        from_picker.set('max', to_picker.get('select'))
      } else if ('clear' in event) {
        from_picker.set('max', false)
      }
    })
  }catch(e){
  }

  _link.current(
    'active'
  );

  // mask
  $('.mask--phone').keydown(function() {
    try {
    	$(this).unmask();
    } catch (e) {}

    if($(this).val().length < 10){
      $(this).mask('(00) 0000-0000');
    } else {
      $(this).mask('(00) 0000-00009');
    }
  });
});
