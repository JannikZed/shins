---
title: greple API v1
language_tabs:
  - shell: Shell
toc_footers:
  - >-
    <a href="https://mermade.github.io/shins/asyncapi.html">See AsyncAPI
    example</a>
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<!-- Generator: Widdershins v3.6.6 -->
<h1 id="greple-api">greple.ai API v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

This is the official documentation for the greple people analytics APIs.
Base URLs:

* <a href="https://greple.ai/api/v1">https://greple.ai/api/v1</a>

<a href="http://swagger.io/terms/">Terms of service</a>
Email: <a href="mailto:tech@greple.ai">Support</a> 
License: <a href="http://www.apache.org/licenses/LICENSE-2.0.html">Apache 2.0</a>

# Authentication

- oAuth2 authentication. 

    - Flow: implicit
    - Authorization URL = [https://greple.eu.auth0.com/oauth/token](https://greple.eu.auth0.com/oauth/token)

|Scope|Scope Description|
|---|---|
|read:all|read all greple API endpoints|
|read:jobs | read all job related API endpoints |


* API Key (api_key)
    - Parameter Name: **api_key**, in: header. 

<h1 id="greple-api-jobs">jobs</h1>

The jobtitle related API endpoint. Use it to output values based on jobtitles.

<a href="http://swagger.io">Find out more</a>

## getSimilar

<a id="jobs-getsimilar"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://greple.ai/api/v1/jobbs/getSimilar \
  -H 'Content-Type: application/json' \
  -H 'authorization: Bearer {access-token}'

```


`POST /jobs/getSimilar`

*get similar jobtitles for a requested job*

> Body parameter

```json
{
	"pos": ["string"],
	"neg": ["string"],
	"n": 0
}
```

<h3 id="jobs-getsimilar-parameters">Parameters</h3>

|Parameter|In|Example|Required|Description|
|---|---|---|---|---|
|pos|body|Softwaredeveloper|true|The positive jobtitle that should be searched for|
|neg|body|Java|false|The negative value, that should be excluded |
|n|body|100|true| The amount of results in the output list |

<h3 id="addPet-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Invalid input|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
petstore_auth ( Scopes: write:pets read:jobs )
</aside>


## similarity

<a id="jobs-similarity"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT http://petstore.swagger.io/v2/pet \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer {access-token}'

```



`POST /jobs/similarity`

*Calculate the cosinus distance between two jobtitles. This predicts us, how similar certain jobs are.*

> Body parameter

```json
{
  "input1": "string",
  "input2": "string"
}
```

<h3 id="jobs-similarity-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Pet](#schemapet)|true|Pet object that needs to be added to the store|

<h3 id="updatePet-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid ID supplied|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Pet not found|None|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Validation exception|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
petstore_auth ( Scopes: write:pets read:pets )
</aside>


#### Enumerated Values

|Property|Value|
|---|---|
|status|available|
|status|pending|
|status|sold|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
petstore_auth ( Scopes: write:pets read:pets )
</aside>



#### Enumerated Values

|Property|Value|
|---|---|
|status|available|
|status|pending|
|status|sold|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
petstore_auth ( Scopes: write:pets read:pets )
</aside>


<h1 id="greple-api-personality">personality</h1>

The personality related API endpoint. This greple-api endpoints outputs results of personality analysis

## getdisc

<a id="personality-getdisc"></a>

> Code samples

```shell
# You can also use wget
curl -X GET http://petstore.swagger.io/v2/store/inventory \
  -H 'Accept: application/json' \
  -H 'api_key: API_KEY'

```


`POST /personality/disc`

*Returns the disc score from a written text fragment*

Returns a map of status codes to quantities

> Example responses

```json
{
  "property1": 0,
  "property2": 0
}
```

<h3 id="getInventory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="getInventory-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|
|» **additionalProperties**|integer(int32)|false|No description|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
api_key
</aside>
