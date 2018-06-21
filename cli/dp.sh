SEED=`bin/brave keypair generate | awk '{print $2}'`
ADDRESS=`bin/brave keypair parse --seed $SEED | awk '{print $2}'`

bin/brave transaction fund --seed $ROOT_SEED --address $ADDRESS --amount 10000
