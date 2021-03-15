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
