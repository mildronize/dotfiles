# my dockerfiles
- node-live-server, Wrapping [live-server](https://github.com/tapio/live-server) (NodeJS package) by Docker with live reload
  ```
  docker run -it --rm --expose 4444 -p 4444:4444 -v "$PWD:/www" mildronize/dockerfiles:node-live-server live-server --port=4444
  ```
