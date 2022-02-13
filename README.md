# mydocker

## Overview

Docker で Node.js 実行環境を作るサンプル


## How to build

- `$ git clone https://github.com/dotnsf/mydocker`

- `$ cd mydocker`

- `$ docker compose up -d --build`


## How to attach to container

- `$ docker compose exec node14 bash`

- `# node -v`

- `# npm -v`


## How to run attached sample

- `# node opt/sample.js`


## How to exit from container

- `# exit`


## How to delete container

- `$ docker compose down`


## How to restart container

- `$ docker compose up -d`


## References

https://qiita.com/jhorikawa_err/items/fb9c03c0982c29c5b6d5


## License

This code is licensed under MIT.

## Copyright

2022 [K.Kimura @ Juge.Me](https://github.com/dotnsf) all rights reserved.
