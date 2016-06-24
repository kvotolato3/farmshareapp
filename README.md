Farm Share Signup

Sign up to receive weekly produce fresh from the farm! Online ordering and payment system for CSA (Community Supported Agriculture) farms.

Project 3 for General Assembly Web Development Immersive Program

Demo: [http://redfirefarmapp.herokuapp.com/](http://redfirefarmapp.herokuapp.com/)
- When testing the checkout functionality, you can enter this test credit card info:
- Credit Card No: 4242-4242-4242-4242
- Expiration: Any valid month and year, as long as it is in the future
- CVC: any 3-digit code

Description: For my final project at General Assembly, I experimented with html forms using Rails and Handlebars.js.

- [Stripe](https://github.com/stripe/stripe-ruby)
- [Handlebars.js](http://handlebarsjs.com/)
- [Twitter Bootstrap](http://getbootstrap.com/)
- [Rspec](https://github.com/rspec/rspec-rails)
- [JQuery Validation](https://jqueryvalidation.org/)


Features:
- Users can select seasonal shares and enter their own prices
- Users can select extra share options, pickup location, and payment plan
- Users can make payments and see confirmation


Local deployment:
- Clone this repository into your projects folder
- Run bundle install
- Run rake db:create
- Run rake db:setup
- Add Stripe API keys to the your project (see below instructions)

Setting up Stripe API keys on your local environment:
- Go to [www.stripe.com](http://www.stripe.com) and create an account
- Go into your account settings (under Your Account) and click on API Keys.
- In the project root directory, create a new file named .env and add the following lines to it:

```
PUBLISHABLE_KEY=[paste your Test Publishable Key here]
SECRET_KEY=[paste your Test Secret Key here]
```

- Open the .gitignore file and add `.env` to it

- In the config/initializers directory, add a file named "stripe.rb" and add this code:

```
  Rails.configuration.stripe = {
    :publishable_key => ENV['PUBLISHABLE_KEY'],
    :secret_key      => ENV['SECRET_KEY']
  }

  Stripe.api_key = Rails.configuration.stripe[:secret_key]
```

- Once these steps are completed, you will be able to use the "Pay With Credit Card" button
on the Review order page.

Ruby version: 2.2.2p95
