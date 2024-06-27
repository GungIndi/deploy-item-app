# Deploy Item App and DB with Docker Compose

This project was created as a submission for the Dicoding Microservices class. The goal of this project is to demonstrate the deployment of a microservices-based application using Docker Compose.

## Project Description

The project consists of two main components:
1. **Item App**: A simple web application that handles item-related operations.
2. **Database**: A PostgreSQL database used to store item data.

Both components are containerized using Docker and are managed through Docker Compose, which simplifies the deployment process by allowing you to define and run multi-container Docker applications.

## Docker Compose Setup

To run the project, Docker Compose is used to create and manage the necessary Docker containers. The `docker-compose.yaml` file is configured to set up the following:

- **App Container**: Runs the Item App, which listens on port 8080.
- **Database**: A MongoDB database used to store item data.
- **Network Configuration**: Both containers are connected through a Docker network, enabling communication between the application and the database.

### How to Run

1. **Clone the repository**:
    ```sh
    git clone https://github.com/GungIndi/deploy-item-app.git
    cd deploy-item-app
    ```

2. **Ensure Docker and Docker Compose are installed**:
    - [Docker](https://docs.docker.com/get-docker/)
    - [Docker Compose](https://docs.docker.com/compose/install/)

3. **Build and run the containers**:
    ```sh
    docker-compose up --build
    ```

4. **Access the application**:
    - Open your web browser and go to `http://localhost:8080` to access the Item App.
