$('#hold').on('click', function () {
  $.ajax({
    url: '/favorites',
    dataType: 'JSON',
    method: "POST",
    data: {
      favorite: {
        user_id:   $('#favorite_user_id').val(),
        cheese_id: $('#favorite_cheese_id').val(),
        }
    },
    success: function (response) {
      $('.favorites').prepend('<h3>Added to favorites!</h3>');
    }
  });
});
