---
sidebar_position: 3
---

# How to use relinker server

You can use RelinkerServer by creating an instance of that class using:

```js
createRelinkerServer(PORT, OPTIONS);
```

Here is an example:

```js
const Relinker = require("relinker"); // Require the application
const server = Relinker.createRelinkerServer(8080, { // Port and options
    path: "/api/link" // Link path
});
```

The Class has:

```
> Fields:
>>> port
>>> options
>>> app

> Functions:
>>> obtainRoutes
>>> listen
```

Time to make the app work. You can simple do this by calling the listen function in the RelinkerServer class.

```js
// continued from the example above
server.listen(); // Doesn't need port as a param because it's already defined in the constructor
```

Currently the application will listen to the port provided above and will create endpoints to the path given above which is GET, POST endpoints.  

Let's continue to the client for more info about how to link the account.
