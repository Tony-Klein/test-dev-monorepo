from mono_core import hello


def test_hello() -> None:
    assert hello("dev") == "hello, dev"
