# GET /api/tests.json
---
### Parameters (GET)
---
key|description|example|required
-|-|-|
auth_token|token to login|123aswedt|yes

### Requirement
* Must login before use api
* Need an token valid
 
### Example
<pre>
$ curl http://localhost:3000/api/tests.json?auth_token=Yh4Qqo56TM774ibAw2f9
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
        "id": 100,
        "name": "Test #10",
        "description": "Description #10",
        "questions": [
            {
                "id": "1",
                "question": "Question #1 for Test #10",
                "description": "Description #1 for Test #10",
                "options": [
                    {
                        "option": "Option #1 for Question #1",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #1",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #1",
                        "answer": false
                    },
                    {
                        "option": "Option #4 for Question #1",
                        "answer": true
                    },
                    {
                        "option": "Option #5 for Question #1",
                        "answer": false
                    }
                ]
            },
            {
                "id": "2",
                "question": "Question #2 for Test #10",
                "description": "Description #2 for Test #10",
                "options": [
                    {
                        "option": "Option #1 for Question #2",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #2",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #2",
                        "answer": false
                    }
                ]
            },
            {
                "id": "3",
                "question": "Question #3 for Test #10",
                "description": "Description #3 for Test #10",
                "options": [
                    {
                        "option": "Option #1 for Question #3",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #3",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #3",
                        "answer": false
                    }
                ]
            },
            {
                "id": "4",
                "question": "Question #4 for Test #10",
                "description": "Description #4 for Test #10",
                "options": [
                    {
                        "option": "Option #1 for Question #4",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #4",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #4",
                        "answer": false
                    },
                    {
                        "option": "Option #4 for Question #4",
                        "answer": false
                    }
                ]
            },
            {
                "id": "5",
                "question": "Question #5 for Test #10",
                "description": "Description #5 for Test #10",
                "options": [
                    {
                        "option": "Option #1 for Question #5",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #5",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #5",
                        "answer": false
                    }
                ]
            },
            {
                "id": "6",
                "question": "Question #6 for Test #10",
                "description": "Description #6 for Test #10",
                "options": [
                    {
                        "option": "Option #1 for Question #6",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #6",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #6",
                        "answer": false
                    },
                    {
                        "option": "Option #4 for Question #6",
                        "answer": false
                    }
                ]
            },
            {
                "id": "7",
                "question": "Question #7 for Test #10",
                "description": "Description #7 for Test #10",
                "options": [
                    {
                        "option": "Option #1 for Question #7",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #7",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #7",
                        "answer": false
                    },
                    {
                        "option": "Option #4 for Question #7",
                        "answer": false
                    }
                ]
            },
            {
                "id": "8",
                "question": "Question #8 for Test #10",
                "description": "Description #8 for Test #10",
                "options": [
                    {
                        "option": "Option #1 for Question #8",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #8",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #8",
                        "answer": false
                    },
                    {
                        "option": "Option #4 for Question #8",
                        "answer": true
                    },
                    {
                        "option": "Option #5 for Question #8",
                        "answer": false
                    }
                ]
            }
        ]
    },
    {
        "id": 99,
        "name": "Test #9",
        "description": "Description #9",
        "questions": [
            {
                "id": "1",
                "question": "Question #1 for Test #9",
                "description": "Description #1 for Test #9",
                "options": [
                    {
                        "option": "Option #1 for Question #1",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #1",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #1",
                        "answer": true
                    },
                    {
                        "option": "Option #4 for Question #1",
                        "answer": true
                    }
                ]
            },
            {
                "id": "2",
                "question": "Question #2 for Test #9",
                "description": "Description #2 for Test #9",
                "options": [
                    {
                        "option": "Option #1 for Question #2",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #2",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #2",
                        "answer": false
                    },
                    {
                        "option": "Option #4 for Question #2",
                        "answer": true
                    },
                    {
                        "option": "Option #5 for Question #2",
                        "answer": false
                    }
                ]
            },
            {
                "id": "3",
                "question": "Question #3 for Test #9",
                "description": "Description #3 for Test #9",
                "options": [
                    {
                        "option": "Option #1 for Question #3",
                        "answer": true
                    },
                    {
                        "option": "Option #2 for Question #3",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #3",
                        "answer": false
                    }
                ]
            },
            {
                "id": "4",
                "question": "Question #4 for Test #9",
                "description": "Description #4 for Test #9",
                "options": [
                    {
                        "option": "Option #1 for Question #4",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #4",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #4",
                        "answer": false
                    },
                    {
                        "option": "Option #4 for Question #4",
                        "answer": false
                    }
                ]
            },
            {
                "id": "5",
                "question": "Question #5 for Test #9",
                "description": "Description #5 for Test #9",
                "options": [
                    {
                        "option": "Option #1 for Question #5",
                        "answer": true
                    },
                    {
                        "option": "Option #2 for Question #5",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #5",
                        "answer": false
                    },
                    {
                        "option": "Option #4 for Question #5",
                        "answer": false
                    }
                ]
            },
            {
                "id": "6",
                "question": "Question #6 for Test #9",
                "description": "Description #6 for Test #9",
                "options": [
                    {
                        "option": "Option #1 for Question #6",
                        "answer": false
                    },
                    {
                        "option": "Option #2 for Question #6",
                        "answer": false
                    },
                    {
                        "option": "Option #3 for Question #6",
                        "answer": false
                    },
                    {
                        "option": "Option #4 for Question #6",
                        "answer": true
                    }
                ]
            }
        ]
    }
]
</pre>