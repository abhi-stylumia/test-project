# Base image
FROM python:2.7


RUN pip install pylint

RUN apt-get update && apt-get install $INPUT_OS_DEPENDENCIES

RUN pip install -r requirements.txt

COPY pylint_check.py /
RUN chmod +x /pylint_check.py

COPY Entrypoint.sh /
RUN chmod +x Entrypoint.sh
ENTRYPOINT ["/Entrypoint.sh"]

# COPY pylint_check.py /
# RUN chmod +x /pylint_check.py
# CMD ["find . -type f -name '*.py' | xargs python /pylint_check.py"]
