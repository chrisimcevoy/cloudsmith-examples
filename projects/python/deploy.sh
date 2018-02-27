#!/bin/bash

echo "Deploying Cloudsmith Python Example..."

cd "projects/python/src/dist"

mv cloudsmith_python_example-1.0-py2.py3-none-any.whl cloudsmith_python_example-${TRAVIS_BUILD_NUMBER}-1.0-py2.py3-none-any.whl

cloudsmith push python cloudsmith/examples cloudsmith_python_example-${TRAVIS_BUILD_NUMBER}-1.0-py2.py3-none-any.whl
