ARG BASE_IMAGE
ARG PYTHON_VERSION
FROM ${BASE_IMAGE}:${PYTHON_VERSION}

ARG POETRY_VERSION
# Install Poetry for dependency management
RUN pip --no-cache-dir install poetry==$POETRY_VERSION

RUN poetry config virtualenvs.create false

