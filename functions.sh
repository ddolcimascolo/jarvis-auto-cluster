#!/bin/bash

function jv_pg_ac_status() {
    local members=$(grep "# jarvis-auto-cluster" /etc/hosts | cut -d' ' -f2)

    for member in ${members}
    do
        say "${member}"
    done
}

function jv_pg_ac_askClusterMember() {
    local member="${1}"
    local order="${2}"
    local sc=$(
        curl    -sq \
                -o"${jv_pg_ac_tmp}" \
		        -w"%{http_code}" \
                -G \
                --data-urlencode "order=${order}" \
                --data-urlencode "mute=true" \
                http://${member}:${jv_pg_ac_apiPort}
    )

    case "${sc}" in
        "200") say "$(cat ${jv_pg_ac_tmp} | jq -r ". | reverse | .[0].answer // \"$(jv_pg_ac_i18n DONE)\"")";;
        *) say "${phrase_failed}"
    esac
}
