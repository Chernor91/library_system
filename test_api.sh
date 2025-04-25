#!/bin/bash

echo "▶️ Creating Author..."
curl -X POST "http://127.0.0.1:8000/authors/" \
-H "Content-Type: application/json" \
-d '{
  "id": 2,
  "name": "Maya Angelou",
  "nationality": "American"
}'
echo -e "\n"

echo "▶️ Getting All Authors..."
curl -X GET "http://127.0.0.1:8000/authors/"
echo -e "\n"

echo "▶️ Getting Author with ID 2..."
curl -X GET "http://127.0.0.1:8000/authors/2"
echo -e "\n"

echo "▶️ Updating Author with ID 2..."
curl -X PUT "http://127.0.0.1:8000/authors/2" \
-H "Content-Type: application/json" \
-d '{
  "id": 2,
  "name": "Dr. Maya Angelou",
  "nationality": "American"
}'
echo -e "\n"

echo "▶️ Creating a Book..."
curl -X POST "http://127.0.0.1:8000/books/" \
-H "Content-Type: application/json" \
-d '{
  "id": 202,
  "title": "I Know Why the Caged Bird Sings",
  "author_id": 2,
  "year": 1969
}'
echo -e "\n"

echo "▶️ Getting All Books..."
curl -X GET "http://127.0.0.1:8000/books/"
echo -e "\n"

echo "▶️ Getting Book with ID 202..."
curl -X GET "http://127.0.0.1:8000/books/202"
echo -e "\n"

echo "▶️ Updating Book with ID 202..."
curl -X PUT "http://127.0.0.1:8000/books/202" \
-H "Content-Type: application/json" \
-d '{
  "id": 202,
  "title": "I Know Why the Caged Bird Sings - Revised Edition",
  "author_id": 2,
  "year": 1970
}'
echo -e "\n"

echo "▶️ Deleting Book with ID 202..."
curl -X DELETE "http://127.0.0.1:8000/books/202"
echo -e "\n"

echo "▶️ Deleting Author with ID 2..."
curl -X DELETE "http://127.0.0.1:8000/authors/2"
echo -e "\n"

echo "✅ Done testing all endpoints!"
