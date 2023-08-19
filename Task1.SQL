CREATE TABLE delivery
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    info jsonb DEFAULT '[
      {
        "number": 0,
        "phone": 0,
        "email": null
      }
    ]'
);


INSERT INTO delivery (name, info)
VALUES ('макдак',
        '[
          {
            "number": 1,
            "phone": "8(955)123-15-89",
            "email": "lol@mail.ru"
          },
          {
            "number": 2,
            "phone": "8(955)123-15-89",
            "email": "kek@gmail.com"
          }
        ]');
SELECT *
FROM delivery
WHERE id = 1;
