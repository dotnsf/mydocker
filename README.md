# mydocker

## Overview

Sample to build **Node.js** runtime/deveopment environment with Docker and Docker-Compose.


## How to use

### How to build

- `$ git clone https://github.com/dotnsf/mydocker`

- `$ cd mydocker`

- `$ docker compose up -d --build`


### How to attach to container

- `$ docker compose exec node14 bash`

- `# node -v`

- `# npm -v`


### How to run attached sample

- `# node opt/sample.js`


### How to exit from container

- `# exit`


### How to delete container

- `$ docker compose down`


### How to restart container

- `$ docker compose up -d`


## How to customize exposed-port in container

- Edit `docker-compose.yml` **before building container**.

  - Add `ports` section into `docker-compose.yml`

    - This example shows sample to expose **18080** port in host which connect to **8080** port in container.

```
version: '3'
services:
  node14:
    restart: always
    build: .
    container_name: 'node14'
    working_dir: '/root/'
    tty: true
    ports:
      - "18080:8080"
    volumes:
      - ./opt:/root/opt
```

- Build container, exec it, and attach to it:

  - `$ docker compose up -d --build`

  - `$ docker compose exec node14 bash`

- Run Node.js web application which listens 8080 port, and access to it via `http://localhost:18080/` from host

  - `# cd opt`

  - `# git clone https://github.com/dotnsf/hostname`

  - `# cd hostname`

  - `# npm install`

  - `# node app`

    - Application listens 8080 port in contaier.

  - Access to `http://localhost:18080/` from container host


## References

https://qiita.com/jhorikawa_err/items/fb9c03c0982c29c5b6d5


## License

This code is licensed under MIT.

## Copyright

2022 [K.Kimura @ Juge.Me](https://github.com/dotnsf) all rights reserved.
