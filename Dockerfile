FROM python:3.12
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
# RUN pip install flask
# RUN pip install -r requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]