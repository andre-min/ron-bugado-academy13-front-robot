from dotenv import load_dotenv
import os

def carregar_variaveis_ambiente():
    load_dotenv()
    return os.environ
print(carregar_variaveis_ambiente())