# Address API Spec

## Get Address API

Endpoint : GET /api/v1/contacts/:contactId/addresses/:addressId

Headers:

- Authorization : token

Response Body Success :

```json
{
  "data": {
    "id": 1,
    "street": "Manuk Dadali 1",
    "city": "Sukamaju",
    "province": "Yogyakarta",
    "country": "Indonesia",
    "postal_code": "56672"
  }
}
```

Response Body Error :

```json
{
  "errors": "contact is not found"
}
```

## Create Address API

Endpoint : POST /api/v1/contacts/:contactId/addresses/

Headers:

- Authorization : token

Request Body :

```json
{
  "street": "Manuk Dadali 1",
  "city": "Sukamaju",
  "province": "Yogyakarta",
  "country": "Indonesia",
  "postal_code": "56672"
}
```

Response Body Success :

```json
{
  "data": {
    "id": 1,
    "street": "Manuk Dadali 1",
    "city": "Sukamaju",
    "province": "Yogyakarta",
    "country": "Indonesia",
    "postal_code": "56672"
  }
}
```

Response Body Error :

```json
{
  "errors": "country is required"
}
```

## Update Address API

Endpoint : PUT /api/v1/contacts/:contactId/addresses/:addressId

Headers:

- Authorization : token

Request Body :

```json
{
  "street": "Manuk Dadali 1",
  "city": "Sukamaju",
  "province": "Yogyakarta",
  "country": "Indonesia",
  "postal_code": "56672"
}
```

Response Body Success :

```json
{
  "data": {
    "id": 1,
    "street": "Manuk Dadali 1",
    "city": "Sukamaju",
    "province": "Yogyakarta",
    "country": "Indonesia",
    "postal_code": "56672"
  }
}
```

Response Body Error :

```json
{
  "errors": "country is required"
}
```

## List Addresess API

Endpoint : GET /api/v1/contacts/:contactId/addresses/

Headers:

- Authorization : token

Response Body Success :

```json
{
  "data": [
    {
      "id": 1,
      "street": "Manuk Dadali 1",
      "city": "Sukamaju",
      "province": "Yogyakarta",
      "country": "Indonesia",
      "postal_code": "56672"
    },
    {
      "id": 1,
      "street": "Manuk Dadali 1",
      "city": "Sukamaju",
      "province": "Yogyakarta",
      "country": "Indonesia",
      "postal_code": "56672"
    }
  ]
}
```

Response Body Error :

```json
{
    "errors" : "contact is not found"
}
```

## Delete Address API

Endpoint : DELETE /api/v1/contacts/:contactId/addresses/:addressId

Headers:

- Authorization : token


Response Body Success :

```json
{
    "data" : "ok"
}
```

Response Body Error :

```json
{
    "errors" : "contact is not found"
}
```
