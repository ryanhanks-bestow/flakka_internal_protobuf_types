build:
  @cd proto && buf generate --include-imports --include-wkt

buf-export:
  @cd proto && buf export buf.build/protocolbuffers/wellknowntypes --output . && rm google/protobuf/*.proto
#  --exclude-path google/protobuf/*.proto

clean:
  rm -rf lib/google
