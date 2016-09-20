#!/bin/bash

docker run --rm -it -v `pwd`:/app --net=dockercomposewithlinksample_default --link dockercomposewithlinksample_mysql_1:mysql dockercomposewithlinksample_web bash
