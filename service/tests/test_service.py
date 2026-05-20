from mono_service import describe


def test_describe() -> None:
    text = describe()
    assert "hello, service" in text
    assert "HELLO, TEAM!" in text
