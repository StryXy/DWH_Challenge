# Use an official lightweight Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory inside the container to /app
WORKDIR /app

# --- CORRECTED PATHS ---
# Copy the files from the 'solution' subfolder into the container's /app directory
COPY solution/requirements.txt .
COPY solution/solution.ipynb .

# Install pandas AND jupyter
RUN pip install --no-cache-dir -r requirements.txt

# --- CORRECTED PATH ---
# Copy the data directory, which is now at the same level as the Dockerfile context
COPY data/ ./data/

# --- FINAL CORRECTED COMMAND ---
# This command tells jupyter to execute the notebook and print ALL output
# (code cells and results) to the console as Markdown text.
CMD ["jupyter", "nbconvert", "--execute", "--to", "markdown", "--stdout", "solution.ipynb"]