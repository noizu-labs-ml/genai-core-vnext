ExUnit.configure(formatters: [JUnitFormatter, ExUnit.CLIFormatter])
Application.ensure_all_started(:genai_core)
ExUnit.start()