#!/bin/bash

helm repo add kedacore https://kedacore.github.io/charts
helm repo update

kubectl create namespace keda

helm install keda kedacore/keda --version 2.9.4 --namespace keda
