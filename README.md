# 概要
自分の開発環境で動かすやり方

## Dockerの準備

Dockerをインストールする。  
確認方法はターミナルから下記を実行する。  
Windows環境の方はターミナルとしてGit BashやWSL上のターミナルを使用する。

```bash
% docker -v
Docker version 20.10.12, build e91ed5707e
```

## 手順

レポジトリを任意のディレクトリ配下にてcloneします。 
httpsの場合: `git clone https://github.com/raisetech-for-student/docker-mysql-hands-on.git`  

cloneで指定する値は下記のように取得できます。  

 git cloneを実行するとカレントディレクトリ上に`councilor-infra`ディレクトリが作成される。  

```bash
% ls
councilor-infra
```

```bash
% docker compose up -d
[+] Running 2/2
 ⠿ Network councilor-infra  Created                                                                                  0.0s
 ⠿ Container councilor-infra        Started
```

