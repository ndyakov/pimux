#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux source-file "$CURRENT_DIR/theme/pimux-bluish.tmux"
