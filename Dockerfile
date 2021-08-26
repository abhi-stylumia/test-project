# Base image
FROM python:2.7


RUN pip install pylint
RUN python --version ; pip --version ; pylint --version

COPY pylint_check.py /
RUN chmod +x /pylint_check.py
CMD ["pylint_check.py", "**/*.py"]
ENTRYPOINT ["python"]