#!/usr/bin/env bash

if [ "$(gcloud auth list --format=json)" == "[]" ]; then
    echo "No gcloud authorization detected. Initializing gcloud."
    echo "Set ANSIBLE_NO_GCLOUD=true to disable this behaviour."
    echo
    gcloud init
fi
