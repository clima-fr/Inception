
## Introduction <a id="introduction"></a>

The Inception project is designed to construct a multi-container environment utilizing Docker and Docker Compose. The primary aim is to build a scalable virtual infrastructure that supports services such as NGINX, WordPress, and MariaDB, with an emphasis on security and scalability. The idea is to gain practical experience in containerization, orchestration, and networking.

## Project Structure <a id="structure"></a>

Inception adopts a modular approach, where each component is housed in its own container:
- **NGINX**: Functions as a reverse proxy and manages SSL/TLS encryption.
- **WordPress**: A PHP-based content management system operating with php-fpm.
- **MariaDB**: A database engine compatible with MySQL.
- **Docker Compose**: Facilitates container orchestration.
- **Volumes**: Ensures data persistence for WordPress and MariaDB databases.

## Cloning the Repository <a id="cloning"></a>

To obtain and configure the project locally, execute the following:

```bash
git clone https://github.com/clima-fr/Inception.git
cd Inception/root
```
# Running the Project <a id="usage"></a>

## Makefile

The provided Makefile simplifies the setup with commands to manage Docker containers:

- **`build`**: Constructs the containers.
- **`run`**: Launches the containers in detached mode.
- **`exec <container_name>`**: Accesses a container's shell.
- **`status`**: Outputs container logs.
- **`stop`**: Halts and deletes active containers.
- **`iclean`**: Removes containers and their images.
- **`vclean`**: Deletes containers, images, and volumes.
- **`fclean`**: Cleans all inactive containers, images, and volumes.
- **`dls`, `vls`, `ils`, `nls`**: List Docker containers, volumes, images, and networks respectively.

To initialize and run the containers:

```bash
make
```
## To halt and clean the setup:

```bash
make fclean
```

## Norms and Guidelines <a id="norms"></a>
This project adheres to the 42 School Norm, influencing design and implementation to comply with rigorous coding standards.


