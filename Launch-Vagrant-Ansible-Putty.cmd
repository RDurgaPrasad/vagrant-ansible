@echo off

vagrant up

echo ############################################################
echo ## vagrant environment                                    ##
echo ## ------------------------------------------------------ ##
echo ## ansible 10.0.0.0                                       ##
echo ## server  10.1.1.1                                       ##
echo ## starting putty for ansible                             ##
echo ############################################################

putty -ssh -pw vagrant vagrant@10.0.0.0
