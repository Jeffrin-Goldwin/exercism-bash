#!/usr/bin/env bash

allergens=(
    "eggs"         # 1
    "peanuts"      # 2
    "shellfish"    # 4
    "strawberries" # 8
    "tomatoes"     # 16
    "chocolate"    # 32
    "pollen"       # 64
    "cats"         # 128
)

allergic_to() {
    local score=$1
    local item=$2

    for i in "${!allergens[@]}"; do
        local value=$((1 << i))
        if [[ "${allergens[$i]}" == "$item" ]]; then
            if (( score & value )); then
                echo "true"
            else
                echo "false"
            fi
            return
        fi
    done

    echo "false"
}

list() {
    local score=$1
    local result=()

    for i in "${!allergens[@]}"; do
        local value=$((1 << i))
        if (( score & value )); then
            result+=("${allergens[$i]}")
        fi
    done

    # Print space-separated list of allergies (standard for Exercism tests)
    echo "${result[*]}"
}

main() {
    local score=$1
    local action=$2
    local item=$3

    case "$action" in
        allergic_to)
            allergic_to "$score" "$item"
            ;;
        list)
            list "$score"
            ;;
    esac
}

main "$@"