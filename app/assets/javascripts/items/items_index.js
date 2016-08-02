


$(function() {
   if ($('body.items.index').length > 0)
    {
      $.get("/items.json", function(data) {
      	console.log(data);

        var itemsHtml = ["<ul>"];
      	$.each(data, function (index, value) {
          var necessary = "<strong>Unnecessary</strong>"
          if(value["necessary"]){
            necessary = "<strong>Necessary</strong>";
          }
          var item = [
            '<li>',
              '<h2> '+value["name"]+'('+value["quantity"] +')</h2>',
              necessary,
            '<li>'
          ].join('');
          itemsHtml.push(item);
        });
        itemsHtml.push("</ul>");
        itemsHtml.join('');
        $(".item_list").append(itemsHtml);
      });
    }
});