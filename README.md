# Ubuntu Dev Base


## Overview

Ubuntu + 開発環境 + VNC の docker イメージ


## How to use

- イメージビルド

  - `$ docker build -t yourname/ubuntudevbase .`


- イメージダウンロード

  - `$ docker pull yourname/ubuntudevbase`

- コンテナ実行

  - `$ docker run -p 5900:5900 -e VNC_PASSWORD=password yourname/ubuntudevbase`

- VNC クライアントからアクセス

  - `localhost:5900`



## Licensing

This code is licensed under MIT.


## Copyright

2021  [K.Kimura @ Juge.Me](https://github.com/dotnsf) all rights reserved.
