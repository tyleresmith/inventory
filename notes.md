# Notes

# Purpose

Allows users to catalog and track all items in their lives. This top down views aim to have users assess what is important in their lives and track the accumilation of possibly unnecessary items.

# Set-up

- User can create and log into account
- User's have multiple inventories w/ categories (maybe pantry, fridge, books, clothing, hobby, work, etc)
- Categories (inventories) have many items
- Items belong to category (inventories)

# category (inventory)
- Have categories

# Items
- Have "necessary" (boolean)
- Have description (string)
- Have name (string)
- Have quantity (integer)

#AR Methods

- #total_items - returns all items own by user (pulls through all inventories, then all items)
- #oldest_item - returns oldest item in category

# Addition TODOS
- Forms must have validations
- Forms must display errors "fields should be enclosed within a fields_with_errors class and error messages"
- DRY as possible
- change /users/sign_in url to login
- Double 'Welcome! You have signed up successfully' flash message

<!-- 
Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views -->