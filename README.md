# gh-974-xeron

This is a minimal app to reproduce https://github.com/nginx/unit/issues/974.

## How To

Build and run `unit` docker image with the app:

```bash
./build_and_start.sh
```

Test:

```bash
curl -v -H 'X-Forwarded-Proto: https' http://127.0.0.1:8080
```

Example response:

```
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080
> GET / HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/8.4.0
> Accept: */*
> X-Forwarded-Proto: https
>
< HTTP/1.1 503 Service Unavailable
< Content-Type: text/html
< Server: Unit/1.31.0
< Date: Wed, 18 Oct 2023 18:43:56 GMT
< Content-Length: 54
<
<!DOCTYPE html><title>Error 503</title><p>Error 503.
* Connection #0 to host 127.0.0.1 left intact
```
