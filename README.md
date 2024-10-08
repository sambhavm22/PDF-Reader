# MultiPDF Reader using RAG

This project is a MultiPDF Reader using RAG (Retrieval-Augmented Generation), designed to take multiple PDF files as input and generate outputs using the latest information from the provided PDFs and the OpenAI LLM model. The interface is built with Streamlit, providing an easy-to-use web interface for users to upload PDFs and get responses based on the content.

**Table of Contents:** 
1. Features
2. Installation
3. Usage
4. Dependencies
5. Project Structure
6. Docker Setup
7. License

**Features**
1. Multi-PDF Input: Upload multiple PDFs simultaneously.
2. Streamlit Interface: Intuitive web interface for file upload and interaction.
3. RAG Model: Leverages Retrieval-Augmented Generation to use the latest information from PDFs.
4. OpenAI Integration: Utilizes OpenAI's LLM to generate accurate responses based on PDF content.

**Installation**

1. Clone the repository:

```git clone https://github.com/sambhavm22/PDF-Reader.git```


2. Create a virtual environment and activate it:


```python3 -m venv venv```
```source venv/bin/activate```

3. Install the required dependencies

```pip install -r requirements.txt```

4. Set up environment variables by creating a .env file with the necessary keys (e.g., OpenAI API key).

**Usage**

- Run the Streamlit application:

```streamlit run app.py```
- Upload your PDF files using the interface.
- View the output generated by the OpenAI LLM based on the content of your PDFs.

**Dependencies**

The project uses the following dependencies:

- streamlit
- python-dotenv
- langchain
- PyPDF2
- faiss-cpu
- langchain-community
- langchain
- openai
- langchain-openai

You can install all dependencies using the requirements.txt file:

```pip install -r requirements.txt```

Project Structure

MultiPDF-Reader-RAG/

| File/Directory       | Description                            |
|----------------------|----------------------------------------|
| `app.py`             | Main Streamlit app file                |
| `requirements.txt`   | Python dependencies                    |
| `.env.example`       | Example environment file               |
| `README.md`          | Project README file                    |
| `data/`              | Directory for storing PDFs and output files |


**Dockerfile Setup**


To run the application in a Docker container, follow these steps:

1. Build the Docker image:
- ``docker build -t multiple-pdf-reader .``

2. Run the Docker container:
- docker run -it -p 8501:8501 multiple-pdf-reader

3. Access the application:
- Go to http://localhost:8501 in your browser.


### For detailed description visit: 

- https://sambhavm22.medium.com/multipdf-reader-using-rag-586494c2bb49
