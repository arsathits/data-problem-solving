import pandas as pd
from sqlalchemy import create_engine
from urllib.parse import quote_plus

# Database credentials
USERNAME = "postgres"
PASSWORD = quote_plus("Thanda@23")
HOST = "localhost"
PORT = "5432"
DATABASE = "data_problems"

# Create SQLAlchemy engine (only once)
engine = create_engine(f'postgresql://{USERNAME}:{PASSWORD}@{HOST}:{PORT}/{DATABASE}')

def load_table(table_name: str) -> pd.DataFrame:
    """
    Load a table from PostgreSQL into a pandas DataFrame.
    """
    return pd.read_sql(f'SELECT * FROM {table_name}', engine)


