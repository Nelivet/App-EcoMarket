## Original App Design Project 
# ECOMARKET
## Table of Contents
1. Overview 
2. Product Spec
3. Wireframes
4. Schema

### Overview
#### Description:
- "EcoMarket" is an e-commerce platform dedicated to promoting sustainable consumption practices and environmental conservation. With "EcoMarket", users can buy and sell a wide variety of products, from fashion items to home products, with a focus on sustainability and environmental responsibility. The app is designed to encourage a greener lifestyle by offering users an ethical and conscious alternative for their online shopping needs.
### App Evaluation

  - **Category:** Online Shopping / Sustainability
  - **Mobile:** Offers a mobile platform to browse products and transact from anywhere.
  - **History:** Promotes responsible consumption and supports companies committed to sustainable business practices.
  - **Market:** Attracts people concerned about the environment and who want to make more ethical and conscious purchasing decisions. 
  - **Habit:** Users can visit the app regularly in search of new and sustainable products.
  - **Scope:** The initial version (V1) would focus on basic buying and selling of products. V2 could include features such as advanced search and secure payment options. V3 could be expanded to include sustainability education and awareness features.


### Product Spec:
### 1. User Stories (Required and Optional)

 #### - Mandatory features:

1. Users can log in to their accounts.
2. Users can browse products for sale.
3. Users can search for products by category or keyword.
4. Users can view product details such as price, description, and photos.
5. Users can add products to the shopping cart.

 #### -Optional feature:

1. Users can leave product reviews and ratings.
2. Users can share products on social networks.
3. Users can choose one or more product/s as their favorite.
 
### 2. Screen Archetypes

#### Login/Registration Screen
  Users can log in.

#### Home Page (Product Feed)
Users can see a list of products for sale.
Users can explore and discover new products.
Users can interact with products, such as clicking to see more details.

#### Product search page
Users can search for products.

#### Product details page
Users can view detailed information about a product, such as its price, description, and photos.
Users can add the product to the shopping cart from this screen.

#### Shopping Cart Page
Users can see a list of products they have added to the cart.

Users can edit the quantity of products in the cart or delete products.
Users can proceed with the payment process from this screen.

#### Favorite products screen (Optional)
Users can see a list of products they have marked as favorites.
Users can add or remove products from their favorites list from this screen.

#### Product reviews and ratings screen (Optional)

Users can add their own review and rating for a product.
#### Social sharing screen (Optional)

Users can share information about a product on their social networks, such as Facebook or Twitter.

### 3. Navigation

#### Tab navigation (Tab to Screen):

Home Page (Product Feed)
User profile screen
#### Flow navigation (Screen to Screen):

- Login/Registration Screen
  - **=>** Home Page (Product Feed) after successful login or registration
- Home Page (Product Feed)
  - **=>** Product details page (when clicking on a product)
  - **=>** Product search page (when using search function)
- Product search page
  - **=>** Product details page (when you click on a product from the search results)
- Product details page
  - **=>** Shopping Cart Page (when adding the product to shopping cart from the details page)
- Shopping Cart Page
  - **=>** Payment page (when proceeding with the purchase)
- User profile screen
  - **=>** Favorite products screen (optional) (when selecting the option to view favorite products)
  - **=>** Product reviews and ratings screen (optional) (when selecting the option to view reviews and ratings)
  - **=>** Social sharing screen (optional) (when selecting the option to share a product on social networks)

Wireframes
![desing](https://github.com/Nelivet/App-EcoMarket/blob/27da49bc557e6ca421034d56b9920d48cfc893b0/Captura%20de%20Pantalla%202024-04-16%20a%20la(s)%2001.30.00.png)

[BONUS] Digital Wireframes & Mockups
[BONUS] Interactive Prototype 
-------------------------------------------------- -------------------------------------------------- -------------------------------------------------- ------------------------
## Sprint Planning and Development

The development of this project will be organized in sprints, periods of time during which specific features of the application will be worked on. The sprint planning is detailed below:

### Main Features:
1. Home screen showing products for sale.
2. Product details screen.
3. Product search functionality by category or keyword.
4. Functionality of adding products to the shopping cart.
5. Local data persistence functionality to save favorite products.

### Breakdown into Sprints:
1. **Sprint 1: Initial setup and project structure**
    - Configure the development environment. [x]
    - Create the basic structure of the project. [x]
    - Configure the login interface UI. [x]

2. **Sprint 2: Home Screen Design and Implementation**
    - Design the home screen user interface.
    - Implement the logic to display products for sale.
    - Allow navigation to the product details screen.

3. **Sprint 3: Product Search Functionality**
    - Design the user interface for the product search function.
    - Implement logic to search for products by category or keyword.

4. **Sprint 4: Implementation of shopping cart functionality**
    - Design the user interface for the shopping cart.
    - Implement the logic to add products to the shopping cart.
    - Allow viewing and editing of the shopping cart.

5. **Sprint 5: Local data persistence and favorite products**
    - Implement local data persistence to save favorite products.
    - Allow users to mark products as favorites.
    - Improve user interface to show favorite products.
#### Video
https://www.loom.com/share/5619f974a8f1412ea5d29951f89b26af?sid=ad752d83-8185-42c0-a13b-bd3c3ffa4755
-------------------------------------------------- -------------------------------------------------- -------------------------------------------------- ------------------------
Schema
[This section will be completed in Unit 9]

Models
[Add table of models]

Networking
[Add list of network requests by screen ]
[Create basic snippets for each Parse network request]
[OPTIONAL: List endpoints if using existing API such as Yelp]
  

