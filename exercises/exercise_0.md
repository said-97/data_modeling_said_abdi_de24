# exercise 1:

## Hospital task

You have this json data, convert it into three tables: Hospital, Department and Doctor. Fill these tables with data. Do this manually and not programmatically.

```json
{
  "hospital": "Sjukhusstock",
  "address": "Drottninggatan 3, Stockholm",
  "departments": [
    {
      "name": "Kardiologi",
      "doctors": [
        { "id": 1, "name": "Dr. Abra Abrahamson" },
        { "id": 2, "name": "Dr. Erika Eriksson" }
      ]
    },
    {
      "name": "Neurologi",
      "doctors": [{ "id": 3, "name": "Dr. Sven Svensson" }]
    }
  ]
}
```

<img src = "../assets//Users/said/Downloads/intial_conceptual_model_ex1.png" width =300>

**initial tables**

Hospital

| Hospital_id | Name         | Address          |
| ----------- | ------------ | ---------------- |
| 1           | Sjukhusstock | Drottninggatan 1 |

Department

| DEpartment_id | Name         |
| ------------- | ------------ |
| 1             | Sjukhusstock |
