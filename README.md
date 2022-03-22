# MapBox CLI tool

## Usage

```sh
./mapbox.sh -h
```

Note: might require making `mapbox.sh` executable via `chmod +x ./mapbox.sh`


## Configuration

1. Go to your [mapbox account](https://account.mapbox.com/access-tokens/create) and create a token with the secret scope `UPLOADS:WRITE`;
2. Copy the `./env.sh` file to `./env.local.sh`;
3. Enter the token value and mapbox username in that new `./env.local.sh` file.


## Upload tileset to Mapbox

Needs to specify the file to upload `-f`, the name of the tileset `-n` and the tileset id `-i`:

```sh
./mapbox.sh -f ./example-file.tiff -n "this is my new big tileset" -i tileset-x
```
