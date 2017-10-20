# Heroku Docker Rails

This Rails application is an experiment for exploring [Heroku's recently released Docker support](https://devcenter.heroku.com/articles/container-registry-and-runtime).

## Dependencies

* [Heroku](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)
* [Docker](https://docs.docker.com/engine/installation/)
* [Docker Compose](https://docs.docker.com/compose/install/)

## Development

Run the application locally:

```shell
$ docker-compose up
```

Open it in your browser:

```shell
$ open http://localhost:3000
```

## Deployment

Log in to Heroku:

```shell
$ heroku login
```

Log in to the Container Registry:

```shell
$ heroku container:login
```

Build and push the image:

```shell
$ heroku container:push web
```

Open it in your browser:

```shell
$ heroku open
```

Run a command in a new container:

```shell
$ heroku run bundle exec rails console --type web
```
