@echo off

vagrant up

echo ############################################################
echo ## vagrant environment                                    ##
echo ## ------------------------------------------------------ ##
echo ## ansible 192.168.10.0                                   ##
echo ## server  192.168.20.0                                   ##
echo ## starting putty for ansible                             ##
echo ############################################################

putty -ssh -pw vagrant vagrant@192.168.10.0
