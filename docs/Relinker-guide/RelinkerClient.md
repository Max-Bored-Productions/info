---
sidebar_position: 4
---

# RelinkerClient

Here we have the client side which your application would request the code and send a request to validate it.  

You would require the package as the first thing you should do.

```js
const Relinker = require("relinker");
```

Secondly, you would initiate a new `RelinkerClient` by using the `createRelinkerClient` function

```js
const client = Relinker.createRelinkerClient(URL); // replace the URL with the server url
```

Thrid after initaiting, you would generate an authentication code using

```js
await client.generateAuthenticationCode(); // you will need to put this in an async function.
```

This would return a Promise of a `AuthenticationData`.  

To validate the code use:

```js
await client.validate(authData); // replace authData with authenticationData class generated from above
```

This will return a boolean value either if it's accepted or not.

You can also authentication without the `AuthenticationData` Class by using

```js
await client.validateCode(code);
```

This will validate the code without the metadata body within the authentication data.
