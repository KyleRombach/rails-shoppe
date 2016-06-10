## Ye Olde Online Shoppe

### Overview
This is a multi-day, agile development challenge that will require you to create an online store using Rails. You will work in frequent, small iterations.  After each iteration, you will consult with a "senior engineer".  This app will have a polished user interface and be fully tested.

### Requirements
- The role of the "senior engineer" will also be played by one of your dear instructors.  The engineer will consult with you on testing, design decisions, or provide code review.
- Maintain the [Documentation README](./doc/README.md) over the entire course of this project.  The README is the first thing other developers see when looking at your app.
- You will work in pairs and at some point you will switch code bases. (Say it with me: "I am not my code").  When you meet with your new pair, you will discuss which code base to move forward with.  You will need to get your pair up to speed or get up to speed on each new-ish code base.
- Use HAML to construct views and SCSS or SASS for stylesheets.
- Challenge is limited to basic Javascript and jQuery only.  No JS Frameworks.  If you find something you'd like to use and are unsure, consult your "senior engineer".
- The Documentation README will be up to date before every client meeting or code review request.
- The Client doesn't know what localhost is. Each iteration must be deployed for review.

The iterations are provided below. As you complete them, you will meet with your "senior engineer" to receive further instructions from the client.

### Fourth Iteration

- Each product should have an ‘Add to cart’ button which will load a view through AJAX that shows the shopping cart for that user
- Users can add a certain quantity of products to the cart, as long as the quantity in stock is not exceeded. Users can remove items from the cart
- Calculate the total price of items in the cart and have that update with JavaScript when items are added or removed
- When the user clicks checkout, the number of items in stock should be reduced by the amount that was purchased.
- When a user clicks checkout, they should receive an email detailing the purchase.
- Upon checkout, redirect the user to a thank you page that indicates what they purchased and how much they spent
- Any items which are out of stock should be indicated as such on the product page and have their ‘Add to cart’ button greyed out.
- Maintain an order history for each user and have an “order history” page which shows previous orders, including the date and time the order occurred
- Add tests to ensure the behavior above e.g., when an item is out of stock, the ‘Add to cart’ button is disabled.
- Add feature tests for the shopping cart itself and tests for any new models you created

### Third Iteration

- The client wants users. Add user registration and login. There should be an admin user who will have access to the admin console.
    - Rails has_secure_password (bcrypt) is sufficient for the auth.
    - STRETCH ONLY: Consider using OAuth with [Gmail](https://www.twilio.com/blog/2014/09/gmail-api-oauth-rails.html)/[Facebook](https://github.com/mkdynamic/omniauth-facebook) for your user model.
- Products should be classified into categories. A product can have many categories and a category can have many products. On the home page, have a link that shows all the categories available for selection. When a particular category is clicked, show all products that have that category.
- A product’s show page should show which categories the product is in
- Update the tests for categories and for your new authentication scheme.
- Turns out HTTP Basic Authentication has [some flaws](http://security.stackexchange.com/questions/988/is-basic-auth-secure-if-done-over-https). Replace it with session based authentication and authorization with a Users table.
- Now that we have users the client wants us to start spamming them constantly. Build an ActionMailer adapter for your app that will send a welcome email when the user signs up.
    - [Basic Tutorial](https://launchschool.com/blog/handling-emails-in-rails) using either gmail or MailGun.  This uses Delayed Job.  Do this one first.
    - STRETCH ONLY: [Advanced Tutorial](https://www.codefellows.org/blog/how-to-set-up-a-rails-4-2-mailer-with-sidekiq) with Redis & [Sidekiq](https://github.com/mperham/sidekiq/wiki/FAQ), as an alternative to Delayed Job.
- Please seed your database with
  - ```User: username: 'tom', email: 'tom@tom.com', password: 'tomtom'```
  - Admin: ```username: 'tim', email: 'tim@tim.com', password: 'timtim'```

### Second Iteration
- Have a quantity in stock for each item and a price.
- Prices should be displayed in legit format ```$99.95```
- Have a separate view for inventory administration (add, remove, edit) located at '/admin'. Use `http_basic_authenticate_with_name`. Username should be `admin` and password is `secret`. Also have this protection for item creation, edit, and deletion.
- UX for inventory view should be tabular, very functional, designed to help the merchant move through lots of data quickly
- UX for the shopper's view should be visual, maybe a grid of product images, should encourage spending time and slow browsing. The links to edit, delete, etc on each product should be hidden in the shopper's view
- Beautiful, usable, responsive layout. The site should look decent on a mobile device. You can use [SCSS](http://www.mattboldt.com/organizing-css-and-sass-rails/) or [Sass](http://sass-lang.com/guide) for your stylesheets. Utilize the [Bootstrap](https://launchschool.com/blog/integrating-rails-and-bootstrap-part-1) CSS framework.
- Include [flash error and success messages](https://www.railstutorial.org/book/sign_up#sec-the_flash). Add styles Green for good and Red for bad.

### First Iteration

- Document initial user stories.
- Whiteboard or prototype a few mockups and page flows and add them to the documentation.
- Whiteboard or design the data and schema you'll need to keep track of for this app to work and add to the documentation. If you use Schema Designer it's a good idea to paste the generated XML into a separate file in addition to adding a screenshot in the README.
- Add functionality for managing products to the included Rails application skeleton.  It'll be helpful to have a baseline where the client can enter products into the system, manage the products, and view them.
- We will not need any authentication mechanism.
- Include basic styles for the website and image placeholders for the products.
- Have at least some RSpec model tests and RSpec/Capybara feature tests.

Move through the the items above __as quickly__ as you can, without much attachment. These are just a starting point.  As we gather feedback and learn more about what it takes to develop the app, we want to be able to change these easily.  'Cause that's Agile and that's how we do it.

Happy Hacking, now GO Build! <3
