# Python Monorepo Playground

This monorepo has 4 independent uv projects. Each package manages its own `.venv`.

Packages:
- `mono-core`
- `mono-utils`
- `mono-service`
- `mono-cli`

## Quick start

Create package-local environments and install dependencies:

```bash
cd core && uv sync --extra dev
cd ../utils && uv sync --extra dev
cd ../service && uv sync --extra dev
cd ../cli && uv sync --extra dev
```

## Run examples

```bash
cd cli && uv run mono-cli
cd ../service && uv run python -c "from mono_service import describe; print(describe())"
```

## Run tests

```bash
cd core && uv run pytest
cd ../utils && uv run pytest
cd ../service && uv run pytest
cd ../cli && uv run pytest
```

## Open in VS Code as multi-root

Open `monorepo.code-workspace`.
