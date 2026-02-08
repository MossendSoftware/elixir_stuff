My Plan
--

Components:

  - receive requests
  - return responses

We can ignore for a second the fact that we need to run our REST api on an HTTP server. WE can pretend that the HTTP server is already operational. That is, we don't need to parse any HTTP messages. I suppose the first question is:

  (0) how does an HTTP message carry a JSON? I.e., where is the JSON payload?

  An http message is made up of a header, which contains metadata information and a body. If our header contains:

    content-type: application/json

  then we will be able to send JSON with it. This is what a message like that looks like:

    POST /echo/post/json HTTP/1.1
    Host: reqbin.com
    Accept: application/json
    Content-Type: application/json
    Content-Length: 81

    {
      "Id": 78912,
      "Customer": "Jason Sweet",
      "Quantity": 1,
      "Price": 18.00
    }


An http message is just a file. So, all we must be concerned with is the JSON data inside the message, assumign the content-type: application/json is there. We will assume that all our messages coming into the server are of this type. 

The first thing I am going to do is to create a parser which parses an http message. 



