# Renovate 37.253.1 with Dockerfile using UTF-8 BOM encoding

## Current behavior

If the Dockerfile uses UTF-8 with BOM encoding, and the very first line of the Dockerfile is like 

`FROM image as alias`

the dependency is not resolved. Instead, Renovate tries to resolve `alias` as Docker image from Docker Hub.

## Expected behavior

Renovate should correctly intepret Dockerfile with UTF-8 with BOM encoding, like docker does, and correctly resolve the dependency

## Link to the Renovate issue or Discussion

[Renovate issue](https://github.com/renovatebot/renovate/discussions/30112).
