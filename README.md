# Reactive Proof of Concept

This is a proof of concept to try different reactive technologies working together. It consists in an implementation of the widely known ToDo App using a [Flux][flux] like unidirectional data flow architecture based on [FRP][frp] concepts.

We add a variation to the traditional [Flux][flux] implementation, by removing the global dispatcher and replace it with [BaconJs][bacon] event streams.

## Used Libraries

The following libraries and frameworks are used implement the reactive architecture:

- [React][react]
- [Bacon][bacon]
- [Immutable][immutable]

## Setup

You must have installed NodeJs as we make use of `npm` as package manager for the application dependencies.

It is recommended to have _Gulp.js_ installed globally, you can install it using `npm`:

```shell
  npm install -g gulp
```

To run the application you should execute:

```shell
  npm install
  gulp dev
```

Once that webpack setup the development server, you can access the application via the following url:
http://localhost:8080/webpack-dev-server/index.html

## Change Log

`0.0.0`: initial version

[flux]: https://facebook.github.io/flux/
[react]: https://facebook.github.io/react/
[bacon]: https://baconjs.github.io/
[immutable]: https://facebook.github.io/immutable-js/
[frp]: http://en.wikipedia.org/wiki/Functional_reactive_programming
