#!/bin/bash

function jv_pg_ac_status() {
    local members=$(grep "# jarvis-auto-cluster" /etc/hosts | cut -d' ' -f2)

    for member in ${members}
    do
        say "${member}"
    done
}
