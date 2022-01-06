# Phan for pre-commit

To use this, [install pre-commit][pre-commit]. Then add to your
`.pre-commit-config.yaml`:

```
repos:
  - repo: https://github.com/apeschar/pre-commit-phan
    rev: fa6fa232b28cd13a55b33d0fabf15948d688f19e
    hooks:
      - id: phan
```
