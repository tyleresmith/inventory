$(function() {
  var id = $(".show_item").data("id")
  debugger;

  $.get("/items/"+id+".json", function(data) {
  	console.log(data);
    var necessary = "<strong>Unnecessary</strong>"

    if(data["necessary"]){
      necessary = "<strong>Necessary</strong>";
    }
    var item = [,
        '<h1> '+data["name"]+'</h1>',
        necessary,
        '<p>Quantity: ' + data["quantity"] + '</p>',
        '<p>Description: ' + data["description"]
    ].join('');
    $(".show_item").append(item);
  });
});
