i3-msg -t get_workspaces | jq -c '.[] |select(.focused)|.num'

function getWorkspace() {
  previousWorkspace=$(cat ~/.i3/.ws )
  currentWorkspace=$(i3-msg -t get_workspaces | jq -c '.[] |select(.focused)|.num')
  if [[ "$previousWorkspace" != "$currentWorkspace" ]] ; then
    echo "$currentWorkspace" >| ~/.i3/.ws
    return $currentWorkspace
  else return 0
}


