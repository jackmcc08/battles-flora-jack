# battles-flora-jack
Week 3 Afternoon challenge - Monday

On Monday - got the end of challenge 13 Using Forms
Tuesday - jack and emma pairing

# 1. The Web: An Introduction

- [x] Installed httpie
- [x] From the command line, use HTTPie to make a request to 'http://makersipsum.herokuapp.com'
        - acts as a text based browser
- [x] Explain to your partner what you see.
        - text - content of the page (in its html & css code - i.e. not displayed graphically) & the connection & server information.
- [x] Explain to your partner:
- [x] What the "client" is in this situation.
        - The command line
- [x] What the "server" is in this situation.
        - WEBrick/1.3.1 (Ruby/2.0.0/2015-04-13)
- [x] Repeat the same process in a browser.
        - It looks prettier

# 2. The Hypertext Transfer Protocol

 - [x] Use HTTPie's "-v" flag and make a request to 'http://makersipsum.herokuapp.com/'.
        - "-v" flag to output 'verbose' option i.e. more information, specifically the request
 - [x] Divide what you see into three sections:
 - [x] The request - client side (HTTPie)
 - [x] The response headers - server side
 - [x] The body of the response - server side
 - [x] For each of the above, explain to your partner which side of the client-server relationship they originate from.

# 3. HTTP: Parameters

- [x] Consider this URL: http://www.example.com/home?name=Bob&age=21. Identify the following:
- the query string
- the number of parameters in the query string
- the keys.
- the values.
- the conventions used to format query strings.
- [x] Visit 'http://makersipsum.herokuapp.com/' in the browser. Pass your name as a parameter, using "name" as the key. The page should greet you.
- [x] Revisit 'http://makersipsum.herokuapp.com/' without passing a parameter. Explain to your pair what the difference in behaviour tells you about the way the server treats the data passed as a parameter.


# 4. HTTP: GET / POST Requests

- [x] Use HTTPie's "-v" flag and make a request to 'http://getpostworkout.herokuapp.com/'.
- [x] Study the request. Decide with your pair whether it was a GET or a POST request.
      - Know its a GET or POST because of the start of the request headers
- [x] Use HTTPie and send your name as data to 'http://getpostworkout.herokuapp.com/': `http -f POST https://getpostworkout.herokuapp.com/ name=YourNameHere`
- [x] Visit 'http://getpostworkout.herokuapp.com/'. Explain to your partner what has happened to the data that you sent.
      - it got added to the list of names
- [x] Make the same "POST" request again, this time with the `-v` flag.
- [x] Explain to your partner what was different about the request headers as compared to the first step.
      - it added in content information about what we were sending.

# 5. Sinatra: Getting Started

- [x] Create a project directory with the `sinatra` gem installed via a Gemfile (if you use Ruby > 3.0, make sure the gem `webrick` is also installed globally)
- [x] Create a file for your application, `app.rb`.
- [x] Require `sinatra` at the top of the file.
- [x] Run the app from the command line: `ruby app.rb`.
- [x] Explain to your partner the significance of what you see in the terminal
    - Saw the gets requests from the browser
- [x] Use a browser to visit your application at `http://localhost:4567`

# 6. Sinatra: Defining a route

- [x] Use Sinatra's error message above to define a route that responds to incoming requests to the / path
- [x] Return the string "hello!" from this route
- [x] Check that your route works by visiting your application in the browser at the correct address.
- [x] Are you able to visit your application from a different computer? Why/why not?
        - No...

# 7. Sinatra: Start and Restart

- [x] Define a second route, get '/secret'. Have it respond with a message of your choosing.
- [x] Visit the new route in the browser. Do you see the message you wrote? If not, move on.
- [x] Kill the app on the command line with ctrl-c and run it again.
- [x] Visit the new route in the browser again. Do you see the message you wrote this time?
- [x] Manually restarting the server every time you change your code is going to get painful. Install and run your server using the shotgun gem instead. BEWARE, when you are using shotgun with Sinatra, each time your server restarts your sessions will be lost, to solve this problem you need to follow these instructions. You can also find these in the Shotgun Documentation under Caveats.
        - don't know what set :secret_sessions 'string' does
        - we changed ruby 2.7.2 to support shotgun
- [x] Define a few more routes. Without killing the server, check if the routes are visitable.

# 8. Returning HTML

- [x] Define a new route, called get '/cat'.
- [x] Using this image: http://bit.ly/1eze8aE , return an HTML string from the route that displays a cat photograph surrounded by a red dashed border.

- ADDD QUOTE MARKS AROUND YOUR HTML STRINGS!!!


# 9. Views

- [x] Create a directory called views, within the same directory as your app.rb file
- [x] Create an index.erb file (a 'view file') within the views directory
- [x] Move the HTML string you wrote in app.rb ('routing file') into the view file you just created
        - with NO quotation marks now!!
- [x] Replace the HTML string in the routing file with the statement erb(:index)
- [x] Restart your server, and visit your previously-working route
- [x] Explain to your pair partner what you see.

# 10. erb

