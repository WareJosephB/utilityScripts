#!/bin/bash

repositories=(rw1202/TrainerAPI-Grp- jtbamford/CVProject-TrainingManager toby456/%%% HGroome97/%%% WareJosephB/CVConsumer)
folders=(TrainerAPI-Grp- CVProject-TrainingManager %%% %%% CVConsumer)
baseRepo = https://github.com

git_clone() {
        git clone $1
}

COUNTER=0
until [  $COUNTER -gt 4 ]; do
	git_clone ${baseRepo}/${repositories[$COUNTER]}
	maven clean package -q -f ${folders[$COUNTER]}/pom.xml
done