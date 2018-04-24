# Mario's Produce 

## Online catalog of products for a local produce store

#### By _**Misha Petrov**_

![view 1](https://i.imgur.com/K4JZpiS.png)

![view 2](https://i.imgur.com/3Rl1phM.png)

## Setup/Installation Requirements

#### To deploy on local machine: 

* Clone the repository to your local computer.
* In terminal, navigate to the project's directory
* In terminal, execute _`$ bundle install`_
* In terminal, execute _`$ rake db:create`_ to create a database
* In terminal, execute _`$ rake db:test:prepare`_ to create a test database
* In terminal, execute _`$ rake db:migrate`_ to create necessary tables in DB
* In terminal, execute _`$ rake db:seed`_ to fill the database with demo content
* In terminal, type _`$ rails s`_ to build an app on a local computer
* In browser, navigate to localhost:3000/

## Specifications (use case scenarios)

* Site admins can add, update and delete new products.
* Users can click an individual product to see its detail page
* Users are able to add a review to a product.
* Site filters and displays products with the most reviews.
* Site filters and displays three most recently added products.
* Site filters and displays all products made in the USA for buyers that want to buy local products.

## Support and contact details

_modesau@gmail.com_

## Technologies Used

Ruby, Rails, psql, HTML, SASS, Materialize

### License

*Licensed under MIT license*

Copyright (c) 2018 **_Misha Petrov_**
