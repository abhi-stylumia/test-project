# Base image
FROM python:2.7


RUN pip install pylint

COPY pylint_check.py /
RUN chmod +x /pylint_check.py
CMD ["find . -type f -name '*.py' | xargs python pylint_check.py"]
# CMD ["pylint_check.py", "**/*.py"]
# ENTRYPOINT ["python"]