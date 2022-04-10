#!/bin/sh

set -e

rm -rf build dist
python setup.py check
python setup.py sdist
python setup.py bdist_wheel --universal
twine upload dist/*
