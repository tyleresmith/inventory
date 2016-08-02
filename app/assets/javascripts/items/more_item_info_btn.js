
$(function() {
  $(".js-more").on("click", function() {
    var id = $(this).data("id");
    $.get("/items/" + id + ".json", function(data) {
      console.log(data["necessary"]);
      var inventoryText = "<strong>Unnecessary</strong>";
      if(data["necessary"]){
        inventoryText = "<strong>Necessary</strong>";
      }
      var descriptionText = "<p>" + data["description"] + "</p><p>" + inventoryText + "</p>";
      $("#item-" + id).append(descriptionText);
      $("#item-btn-" +id).remove();
    });
  });
});