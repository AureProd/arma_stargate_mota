#export LD_LIBRARY_PATH=/usr/lib/jvm/java-1.7.0-openjdk-i386/jre/lib/i386/server/
./arma3server -port=2322 -autoinit -config=server.cfg -cfg=basic.cfg -name=stargate -mod=@CBA_A3\;@map_stargate_impact\;@stargate_arma_ta\;@stargate_mota -servermod=@mod_server\;@extDB3 >> log.txt
