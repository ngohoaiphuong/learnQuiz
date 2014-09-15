# POST /api/login.json
---
### Parameters (POST)
---
key|description|example|required
-|-|-|
email|email to login|sample@exmaple.com|yes
password|length >= 8|12345678|yes

### Response
---
#### Normal
---
http status code: 200
#### Admornal
----
http status code: 401

<pre>
{
   error: "login failure"
}
</pre>





