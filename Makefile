PROTOC_CMD = protoc
PROTO_SRC = proto/user_service/v1/user.proto proto/user_service/v1/service.proto
GO_OUT_DIR = ./gen/go
GO_OUT_OPT = --go_out=$(GO_OUT_DIR) --go_opt=paths=source_relative
GO_GRPC_OUT_OPT = --go-grpc_out=$(GO_OUT_DIR) --go-grpc_opt=paths=source_relative

generate: $(PROTO_SRC)
	$(PROTOC_CMD) -I proto $(PROTO_SRC) $(GO_OUT_OPT) $(GO_GRPC_OUT_OPT)

clean:
	rm -rf $(GO_OUT_DIR)

.PHONY: generate clean
