#FROM public.ecr.aws/lambda/python:3.9
FROM python:3.9

# Install poetry
ENV POETRY_VERSION=1.6.1
RUN pip install "poetry==$POETRY_VERSION"

WORKDIR /app
COPY poetry.lock pyproject.toml ./
RUN poetry config virtualenvs.in-project true
RUN poetry install \
      --no-interaction \
      --no-ansi \
      -vvv
