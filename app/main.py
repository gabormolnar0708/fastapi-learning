from fastapi import FastAPI
from typing import Optional
from pydantic import BaseModel

app = FastAPI()


@app.get("/")
async def root():
    return {
        "text": "Welcome in the root!"
    }