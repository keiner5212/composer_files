
# Docker Configurations for Custom Containers

This repository contains Docker configurations for various custom containers. Within each, you'll find the specific `docker-compose.yml` file for that container.


## Custom Containers

### MongoDB

- **Location:** `mongodb/docker-compose.yml`
- **Description:** Container for MongoDB with specific configurations.
- **Usage:**
  ```bash
  cd mongodb
  docker-compose up -d
  ```

### MySQL

- **Location:** `mysql/docker-compose.yml`
- **Description:** Container for MySQL with specific configurations.
- **Usage:**
  ```bash
  cd mysql
  docker-compose up -d
  ```

### PostgreSQL

- **Location:** `postgres/docker-compose.yml`
- **Description:** Container for PostgreSQL with specific configurations.
- **Usage:**
  ```bash
  cd postgres
  docker-compose up -d
  ```

## Configuration and Usage

1. **Requirements:**
   - Docker installed on your system.

2. **Configuration:**
   - Each directory contains a `docker-compose.yml` file with container-specific configurations. Refer to each file for additional settings.

3. **Usage:**
   - Navigate to the desired container directory.
   - Run the command `docker-compose up -d` to start the container in the background.

## Customization

- Modify the `docker-compose.yml` files according to your needs.
- Add environment variables, volumes, or any other necessary configurations.

## Contributions

Feel free to contribute or report issues by creating issues or sending pull requests.