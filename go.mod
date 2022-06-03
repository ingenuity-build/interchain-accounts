module github.com/cosmos/interchain-accounts

go 1.16

require (
	github.com/cosmos/cosmos-sdk v0.45.1
	github.com/cosmos/ibc-go/v3 v3.0.0
	github.com/gogo/protobuf v1.5.2
	github.com/gorilla/mux v1.8.0
	github.com/grpc-ecosystem/grpc-gateway v1.16.0
	github.com/pkg/errors v0.9.1
	github.com/spf13/cast v1.4.1
	github.com/spf13/cobra v1.4.0
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.10.1
	github.com/stretchr/testify v1.7.1
	github.com/tendermint/tendermint v0.34.19
	github.com/tendermint/tm-db v0.6.7
	google.golang.org/grpc v1.45.0
)

require golang.org/x/term v0.0.0-20201210144234-2321bbc49cbf // indirect

replace github.com/cosmos/cosmos-sdk => github.com/ingenuity-build/cosmos-sdk v0.45.4-ls.1

replace github.com/gogo/protobuf => github.com/regen-network/protobuf v1.3.3-alpha.regen.1
