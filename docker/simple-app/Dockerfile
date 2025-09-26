# SPDX-FileCopyrightText: 2025 The Project Authors
# SPDX-License-Identifier: Apache-2.0

FROM python:3.11-slim

WORKDIR /app
COPY app.py /app/

# Install minimal dependencies
RUN pip install --no-cache-dir Flask==3.0.0

ENV FLASK_APP=app.py
EXPOSE 5000

CMD ["python", "app.py"]