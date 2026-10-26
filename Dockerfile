FROM python:3.9

# Install Tesseract OCR with Tamil language support
RUN apt-get update && apt-get install -y     tesseract-ocr     tesseract-ocr-tam     libtesseract-dev     && rm -rf /var/lib/apt/lists/*

RUN useradd -m -u 1000 user
USER user
ENV PATH="/home/user/.local/bin:$PATH"

WORKDIR /app
COPY --chown=user ./requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir gunicorn

COPY --chown=user . /app

# The trained model and vectorizer are committed with Git LFS. Keep them in
# the image; training data is intentionally not part of the deployment.
RUN python -c "from pathlib import Path; files = (Path('/app/model.pkl'), Path('/app/vectorizer.pkl')); missing = [str(f) for f in files if not f.is_file() or f.stat().st_size < 1000]; assert not missing, f'Missing or unresolved model artifacts: {missing}'"

EXPOSE 7860
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:7860", "app:app"]
