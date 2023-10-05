#!/usr/bin/env bash

# start a new day of advent of code
# Usage: ./new.sh day01

PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

function capitalize() {
    echo $1 | awk '{print toupper(substr($0,0,1))tolower(substr($0,2))}'
}

function usage() {
  echo "Usage: ./new.sh day01"
}

function main() {
  if [ $# -ne 1 ]; then
      echo "ERROR: no day was provided"
      usage
      exit 1
  fi

  local day_name="$1"
  local module_name=$(capitalize $day_name)

  if [[ ! "$day_name" =~ ^day[0-9]{2}$ ]]; then
    echo "ERROR: invalid day name: $day_name"
    usage
    exit 1
  fi

  echo
  echo "Advent of code"
  echo "day name: $day_name"
  echo "module name: $module_name"
  echo "-------------------"
  echo

  # Check if day already exists
  if [ -d "$day_name" ]; then
    echo "ERROR: folder for that day already exists"
    usage
    exit 1
  fi

  # Create project directory
  mkdir "$day_name" && cd "$day_name"

  # # copy template files
  cp -r "$PROJECT_DIR"/template/* .

  # rename template files
  mv day00.rb "$day_name".rb
  mv day00_spec.rb "$day_name"_spec.rb

  # replace template strings
  # exerices
  sed -i '' "s/day00/$day_name/g" "$day_name".rb
  sed -i '' "s/Day00/$module_name/g" "$day_name".rb

  # specs
  sed -i '' "s/day00/$day_name/g" "$day_name"_spec.rb
  sed -i '' "s/Day00/$module_name/g" "$day_name"_spec.rb

  echo "DONE!"
}

main "$@"