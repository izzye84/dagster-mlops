# mlops_demo

The [Dagster](https://dagster.io/) project for the MLOps demo. See the [README in the repository root](../README.md) for the full walkthrough.

## Getting started

Install dependencies with [uv](https://docs.astral.sh/uv/):

```bash
uv sync
```

Then start the Dagster UI and daemon:

```bash
uv run dg dev
```

Open http://localhost:3000 with your browser to see the project.

## Project layout

Definitions are loaded from `mlops_demo/definitions.py`:

- `ingestion.py`: assets that read from RabbitMQ, plus the sensors that trigger ingestion
- `training.py`: the training dataset, the model and its model card, plus the training job and schedule
- `deployment.py`: model candidates and the deployed model
- `inference.py`: devices at risk, predicted with the deployed model
- `resources.py`: the RabbitMQ connection resource

## Development

### Adding new Python dependencies

```bash
uv add <package>
```

### Validating definitions

```bash
uv run dg check defs
uv run dg list defs
```

### Unit testing

Tests are in the `mlops_demo_tests` directory and you can run them using `pytest`:

```bash
uv run pytest mlops_demo_tests
```

### Model card docs

```bash
uv run mkdocs serve
```

### Schedules and sensors

Schedules and sensors need the [Dagster Daemon](https://docs.dagster.io/guides/deploy/execution/dagster-daemon), which `dg dev` starts automatically.
