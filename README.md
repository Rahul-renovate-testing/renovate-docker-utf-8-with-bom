# Renovate 37.253.1 with Dockerfile using UTF-8 BOM encoding

## Current behavior

If the Dockerfile uses UTF-8 with BOM encoding, and the very first line of the Dockerfile is like "FROM <image> as <aliasY", the dependency is not resolved.
Instead, Renovate tries to resolve `<alias>` as Docker image from Docker hub.

## Expected behavior

Renovate should correctly intepret Dockerfile with UTF-8 with BOM encoding, like docker does, and correctly resolve the dependency

## Link to the Renovate issue or Discussion

Put your link to the Renovate issue or Discussion here.
