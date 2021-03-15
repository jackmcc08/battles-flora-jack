# battles-flora-jack
Week 3 Afternoon challenge - Monday

browser - client
servers

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
