#!/bin/sh
while getopts m:s:a: flag
do
    case "${flag}" in
        m) model=${OPTARG};;
        s) scorer=${OPTARG};;
        a) audio=${OPTARG};;
    esac
done

deepspeech --model $model --scorer $scorer --audio $audio
