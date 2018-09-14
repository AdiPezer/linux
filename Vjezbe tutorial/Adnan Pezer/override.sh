#!/bin/bash
# Create a wrapper around the command ls

ls () {
command ls -lh
}

ls
