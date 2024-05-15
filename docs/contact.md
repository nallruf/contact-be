# Contact API Spec

## Get Contact API
Endpoint :  GET /api/v1/contacts

Headers: 
- Authorization : token

Response Body Success:

```json
{
    "data" : {
        "id" : 1,
        "frist_name" : "zainal",
        "last_name" : "abidin",
        "email" : "nalzaiabidin@gmail.com",
        "phone" : "334"
    }
}
```

Response Body Error:

```json
{
    "errors" : "Contact is not found"
}
```
## Create Contact API
Endpoint :  POST /api/v1/contacts

    Headers: 
    - Authorization : token

Request Body:

```json
{
    "frist_name" : "zainal",
    "last_name" : "abidin",
    "email" : "nalzaiabidin@gmail.com",
    "phone" : "334"
}
```

Response Body Success:

```json
{
    "data" : {
        "id" : 1,
        "frist_name" : "zainal",
        "last_name" : "abidin",
        "email" : "nalzaiabidin@gmail.com",
        "phone" : "334"
    }
}
```

Response Body Error:

```json
{
    "errors" : "Email is not valid format"
}
```


## Search Contact API
Endpoint :  GET /api/v1/contacts

Headers: 
- Authorization : token

Query params:
- name : Search by first_name or last_name, using like, optional
- email : Search by email using like, optional
- phone : Search by phone using like, optional
- page : number of page, default 1
- size : size per page, default 10


Response Body Success:

```json
{
    "data" : [
    {
        "id" : 1,
        "frist_name" : "zainal",
        "last_name" : "abidin",
        "email" : "nalzaiabidin@gmail.com",
        "phone" : "334"
    }, {
        "id" : 2,
        "frist_name" : "zainal",
        "last_name" : "abidin",
        "email" : "nalzaiabidin@gmail.com",
        "phone" : "334"
    }
    ],
    "paging" : {
        "page" : 1,
        "total_page" : 10,
        "total_item" : 30,
    }
}
```

Response Body Error:

```json
{
    
}
```

## Update Contact API
Endpoint :  PUT /api/v1/contacts/:id

Headers: 
- Authorization : token

Request Body:

```json
{
    "frist_name" : "zainal",
    "last_name" : "abidin",
    "email" : "nalzaiabidin@gmail.com",
    "phone" : "334"
}
```

Response Body Success:

```json
{
    "data" : {
        "id" : 1,
        "frist_name" : "zainal",
        "last_name" : "abidin",
        "email" : "nalzaiabidin@gmail.com",
        "phone" : "334"
    }
}
```

Response Body Error:

```json
{
    "errors" : "Email is not valid format"
}
```

## Delete Contact API
Endpoint :  DELETE /api/v1/contact

Headers: 
- Authorization : token


Response Body Success:

```json
{
    "data" : "ok"
}
```

Response Body Error:

```json
{
    "errors" : "Contact is not found"
}
```