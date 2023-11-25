# !/bin/bash

# Loop through all the subdirectories
for dir in */ ; do
  cd $dir

  echo "Starting $dir"
  
  docker compose up -d
  
  cd ..
done