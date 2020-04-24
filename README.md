# Nginx + Lua Playground (AKA OpenResty)

This project was create with the purpose to test nginx configurations and lua files, using [OpenResty](https://openresty.org/en/).

## Running

Just ask make to turn all the docker compose containers up:

```
make up
```


## Structure

The docker compose will run one container with nginx and lua and another container with a redis server.

![Diagram](/diagram.png)



All the lua files at [lua directory](./lua) and the nginx conf files at [conf directory](./conf) will be copied to the nginx container.

Additional rocks can be installed at the [Dockerfile](Dockerfile).
