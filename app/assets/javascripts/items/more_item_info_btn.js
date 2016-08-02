
$(function() {
  $(".js-more").on("click", function() {
    var id = $(this).data("id");
    $.get("/items/" + id + ".json", function(data) {
      var item = new Item(data);
      var descriptionText = "<p>" + item.description + "</p>" + item.isNecessary();
      $("#item-" + id).append(descriptionText);
      $("#item-btn-" +id).remove();
    });
  });
});