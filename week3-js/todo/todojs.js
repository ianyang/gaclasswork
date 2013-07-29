$(document).ready(function() {

  function addTodo() {
    var itemValue = $('.inputValue').val();
    var listItem = $('<li>' + itemValue + '<input type="checkbox"/>' + '<button type="button" class="delete">Delete</button>' + '</li>');
    $('.list-one').append(listItem);
    $('.inputValue').val('');
  }

  function complete() {
    var $this = $(this);
    if ($this.is(':checked')) {
      $this.parent().css('text-decoration', 'line-through');
      $this.parent().appendTo(".list-two");
    } else {
      $this.parent(). css('text-decoration', 'none');
      $this.parent().appendTo(".list-one");
    }
  }

  function deleteTodo() {
    var $this = $(this);
    $this.parent().fadeOut(500,function(){$this.paret().remove();});
  }

  $('body').on('click', '.add', addTodo);
  $('body').on('click', ':checkbox', complete);
  $('body').on('click', '.delete', deleteTodo);

});
