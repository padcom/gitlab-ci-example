#!/bin/sh

./mc rb --force localhost/portals
./mc mb localhost/portals
./mc anonymous set download localhost/portals
