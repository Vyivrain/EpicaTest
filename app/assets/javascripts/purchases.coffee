# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  $('.add-amount').css('margin-left', (index, curValue) ->
    parseInt(curValue, 10) + 17 + 'px';
  )

  $('.add-amount').click ->
    s = $('.amount .row').last().find('label').text()
    i = parseInt(s.match(/\d/g).join(''), 10)

    $(this).closest('form').find('.amount').append(
      '<div class="form-group top-margin form-row-width row">' +
        '<label class="control-label col-xs-2 label-margin" for="line_item_' + i.toString() + '">Amount_' + (i + 1).toString() + '</label>' +
        '<input class="values form-control col-md-10" type="text" name="line_item[' + i.toString() + ']">' +
        '<button type="button" class="btn btn-primary remove-amount"><i class="glyphicon glyphicon-minus"></i></button>'
      '</div>'
    )

    $('.remove-amount').click ->
      $(this).closest('.row').remove()
