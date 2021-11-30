#!/bin/bash
uvicorn fastapi_main:app --reload --host=0.0.0.0 --port=80