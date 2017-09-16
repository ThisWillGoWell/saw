go get github.com/mitchellh/gox
go get github.com/tcnksm/ghr
gox -osarch="linux/amd64 linux/arm darwin/amd64" -ldflags "-X main.Version=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -output "dist/saw_{{.OS}}_{{.Arch}}"
ghr -t $GITHUB_TOKEN -u $CIRCLE_PROJECT_USERNAME -r $CIRCLE_PROJECT_REPONAME --replace `git describe --tags` dist/
