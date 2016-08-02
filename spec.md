# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Use jQuery for implementing new requirements
- [x] Include a show page rendered using jQuery and an Active Model Serialization JSON backend.
	- Item's show page pings JSON backend to render page inside erb via jQuery
- [x] Include an index page rendered using jQuery and an Active Model Serialization JSON backend.
	- Item's index page pings JSON backend to render page inside erb via jQuery
- [x] Include at least one has_many relationship in information rendered via JSON
	- User's serializer has a has_many relationship, utlizing another serializer to avoid redundancy
- [x] Include at least one link that loads or updates a resource without reloading the page
	- Category show page lists items that have a buttton to load in descriptions and delete button
- [ ] Translate JSON responses into js model objects
- [ ] At least one of the js model objects must have at least one method added by your code to the prototype

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message