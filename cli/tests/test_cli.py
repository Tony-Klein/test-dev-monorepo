from mono_cli.main import main


def test_main_prints_output(capsys) -> None:
    main()
    output = capsys.readouterr().out
    assert "mono-cli" in output
    assert "hello, service" in output