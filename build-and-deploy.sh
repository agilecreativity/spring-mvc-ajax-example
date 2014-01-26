#!/bin/bash
mvn clean eclipse:eclipse package
# NOTE: edit this to suite your deployment environment
export TOMCAT_HOME=$HOME/Apps/apache-tomcat-7
export DEPLOYMENT_DIR=$TOMCAT_HOME/webapps
export APP_NAME=mvc-ajax
cp target/$APP_NAME-1.0.0-SNAPSHOT.war $DEPLOYMENT_DIR
