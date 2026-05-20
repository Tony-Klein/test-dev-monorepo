from mono_core import hello
from mono_utils import excited_greeting


def describe() -> str:
    return " | ".join([
        hello("service"),
        excited_greeting("team")
    ])
