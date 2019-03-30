# docker-textlint

![node](https://img.shields.io/badge/node-11.13.0-brightgreen.svg)
![ruby](https://img.shields.io/badge/ruby-2.3.7-brightgreen.svg)

Lint **Japanese** techniqual text

## Support

- *.txt
- *.md
- *.re

## Rules

- cf. https://github.com/textlint-ja/textlint-rule-preset-ja-technical-writing#%E3%83%AB%E3%83%BC%E3%83%AB%E4%B8%80%E8%A6%A7

## Usage

### textlint only

#### command

```
$ docker pull nonchalant/textlint:0.0.1
$ docker run -e TXT=[Path to Text] -v [Directory to contains Text]:/app/volume:ro nonchalant/textlint:0.0.1
```

#### docker-compose.yml (Recommend)

```
version: '2'
services:
  lint:
    image: nonchalant/textlint:0.0.1
    volumes:
      - [Directory to contains Text]:/app/volume
    environment:
      TXT: [Path to Text]
```

```
$ docker-compose up
```

### textlint + danger

Run on CI

```
$ docker pull nonchalant/textlint-danger:0.0.1
$ docker run nonchalant/textlint-danger:0.0.1
```

## Development

### textlint only

#### Local

```
$ npm install
$ npm run lint -- README.md
```

#### Docker

```
$ docker build -t nonchalant/textlint:0.0.1 .
$ docker run -e TXT=README.md -v `pwd`:/app/volume:ro nonchalant/textlint:0.0.1
```

### textlint + danger

#### Local

```
$ bundle install
$ bundle exec danger pr https://github.com/Nonchalant/docker-textlint/pull/1
```

#### Docker

```
$ docker build -f Dockerfile-with-danger -t nonchalant/textlint-danger:0.0.1 .
$ docker run nonchalant/textlint-danger:0.0.1
```
