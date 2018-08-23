# Jekyll Portfolio Website

This repo contains a working static website written with [Jekyll](https://jekyllrb.com)

## Usage

First, install the dependencies of this project:

```
yarn install
```

Then, to run this website in development mode (with live-reload):

```
yarn start
```

To build the final, production ready static website:

```
yarn build
```

The final result will be saved in the `public` directory.

## Environment

For application test, setup `API_AGAVECMS_DOMAIN` with `agave.lvh.me:3000`.

## About

The goal of this project is to show how easily you can create static sites using the content (text, images, links, etc.) stored on external service. This project is configured to fetch data from a specific administrative area.

This websites uses:

* [Yarn](https://yarnpkg.com/) as package manager;
* [Webpack](https://webpack.github.io/) to compile and bundle assets (Sass/ES2015 JS);
