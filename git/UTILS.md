# Collection of git utilities

## Show Git Tags Sorted by date

```bash
$ git tag -l --sort=-creatordate --format="%(creatordate:short) %(refname:short)"
# output
# 2026-07-17 v1.2.1-beta.2
# 2026-07-17 v1.2.0
```
