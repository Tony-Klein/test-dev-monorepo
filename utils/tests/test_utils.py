from mono_utils import excited_greeting


def test_excited_greeting() -> None:
    assert excited_greeting("dev") == "HELLO, DEV!"
