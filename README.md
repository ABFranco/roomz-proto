# roomz-gRPC-proto
A repo dedicated to hosting shared protocol buffer files between our various services.

## Preliminary Setup
1. Install the [protoc](https://developers.google.com/protocol-buffers/docs/downloads) compiler. Follow instructions in README.
    1.1) For WINDOWS users: Unzip and add location of protoc.exe to your PATH environment variable.
2. Install the Go protocol buffers plugin:
```
go install google.golang.org/protobuf/cmd/protoc-gen-go
```
3. Install gRPC-web at (https://github.com/grpc/grpc-web/releases) and add the location of the executable to your PATH environment variable. 

## Regular Usage
Upon making edits to proto files, you'll need to recompile fresh protobuf stub files in the corresponding langauges we use. Currently, we use only Go and JavaScript.

To create fresh stubs:
```
./create_pbs.sh
```

This assumes you have run:
```
chmod +x create_pbs.sh
```
at least once before.
