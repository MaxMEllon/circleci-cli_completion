_circleci-cli::sub() {
  _values \
    'projects[Print projects]' \
    'recent-builds[Recent builds for the current project]' \
    'recent[Recent builds for the current project]' \
    'show[Show details for build]' \
    'list-artifacts[Show artifacts for build (default to latest)]' \
    'artifacts[Show artifacts for build (default to latest)]' \
    'retry-build[Retry a build]' \
    'retry[Retry a build]' \
    'build[Trigger a new build]' \
    'clear-cache[Clear the build cache]' \
    'add-env-var[Add an environment variable to the project (expects the name and value as arguments)]' \
    'delete-env-var[Add an environment variable to the project (expects the name as argument)]' \
    'add-ssh-key[Add an SSH key to be used to access external systems (expects the hostname and private key as arguments)]' \
    'help[Shows a list of commands or help for one command]'
}

_circleci-cli() {
  _arguments \
    {-H,--host}'[CircleCI URI $CIRCLE_HOST]' \
    {-t,--token}'[API token to use to access CircleCI (not needed for displaying information about public repositories) $CIRCLE_TOKEN]' \
    {-h,--help}'[show help]' \
    {-v,--version}'[print the cersion]' \
    '*: :_circleci-cli::sub'
}

compdef _circleci-cli circleci-cli
