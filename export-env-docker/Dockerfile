FROM busybox:latest

ENTRYPOINT ["sh", "-c", "env | sort | grep -e '^ACTIONS_'", ">> $GITHUB_ENV" ]