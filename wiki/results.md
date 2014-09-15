# GET /api/results.json
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
$ curl http://localhost:3000/api/results.json?auth_token=Yh4Qqo56TM774ibAw2f9
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
        "id": 62,
        "test_date": "2014-09-21T04:31:04Z",
        "test_result": [
            {
                "questions_id": "1",
                "question": "Question #1 for Test #7",
                "answer": 1
            },
            {
                "questions_id": "2",
                "question": "Question #2 for Test #7",
                "answer": 4
            },
            {
                "questions_id": "3",
                "question": "Question #3 for Test #7",
                "answer": 2
            },
            {
                "questions_id": "4",
                "question": "Question #4 for Test #7",
                "answer": 4
            },
            {
                "questions_id": "5",
                "question": "Question #5 for Test #7",
                "answer": 1
            }
        ],
        "user_test": {
            "username": "student1",
            "email": "student1@yopmail.com",
            "role": "Student"
        },
        "lesson_test": {
            "name": "Test #7",
            "description": "Description #7"
        }
    },
    {
        "id": 63,
        "test_date": "2014-09-21T04:31:04Z",
        "test_result": [
            {
                "questions_id": "1",
                "question": "Question #1 for Test #8",
                "answer": 3
            },
            {
                "questions_id": "2",
                "question": "Question #2 for Test #8",
                "answer": 3
            },
            {
                "questions_id": "3",
                "question": "Question #3 for Test #8",
                "answer": 2
            },
            {
                "questions_id": "4",
                "question": "Question #4 for Test #8",
                "answer": 2
            },
            {
                "questions_id": "5",
                "question": "Question #5 for Test #8",
                "answer": 4
            },
            {
                "questions_id": "6",
                "question": "Question #6 for Test #8",
                "answer": 3
            },
            {
                "questions_id": "7",
                "question": "Question #7 for Test #8",
                "answer": 3
            },
            {
                "questions_id": "8",
                "question": "Question #8 for Test #8",
                "answer": 4
            }
        ],
        "user_test": {
            "username": "student1",
            "email": "student1@yopmail.com",
            "role": "Student"
        },
        "lesson_test": {
            "name": "Test #8",
            "description": "Description #8"
        }
    },
    {
        "id": 64,
        "test_date": "2014-09-21T04:31:04Z",
        "test_result": [
            {
                "questions_id": "1",
                "question": "Question #1 for Test #9",
                "answer": 1
            },
            {
                "questions_id": "2",
                "question": "Question #2 for Test #9",
                "answer": 1
            },
            {
                "questions_id": "3",
                "question": "Question #3 for Test #9",
                "answer": 2
            },
            {
                "questions_id": "4",
                "question": "Question #4 for Test #9",
                "answer": 2
            },
            {
                "questions_id": "5",
                "question": "Question #5 for Test #9",
                "answer": 1
            },
            {
                "questions_id": "6",
                "question": "Question #6 for Test #9",
                "answer": 3
            }
        ],
        "user_test": {
            "username": "student1",
            "email": "student1@yopmail.com",
            "role": "Student"
        },
        "lesson_test": {
            "name": "Test #9",
            "description": "Description #9"
        }
    },
    {
        "id": 65,
        "test_date": "2014-09-21T04:31:04Z",
        "test_result": [
            {
                "questions_id": "1",
                "question": "Question #1 for Test #10",
                "answer": 1
            },
            {
                "questions_id": "2",
                "question": "Question #2 for Test #10",
                "answer": 1
            },
            {
                "questions_id": "3",
                "question": "Question #3 for Test #10",
                "answer": 1
            },
            {
                "questions_id": "4",
                "question": "Question #4 for Test #10",
                "answer": 3
            },
            {
                "questions_id": "5",
                "question": "Question #5 for Test #10",
                "answer": 2
            },
            {
                "questions_id": "6",
                "question": "Question #6 for Test #10",
                "answer": 3
            },
            {
                "questions_id": "7",
                "question": "Question #7 for Test #10",
                "answer": 2
            },
            {
                "questions_id": "8",
                "question": "Question #8 for Test #10",
                "answer": 1
            }
        ],
        "user_test": {
            "username": "student1",
            "email": "student1@yopmail.com",
            "role": "Student"
        },
        "lesson_test": {
            "name": "Test #10",
            "description": "Description #10"
        }
    },
    {
        "id": 66,
        "test_date": "2014-09-21T04:31:04Z",
        "test_result": [
            {
                "questions_id": "1",
                "question": "Question #1 for Test #1",
                "answer": 3
            },
            {
                "questions_id": "2",
                "question": "Question #2 for Test #1",
                "answer": 3
            },
            {
                "questions_id": "3",
                "question": "Question #3 for Test #1",
                "answer": 5
            },
            {
                "questions_id": "4",
                "question": "Question #4 for Test #1",
                "answer": 1
            },
            {
                "questions_id": "5",
                "question": "Question #5 for Test #1",
                "answer": 1
            },
            {
                "questions_id": "6",
                "question": "Question #6 for Test #1",
                "answer": 4
            }
        ],
        "user_test": {
            "username": "student1",
            "email": "student1@yopmail.com",
            "role": "Student"
        },
        "lesson_test": {
            "name": "Test #1",
            "description": "Description #1"
        }
    },
    {
        "id": 67,
        "test_date": "2014-09-21T04:31:04Z",
        "test_result": [
            {
                "questions_id": "1",
                "question": "Question #1 for Test #2",
                "answer": 1
            },
            {
                "questions_id": "2",
                "question": "Question #2 for Test #2",
                "answer": 3
            },
            {
                "questions_id": "3",
                "question": "Question #3 for Test #2",
                "answer": 3
            },
            {
                "questions_id": "4",
                "question": "Question #4 for Test #2",
                "answer": 3
            },
            {
                "questions_id": "5",
                "question": "Question #5 for Test #2",
                "answer": 1
            },
            {
                "questions_id": "6",
                "question": "Question #6 for Test #2",
                "answer": 3
            },
            {
                "questions_id": "7",
                "question": "Question #7 for Test #2",
                "answer": 1
            },
            {
                "questions_id": "8",
                "question": "Question #8 for Test #2",
                "answer": 2
            },
            {
                "questions_id": "9",
                "question": "Question #9 for Test #2",
                "answer": 1
            }
        ],
        "user_test": {
            "username": "student1",
            "email": "student1@yopmail.com",
            "role": "Student"
        },
        "lesson_test": {
            "name": "Test #2",
            "description": "Description #2"
        }
    },
    {
        "id": 68,
        "test_date": "2014-09-21T04:31:04Z",
        "test_result": [
            {
                "questions_id": "1",
                "question": "Question #1 for Test #3",
                "answer": 3
            },
            {
                "questions_id": "2",
                "question": "Question #2 for Test #3",
                "answer": 1
            },
            {
                "questions_id": "3",
                "question": "Question #3 for Test #3",
                "answer": 1
            },
            {
                "questions_id": "4",
                "question": "Question #4 for Test #3",
                "answer": 3
            },
            {
                "questions_id": "5",
                "question": "Question #5 for Test #3",
                "answer": 1
            },
            {
                "questions_id": "6",
                "question": "Question #6 for Test #3",
                "answer": 3
            },
            {
                "questions_id": "7",
                "question": "Question #7 for Test #3",
                "answer": 4
            },
            {
                "questions_id": "8",
                "question": "Question #8 for Test #3",
                "answer": 3
            },
            {
                "questions_id": "9",
                "question": "Question #9 for Test #3",
                "answer": 1
            },
            {
                "questions_id": "10",
                "question": "Question #10 for Test #3",
                "answer": 1
            }
        ],
        "user_test": {
            "username": "student1",
            "email": "student1@yopmail.com",
            "role": "Student"
        },
        "lesson_test": {
            "name": "Test #3",
            "description": "Description #3"
        }
    }
]
</pre>