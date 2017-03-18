#!/bin/bash
kubectl -n gridvo get svc | grep -q mongodb
if [ "$?" == "1" ];then
	kubectl create -f mongodb-service.yaml --record
	kubectl -n gridvo get svc | grep -q mongodb
	if [ "$?" == "0" ];then
		echo "mongodb-service install success!"
	else
		echo "mongodb-service install fail!"
	fi
else
	echo "mongodb-service is exist!"
fi
#kubectl -n gridvo get svc | grep -q mongodb
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get svc | grep -q mongodb
#done
kubectl -n gridvo get svc | grep -q cassandra
if [ "$?" == "1" ];then
        kubectl create -f cassandra-service.yaml --record
        kubectl -n gridvo get svc | grep -q cassandra
        if [ "$?" == "0" ];then
        	echo "cassandra-service install success!"
        else
        	echo "cassandra-service install fail!"
        fi
else
    	echo "cassandra-service is exist!"
fi
#kubectl -n gridvo get svc | grep -q cassandra
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get svc | grep -q cassandra
#done
kubectl -n gridvo get svc | grep -q zookeeper
if [ "$?" == "1" ];then
        kubectl create -f zookeeper-service.yaml --record
        kubectl -n gridvo get svc | grep -q zookeeper
        if [ "$?" == "0" ];then
        	echo "zookeeper-service install success!"
        else
        	echo "zookeeper-service install fail!"
        fi
else
    	echo "zookeeper-service is exist!"
fi
#kubectl -n gridvo get svc | grep -q zookeeper
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get svc | grep -q zookeeper
#done
kubectl -n gridvo get svc | grep -q kafka
if [ "$?" == "1" ];then
        kubectl create -f kafka-service.yaml --record
        kubectl -n gridvo get svc | grep -q kafka
        if [ "$?" == "0" ];then
        	echo "kafka-service install success!"
        else
        	echo "kafka-service install fail!"
        fi
else
    	echo "kafka-service is exist!"
fi
#kubectl -n gridvo get svc | grep -q kafka
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get svc | grep -q kafka
#done
kubectl -n gridvo get svc | grep -q zipkin
if [ "$?" == "1" ];then
        kubectl create -f zipkin-service.yaml --record
        kubectl -n gridvo get svc | grep -q zipkin
        if [ "$?" == "0" ];then
        	echo "zipkin-service install success!"
        else
        	echo "zipkin-service install fail!"
        fi
else
    	echo "zipkin-service is exist!"
fi
#kubectl -n gridvo get svc | grep -q zipkin
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get svc | grep -q zipkin
#done
kubectl -n gridvo get pods | grep -q mongodb
if [ "$?" == "1" ];then
        kubectl create -f mongodb-deployment.yaml --record
        kubectl -n gridvo get pods | grep -q mongodb
        if [ "$?" == "0" ];then
        	echo "mongodb-deployment install success!"
        else
        	echo "mongodb-deployment install fail!"
        fi
else
    	echo "mongodb-deployment is exist!"
fi
#kubectl -n gridvo get pods | grep -q mongodb
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get pods | grep -q mongodb
#done
kubectl -n gridvo get pods | grep -q cassandra
if [ "$?" == "1" ];then
        kubectl create -f cassandra-deployment.yaml --record
        kubectl -n gridvo get pods | grep -q cassandra
        if [ "$?" == "0" ];then
        	echo "cassandra-deployment install success!"
        else
        	echo "cassandra-deployment install fail!"
        fi
else
    	echo "cassandra-deployment is exist!"
fi
#kubectl -n gridvo get pods | grep -q cassandra
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get pods | grep -q cassandra
#done
kubectl -n gridvo get pods | grep -q zookeeper
if [ "$?" == "1" ];then
        kubectl create -f zookeeper-deployment.yaml --record
        kubectl -n gridvo get pods | grep -q zookeeper
        if [ "$?" == "0" ];then
        	echo "zookeeper-deployment install success!"
        else
        	echo "zookeeper-deployment install fail!"
        fi
else
    	echo "zookeeper-deployment is exist!"
fi
#kubectl -n gridvo get pods | grep -q zookeeper
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get pods | grep -q zookeeper
#done
kubectl -n gridvo get pods | grep -q kafka
if [ "$?" == "1" ];then
        kubectl create -f kafka-deployment.yaml --record
        kubectl -n gridvo get pods | grep -q kafka
        if [ "$?" == "0" ];then
        	echo "kafka-deployment install success!"
        else
        	echo "kafka-deployment install fail!"
        fi
else
    	echo "kafka-deployment is exist!"
fi
#kubectl -n gridvo get pods | grep -q kafka
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get pods | grep -q kafka
#done
kubectl -n gridvo get pods | grep -q zipkin
if [ "$?" == "1" ];then
        kubectl create -f zipkin-deployment.yaml --record
        kubectl -n gridvo get pods | grep -q zipkin
        if [ "$?" == "0" ];then
        	echo "zipkin-deployment install success!"
        else
        	echo "zipkin-deployment install fail!"
        fi
else
    	echo "zipkin-deployment is exist!"
fi
#kubectl -n gridvo get pods | grep -q zipkin
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get pods | grep -q zipkin
#done
kubectl -n gridvo get pods | grep -q zipkin-dependencies
if [ "$?" == "1" ];then
        kubectl create -f zipkin_dependencies-deployment.yaml --record
        kubectl -n gridvo get pods | grep -q zipkin-dependencies
        if [ "$?" == "0" ];then
        	echo "zipkin_dependencies-deployment install success!"
        else
        	echo "zipkin_dependencies-deployment install fail!"
        fi
else
    	echo "zipkin_dependencies-deployment is exist!"
fi
#kubectl -n gridvo get pods | grep -q zipkin-dependencies
#while [ "$?" == "1" ]
#do
#kubectl -n gridvo get pods | grep -q zipkin-dependencies
#done
#echo "everything is ok!"
