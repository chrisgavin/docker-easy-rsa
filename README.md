# Docker EasyRSA
EasyRSA Docker image.

## Example Usgae
```
docker run -it --rm --user "$(id -u):$(id -g)" -v "$(pwd)/:/mnt/" chrisgavin/easy-rsa init-pki
```
