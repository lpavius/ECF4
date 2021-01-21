1. Creer un sujet de discussion

POST /subject-of-discussions HTTP/1.1

Host: localhost:1337

Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNjExMjM4NDYyLCJleHAiOjE2MTM4MzA0NjJ9.nHdAYA80MGuamVjfd5K9EEAO9WtKjAbATr64LL1utF4
Content-Type: application/json
Content-Length: 85

```
{
    "title": "sujet test",
    "CreationDate": "2021-01-18",
    "id_user": 5
}
```

2. Créer un message associé à un sujet de discussion

POST /messages HTTP/1.1
Host: localhost:1337
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNjExMjM4NDYyLCJleHAiOjE2MTM4MzA0NjJ9.nHdAYA80MGuamVjfd5K9EEAO9WtKjAbATr64LL1utF4
Content-Type: application/json
Content-Length: 109

```
{
    "content": "sujet test",
    "id_user": 4,
    "id_subject": 9,
    "creationDate": "2021-01-18"
}
```

3. Consulter un sujet de discussion

GET /subject-of-discussions/7 HTTP/1.1
Host: localhost:1337
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNjExMjM4NDYyLCJleHAiOjE2MTM4MzA0NjJ9.nHdAYA80MGuamVjfd5K9EEAO9WtKjAbATr64LL1utF4

4. Consulter les messages associés à un sujet de discussion

GET /subject-of-discussions/9 HTTP/1.1
Host: localhost:1337
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNjExMjM4NDYyLCJleHAiOjE2MTM4MzA0NjJ9.nHdAYA80MGuamVjfd5K9EEAO9WtKjAbATr64LL1utF4

5. Consulter un message et l’auteur associé à ce message

GET /messages/5 HTTP/1.1
Host: localhost:1337
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNjExMjM4NDYyLCJleHAiOjE2MTM4MzA0NjJ9.nHdAYA80MGuamVjfd5K9EEAO9WtKjAbATr64LL1utF4

