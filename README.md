# MapBox CLI tool

## Usage

```sh
./mapbox.sh -h
```

Note: might require making `mapbox.sh` executable via `chmod +x ./mapbox.sh`

## Upload tileset to Mapbox

Needs to specify the file to upload `-f`, the name of the tileset `-n` and the tileset id `-i`:

```sh
./mapbox.sh -f ./example-file.tif -n "this is my new big tileset" -i tileset-x
```
