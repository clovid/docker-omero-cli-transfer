# Dockerfile for omero-cli-transfer

- Build with `docker build -t omero-cli-transfer .`
- Run with `docker run --rm -v $(pwd)/export:/home/local/export omero-cli-transfer [cli params] /home/local/export/file.tar`
- Find export file in ./export

## Example

```
docker run --rm -v $(pwd)/export:/home/local/export omero-cli-transfer -s omero.com -p 4064 -u root -w secret -g main pack Image:123 /home/local/export/file.tar
```


