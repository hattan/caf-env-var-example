#!/usr/bin/env bash

export CAF_DIR=$(pwd)
export caf_environment=demo
export TF_VAR_custom_rg_name="testaaa"

rover -lz $CAF_DIR/landingzones/caf_launchpad \
  -launchpad \
  -var-folder $CAF_DIR/configuration/level0/launchpad \
  -parallelism 30 \
  -level level0 \
  -env ${caf_environment} \
  -a apply

rover -lz $CAF_DIR/landingzones/caf_solution \
  -tfstate caf_foundations.tfstate \
  -var-folder $CAF_DIR/configuration/level1 \
  -parallelism 30 \
  -level level1 \
  -env ${caf_environment} \
  -a apply  
