from mono_core import hello


def excited_greeting(name: str) -> str:
    return hello(name).upper() + "!"
