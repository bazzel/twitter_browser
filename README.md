# Twitter Browser Example

Some time ago I watched the [Sproutcore Training video's](https://vimeo.com/user7276077/videos) presented by Greg Moeck. In part 1 of the training Greg builds the [Twitter Browser](https://github.com/gmoeck/twitter_browser).
Since then we have [ember.js](http://emberjs.com) which, as you may know, initially started as Sproutcore 2.
Many concepts in this training are still applicable to ember.js and I think this still makes a good resource if you want to get started with ember.js.
To get familiar with ember.js, I decided to build the Twitter Browser using ember.js.

The application uses Ruby 1.9.x and a [Rails 3.2.x](http://rubyonrails.org/) back-end, mainly for its asset pipeline which makes organizing your JS files extremely easy. Also, it uses the [Twitter](https://github.com/sferik/twitter) gem to retrieve user- and tweetdata from Twitter.

I'm using [Ember Data](https://github.com/emberjs/data) to retrieve data from the server.

# Getting Started
1. Clone this repo

 `git clone https://github.com/bazzel/twitter_browser.git`
2. Navigate to the application directory

 `cd twitter_browser`
3. Install the gems

 `bundle install`
4. Create the (SQLite) database

 `rake db:create`
5. Run the migrations

 `rake db:migrate`
6. Start the server

 `rails s`
7. Open a browser and navigate to http://localhost:3000

# More info
## Location of JS files
Although the application uses the [ember-rails](https://github.com/emberjs/ember-rails) gem, it only uses it for pre-compiling the handlebars templates.
The required JS files for ember and ember data are built manually and located in **vendor/assets/javascript**.
Application logic is located in **app/assets/javascripts** (this is the suggested location according to Rails' [assets pipeline](http://guides.rubyonrails.org/asset_pipeline.html)).

