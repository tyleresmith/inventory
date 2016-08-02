

$(function() {
   if ($('body.items.show').length > 0)
    {
      var id = $(".show_item").data("id")
      $.get("/items/"+id+".json", function(data) {
        var item = new Item(data);
        var itemHtml = [,
            '<h1> '+item.name+'</h1>',
            item.isNecessary(),
            '<p>Quantity: ' + item.quantity + '</p>',
            '<p>Description: ' + item.description,
        ].join('');
        $(".show_item").append(itemHtml);
      });
    }  
});

