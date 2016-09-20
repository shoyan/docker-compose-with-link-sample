#!/bin/bash

docker run --rm -it -v `pwd`:/app --net=dockercomposewithlinksample_default dockercomposewithlinksample_web bash
