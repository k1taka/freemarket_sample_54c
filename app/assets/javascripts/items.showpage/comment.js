$(function() {
  function buildMessageHTML(comment) {
    var comment = comment.comment ? `${comment.comment}` : "";
    var html = `<li class="message">
                  <div class="message__user">
                    <img height="40" width="40" class="message__user__photo" src="/assets/anonymous -ff8e08f8c3ee4f3060a8e9512d7eb117a5d9314e54a4d5d554af911f9b82132b.svg">
                  </div>
                  <div class="message__body">
                    <div class="message__body__text">
                      ${comment}
                    </div>
                    <i class="fa fa-clock far fa-clock message__body__time"></i>
                    <span class="message__body__time">
                      ${comment.created_at}
                  </div>
                </li>`
    return html;
  };

  $('.comment__text').on('submit',function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    var href = $(this).attr('action')
    $.ajax({
      url: href,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(comments){
      var html = buildMessageHTML(comments);
      $('.messages').append(html);
      $('.comment__text')[0].reset();
    })
    .fail(function() {
      alert('error');
    })
    .always(function() {
      $('.comment__btn').prop('disabled', false);
    })
  });
});
// $(function() {
//   var reloadMessages = function() {
//     if (location.pathname.match(/\/groups\/\d+\/messages/)) {
//     last_message_id = $('.message:last').data('id');
//     last_message_group_id = $('.left-header__title').data('group-id');
//     $.ajax({
//       url: `/groups/${last_message_group_id}/api/messages`,
//       type: 'GET',
//       dataType: 'json',
//       data: {id: last_message_id}
//     })
//     .done(function(meesages) {
//       var insertHTML = '';
//       meesages.forEach(function(meesage) {
//         var html = buildMessageHTML(meesage);
//         insertHTML += html
//         $('.messages').append(insertHTML);
//         $('.messages').animate({scrollTop: $('.messages')[0].scrollHeight});
//       })
//     })
//     .fail(function(){
//       alert('自動更新に失敗しました');
//     });
//     };
//   };
//   setInterval(reloadMessages, 5000);
// });
// });

