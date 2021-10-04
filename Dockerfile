FROM prysmaticlabs/prysm-beacon-chain:latest as prysm-beacon-chain

FROM debian:11-slim

WORKDIR /app/cmd/beacon-chain/beacon-chain.runfiles/prysm
COPY --from=prysm-beacon-chain /app/cmd/beacon-chain/beacon-chain /app/cmd/beacon-chain/beacon-chain
ENTRYPOINT [ "/app/beacon-chain" ]
