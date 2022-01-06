# Phan for pre-commit

To use this, [install pre-commit][pre-commit]. Then add to your
`.pre-commit-config.yaml`:

```
repos:
  - repo: https://github.com/apeschar/pre-commit-phan
    rev: c3d0c145f75fbec6617bf2a77e48e258736b95f8
    hooks:
      - id: phan
```
