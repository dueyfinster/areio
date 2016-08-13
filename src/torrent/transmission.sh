#!/bin/bash
TRANS_BIN="/usr/bin/transmission-remote"
"$TRANS_BIN" -t "$TR_TORRENT_ID" --remove
