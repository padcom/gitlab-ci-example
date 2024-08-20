#!/bin/sh

./mc rb --force localhost/forms
./mc mb localhost/forms
./mc anonymous set download localhost/forms
