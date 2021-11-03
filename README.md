# UNPKG &middot; [![Travis][build-badge]][build]

[build-badge]: https://img.shields.io/travis/mjackson/unpkg/master.svg?style=flat-square
[build]: https://travis-ci.org/mjackson/unpkg

[UNPKG](https://unpkg.com) is a fast, global [content delivery network](https://en.wikipedia.org/wiki/Content_delivery_network) for everything on [npm](https://www.npmjs.com/).

### Setup

The environment variables bellow can be used to customise the installion.

|Value           |Default|
|---             |---       |
|NODE_ENV        |development|
|DEBUG           |false|
|PORT            |8080|
|ORIGIN          |https://unpkg.com|
|CLOUDFLARE_KEY  ||
|CLOUDFLARE_EMAIL||
|NPM_REGISTRY_URL|https://registry.npmjs.org|


### Running

With Docker the image can be built:

```bash
docker build . -t orderin/unpkg:latest
```

...and run

```bash
docker run -it orderin/unpkg:latest -e VARIABLE:VALUE
```

### Documentation

Please visit [the UNPKG website](https://unpkg.com) to learn more about how to use it.

### Sponsors

Our sponsors and backers are listed [in SPONSORS.md](SPONSORS.md).
