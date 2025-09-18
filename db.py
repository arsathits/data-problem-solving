import os
from urllib.parse import quote_plus
import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv

# load .env (only if exists)
load_dotenv()  # reads .env file into environment variables

# read env vars
USERNAME = os.getenv("DB_USER")
PASSWORD = os.getenv("DB_PASS")
HOST     = os.getenv("DB_HOST", "localhost")
PORT     = os.getenv("DB_PORT", "5432")
DATABASE = os.getenv("DB_NAME")

# URL-encode password (handles special characters)
PASSWORD_ENC = quote_plus(PASSWORD)

# Create SQLAlchemy engine (only once)
engine = create_engine(
    f'postgresql://{USERNAME}:{PASSWORD_ENC}@{HOST}:{PORT}/{DATABASE}'
)

def load_table(table_name: str) -> pd.DataFrame:
    return pd.read_sql(f'SELECT * FROM {table_name}', engine)

def run_query(query: str) -> pd.DataFrame:
    return pd.read_sql(query, engine)

def load_tables(table_names: list) -> list:
    return [load_table(t) for t in table_names]

_required = {"DB_USER": USERNAME, "DB_PASS": PASSWORD, "DB_NAME": DATABASE}
_missing = [k for k, v in _required.items() if not v]

if _missing:
    raise RuntimeError(
        f"Missing required DB environment variables: {', '.join(_missing)}. "
        "Did you forget to create a .env file or enable python.terminal.useEnvFile in VS Code?"
    )
