#!/bin/bash

# go_files
protoc -I=. --go_out=plugins=grpc:go_proto roomzapi.proto 

# js_files
protoc -I=. --js_out=import_style=commonjs:js_proto --grpc-web_out=import_style=commonjs,mode=grpcwebtext:js_proto roomzapi.proto
