# Description: Generate code from files

.PHONY: generate gen

generate gen:
	@echo "Generating the code from proto files"
	@protoc -I proto proto/sso/*.proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative
