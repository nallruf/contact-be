# User API Spec

## Register User API

Endpoint : POST api/v1/users

Request Body :

```json
{
    "username" : "je",
    "password" : "test123",
    "name" : "jee"
}
```

Response Body Success :

```json
{
    "data" : {
        "username" : "je",
        "name" : "jee"
    }
}
```
Response Body Error :
```json
{
    "errors" : "Username already registered"
}
```

## Login User API

Endpoint : POST api/v1/users/login

Request body :

```json
{
    "username" : "jee",
    "password" : "test123"
}
```

Response Body Success :
```json
{
    "data" : {
        "token" : "unique-token"
    }
}
```
```
Response Body Error :
```json
{
    "errors" : "Username or Password wrong"
}
```

## Update User API

Endpoint: PATCH     /api/v1/users/curent

Headers:
- Authorization : token

Request Body:

```json
{
    "name" : "jee disini", //optional
    "password" : "new password" //optional
}
```

Response Body Success:

```json
{
    "data" : {
        "username" : "je",
        "name" : "jee disini"
    }
}
```

Response Body Error :
```json
{
    "errors" : "Name length max 100"
}
```



## Get User API

Endpoint: GET /api/v1/users/curent

Headers:
- Authorization : token


Response Body Success:

```json
{
    "data" : {
        "username" : "je",
        "name" : "jee"
    }
}
```

Response Body Error :
```json
{
    "errors" : "Unauthorized"
}
```

## Logout User API

Endpoint: DELETE /api/v1/users/logout

Headers:
- Authorization : token

Response Body Success:

```json
{
    "data" : "OK"
}
```

Response Body Error:

```json
{
    "erros" : "Unauthorized"
}
```
