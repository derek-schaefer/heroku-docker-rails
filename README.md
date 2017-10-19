# Heroku Docker Rails

This Rails application is an experiment that explores Heroku's recently released Docker support.

## Dependencies

* Heroku
* Docker
* Docker Compose

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

Build and push the image:

```shell
$ make push
```

Open it in your browser:

```shell
$ heroku open
```