- [x] Add an h1 tag to your index.erb view file, with the words 'My name is ' inside it.
- [x] At the end of the h1 tag (before it closes), append an empty interpolated Ruby Expression using <%= %> ('ERB tags')
        - you wouldn't want to have many lines of code embedded!
- [x] Inside these ERB tags, write an expression that samples a random name from the following array: ["Amigo", "Misty", "Almond"]
- [x] Restart your server and visit the path associated with the cat route.

# 11. Keeping Views Clean

- [x] Move the expression for generating a random name into the route for your view, assigning it to an _instance variable_
- [x] Substitute the expression within the view for the instance variable instead
- [x] Visit the webpage to ensure nothing has gone wrong.

    - view logic should be limited to light conditional (if/else) and light iterators (each)
    - controller you set up with
      - @instance_variable = ruby_code
      - erb(:index)
    - in view page
      - <h1> <%= @instance_variable %> </h1>


# 12. Introducing Params

- [x] Rename your `/cat` route to `/random-cat`.
- [x] Build a new route, `/named-cat`, that does the same as `/random-cat`.
- [x] Instead of setting the `@name` instance variable equal to a sampled array, set it equal to `params[:name]`
- [x] Visit your route from a browser
- [x] Explain to your pair partner what you see
    - no parameter was added so nothing is displayed on the page
- [x] In the browser URL, add the following **query string** after the `/named-cat` path: `?name=Ashley`, and visit that page
- [x] Explain to your pair partner what you see
    - this provides a param to the controller and inputs it into the page
- [x] In the line before you assign your `@name` variable, print (`p`) the `params` of the request
- [x] Restart your server and refresh the page. Check the terminal (**server logs**) and explain to your pair partner what you see
- [x] Change parts of the **query string** within the URL bar of your browser until you can fully explain how it works to your pair partner.


# 13. Using forms

- [x] Add a `form` to the view rendered by the `/named-cat` route
- [x] Set the form `action` attribute to the `/named-cat` path
- [x] Add an `input` element within the form, with a `type` attribute of `text` and a `name` attribute of `name`
- [x] Add another `input` element within the form, with a `type` attribute of `submit` and a `value` attribute of `Submit`
- [x] Visit the page in your browser. Use the form to change the name of the cat
- [x] Using `<% if %>` within your view, conditionally render the form only if a user has not entered a name (i.e. if `@name` is empty)
- [x] Explain to your pair partner how the attributes of inputs in the form affect the query string in the URL bar when you submit the form
- [x] Modify some of the attributes of the inputs (e.g. the `name` attribute) and explain to your pair partner how this affects the query string in the URL bar when you submit the form
- [x] Print the incoming `params` to the server logs each time you visit the route
- [x] Explain to your pair partner how modifying input attributes (e.g. `name`) affects the incoming `params` hash

# 14. POSTed params

- [x] Write a new `get` route that renders only the cat-naming `form`
    - created a get route for the form which accessed the form
- [x] Add a `method` attribute to your `form` element, with the value `"post"`
    - this method goes into the html code
- [x] Change your `/named-cat` route to use `post` instead of `get`
    - in the router this becomes a post, cannot be accessed directly via Url
- [x] Interact with your application
- [x] Observe the URL query string when you submit the form
    - There is one
- [x] Observe the printed `params` when you submit the form

- [x] Explain your observations to your pair partner.

DONE #

# 15. Using the Chrome DevTools

- [x] Open the Chrome DevTools within your browser
- [x] Switch to the Network pane of the DevTools
- [x] Interact with your application, explaining to your pair partner what is happening in the DevTools when you do so
    - GET 200 to the naming form
    - POST 200 to the named cat
    - Get 200 for the picture
- [x] Locate the method for each request
- [x] Locate the form data for `POST` requests
  - At the bottom - will be part of the header?

# 16 Testing with an Automated Browser and Capybara

- [x] Make sure you have installed Firefox browser on your machine (you can use `brew cask install firefox` if you haven't).
- [x] List `capybara` and `selenium-webdriver` in a Gemfile.
- [x] make sure bundle install works - you may need to manually install Xcode if you haven't already.
- [x] install Firefox GeckoDriver, `brew install geckodriver`. If Firefox does not work for you after installing GeckoDriver, it is also possible to use [gem 'chromedriver-helper'](https://github.com/flavorjones/chromedriver-helper).
- [x] Open up *PRY* and require both `capybara/dsl` and `selenium-webdriver`.
- [x] Within the REPL, `$ include Capybara::DSL`.
- [x] [Set Capybara's default driver](https://github.com/jnicklas/capybara#selecting-the-driver) to be selenium.
- [x] Use Capybara's `visit` command to take the automated browser to [http://capybaraworkout.herokuapp.com/](http://capybaraworkout.herokuapp.com/), and use the `click_link` command to click 'Start Workout!'
- [x] Refer to a [Capybara cheat sheet](https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf) and complete the Capybara workout.
- [x] Explain to your pair partner what jobs `capybara` and `selenium-webdriver` do.
