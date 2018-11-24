## Dollar Exchange Rate

Here are the tests applied for ensure that all the application is running very well:
|         Resource       |CONTROLLER                          |Description                         |
|----------------|-------------------------------|-----------------------------|
|Response|:sucess            |Return code 200            |
|Template          |:index            |Reder index page            |
|Layout          |layouts/application|Setup the default layout|

---
|Check out                |VIEW                          |TAG                        |
|----------------|-------------------------------|-----------------------------|
|OK|Dollar            |title            |
|OK|USD |strong            |
|OK|BRL|strong|

---

|Work?               |ROUTES                          |Parameter                        |
|----------------|-------------------------------|-----------------------------|
|Yeah|root_path            |controller->action           |
|Yeah|get method |reconize path           |
---
|Return?                |HTTP                         |CONTENT                        |
|----------------|-------------------------------|-----------------------------|
|Yes|body            |utf-8           |
|Yes|body |width=device-width, initial-scale=1            |
|Yes|content type|text/html|

---
|Correct?                |API                         |Check                        |
|----------------|-------------------------------|-----------------------------|
|Yes|get response            |200          |
|Yes|body |present?            |
|Yes|JSON parse|present?|
