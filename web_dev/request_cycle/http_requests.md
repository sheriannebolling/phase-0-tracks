What are some common HTTP status codes?

200 OK (Request has succeeded)
300 Multiple Choices (Resource has several choices that match and can't resolve- could be multiple with same name)
301 Moved Permanently (New permanent URI)
302 Found (Continue to use the request uri - resource temporarily under a different one)
304 Not Modified
307 Temporary Redirect (Continue to use the request uri - resource temporarily under a different one)
400 Bad Request (Request not understood - syntax issue)
401 Unauthorized (Request requires authentication - include a WWW-Authenticate header field containing a challenge applicable to the requested resource)
403 Forbidden (Refusal to fulfill request)
404 Not Found (Nothing found that matches the request URI)
410 Gone (Resource is no longer available)
500 Internal Server Error (unexpected condition - request can not be fulfilled)
501 Not Implemented (Server is not capable of supporting functionality required to fulfill request)
503 Service Unavailable (Your server is unable to handle request)
550 Permission denied (The account you are logged into does not have permission to perform the action)

What is the difference between a GET request and a POST request? When might each be used?

GET requests 

request data from resource
(name/value pairs) sent in the URL
can be bookmarked
has length restrictions
can be cached
remains in the browser history
should never be used when dealing with sensitive data
should be used only to retrieve data


Post requests 

submit data to be processed to resource
(name/value pairs) sent in the HTTP message body
cannot be bookmarked
no restrictions on data length
never cached
does not remain in the browser history

Other HTTP Request Methods

HEAD - Same as GET but returns only HTTP headers and no document body
PUT	- Uploads a representation of the specified URI
DELETE	- Deletes the specified resource
OPTIONS	- Returns the HTTP methods that the server supports
CONNECT	- Converts the request connection to a transparent TCP/IP tunnel

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a bit of data that a server sends to the browser. The browser may store it and send it with the next request that goes to that same server. It may allow that user to stay logged in and remembers information for protocols. This can be useful for personalization and tracking.


