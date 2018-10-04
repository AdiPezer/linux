#!/bin/bash

echo 'If we want to know the name of some server and we only know the external ip address we can do it by performing an reverse DNS lookup using dig -x'

dig -x 8.8.8.8
