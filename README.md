README FILE
API Setup and Testing Guide
This guide provides instructions on how to set up and run my API, and how to test it using the two test methods I used for this project. Swagger UI and curl.
Prerequisites
Before starting, make sure you have the following installed:
•	Python 3.x: For running the FastAPI server.
•	pip: To install necessary Python packages.
•	Git Bash or any terminal: For running curl commands.
Step 1: Clone the Repository
Clone the repository containing the FastAPI project to your local machine (if you haven't already):
git clone < https://github.com/Chernor91/library_system.git>
Step 2: Install Required Dependencies
Navigate to my project folder and create a virtual environment:
cd < https://github.com/Chernor91/library_system.git>
python -m venv venv
Activate the virtual environment:
•	On Windows:
•	venv\Scripts\activate
•	On Mac/Linux:
•	source venv/bin/activate
Install the required dependencies by running:
pip install -r requirements.txt
If you don't have a requirements.txt file, you can install the necessary packages with:
pip install fastapi uvicorn
Step 3: Run the API Server
To start the FastAPI server, run:
uvicorn main:app --reload
By default, the server will be running on http://127.0.0.1:8000. Include \docs extension You can now access the Swagger UI or use curl to test your API.
Testing Your API
You can test my API in two different ways: using Swagger UI or by sending HTTP requests via curl.
1. Testing with Swagger UI
Swagger UI provides an interactive interface where you can send requests directly from your browser.
•	Open your browser and go to http://127.0.0.1:8000/docs.
•	This page will display the available API endpoints.
•	To test the endpoints:
o	Create an Author:
1.	Click on POST /authors/.
2.	Click Try it out.
3.	Provide the required JSON body, for example:
4.	{
5.	  "id": 105,
6.	  "name": "Chimamanda Adichie",
7.	  "nationality": "Nigerian"
8.	}
9.	Click Execute to create the author.
o	Get All Authors:
1.	Click on GET /authors/.
2.	Click Try it out, then click Execute to fetch the list of authors.
o	Get a Specific Author:
1.	Click on GET /authors/{author_id}.
2.	Enter an author_id (e.g., 105), click Try it out, and then Execute to get details of that author.
o	Update an Author:
1.	Click on PUT /authors/{author_id}.
2.	Provide the updated information for the author.
3.	Click Execute.
o	Delete an Author:
1.	Click on DELETE /authors/{author_id}.
2.	Provide an author_id (e.g., 105).
3.	Click Execute to delete the author.
2. Testing with curl
1.	Create an Author (POST /authors/):
curl -X 'POST' \
  'http://127.0.0.1:8000/authors/' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "id": 105,
  "name": "Chimamanda Adichie",
  "nationality": "Nigerian"
}'
2.	Get All Authors (GET /authors/):
curl -X 'GET' \
  'http://127.0.0.1:8000/authors/' \
  -H 'accept: application/json'
3.	Get a Specific Author (GET /authors/{author_id}):
curl -X 'GET' \
  'http://127.0.0.1:8000/authors/105' \
  -H 'accept: application/json'
4.	Update an Author (PUT /authors/{author_id}):
curl -X 'PUT' \
  'http://127.0.0.1:8000/authors/105' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "id": 105,
  "name": "Chimamanda Adichie Updated",
  "nationality": "Nigerian"
}'
5.	Delete an Author (DELETE /authors/{author_id}):
curl -X 'DELETE' \
  'http://127.0.0.1:8000/authors/105' \
  -H 'accept: application/json'

Troubleshooting
•	API not running: Ensure that the FastAPI server is running by checking the terminal for Uvicorn running on http://127.0.0.1:8000.
•	404 errors: Make sure the endpoint and method (GET, POST, PUT, DELETE) are correct.
•	Swagger UI not loading: Ensure that the server is running and accessible at http://127.0.0.1:8000/docs.


