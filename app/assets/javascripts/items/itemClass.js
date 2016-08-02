class Item {
	constructor(json) {
		this.name = json["name"];
		this.description = json["description"];
		this.quantity = json["quantity"];
		this.necessary = json["necessary"];
		this.category_id = json["category_id"];
	}

	isNecessary() {
		 return this.necessary ? "<strong>Necessary</strong>" : "<strong>Unnecessary</strong>";
	}
}