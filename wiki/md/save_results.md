# POST /api/results.json
---
### Parameters (POST)
---
key|description|example|required
-|-|-|
auth_token|token to login|123aswedt|yes
answer|type Json||yes
quiz_id|test lesson ID||yes

### Requirement
* Must login before use api
* Need an token valid
 
### Example
<pre>
$ curl http://localhost:3000/api/results.json -X POST {'auth_token':'Yh4Qqo56TM774ibAw2f9','answer':[array json data], 'quiz_id':12}
</pre>

### Response
---

#### Normal
---
http status code: 200
#### Json Data
<pre>
[
  {
    "questions_id": "1",
    "question": "Question #1 for Test #1",
    "answer": 5
  },
  {
    "questions_id": "2",
    "question": "Question #2 for Test #1",
    "answer": 4
  },
  {
    "questions_id": "3",
    "question": "Question #3 for Test #1",
    "answer": 1
  },
  {
    "questions_id": "4",
    "question": "Question #4 for Test #1",
    "answer": 4
  },
  {
    "questions_id": "5",
    "question": "Question #5 for Test #1",
    "answer": 3
  },
  {
    "questions_id": "6",
    "question": "Question #6 for Test #1",
    "answer": 2
  },
  {
    "questions_id": "7",
    "question": "Question #7 for Test #1",
    "answer": 1
  }
]
</pre>