function ppretty-time() {
local total_seconds="$1"
days=$(( $total_seconds / 60 / 60 / 24 ))
hours=$(( $total_seconds / 60 / 60 % 24 ))
minutes=$(( $total_seconds / 60 % 60 ))
seconds=$(( $total_seconds % 60 ))
local human
(( days > 0 )) && human+="${days}d "
(( hours > 0 )) && human+="${hours}h "
(( minutes > 0 )) && human+="${minutes}m "
human+="${seconds}s"

echo "$human"
}
zle -N ppretty-time
