# miktex
Miktex with additional packages.

Docker image with `git` and `curl` based on `miktex/miktex` to work with CircleCI. It can also push the final `pdf` to Bitbucket Downloads section with:

`curl -X POST "https://${BB_AUTH_STRING}@api.bitbucket.org/2.0/repositories/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}/downloads" --form files=@"output.pdf"`

## References

- <https://confluence.atlassian.com/bitbucket/deploy-build-artifacts-to-bitbucket-downloads-872124574.html>
