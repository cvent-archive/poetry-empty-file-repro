# Poetry empty file issue

## Usage

```
docker build --progress=plain --no-cache -t python-lambda . && docker run --entrypoint /bin/ls -it python-lambda -l /app/.venv/lib/python3.9/site-packages/jira/__init__.py
```

The size of the file should not be 0.
