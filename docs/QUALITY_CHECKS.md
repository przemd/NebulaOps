# Quality Checks

## Merge conflict scan
Ensure the repo is free of merge conflict markers before shipping:

```bash
rg -n "<<<<<<<|=======|>>>>>>>" .
```

## Working tree status
Verify a clean working tree before release:

```bash
git status -sb
```
