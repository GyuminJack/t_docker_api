FROM python:3.7
RUN pip install --upgrade pip

COPY ./fastapi_main.py /app/fastapi_main.py
COPY ./entrypoint.sh /app/entrypoint.sh
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app

RUN pip --trusted-host pypi.org --trusted-host files.pythonhosted.org install -r requirements.txt
RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]