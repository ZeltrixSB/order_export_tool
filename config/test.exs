import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :order_export_tool, OrderExportToolWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "e3i+Qq1bnGJVpkH7bvK9B8gpaEC8lR5gv/6IR5n0Q7c2du0/UNQ4jyXk9UWK82r7",
  server: false

# In test we don't send emails
config :order_export_tool, OrderExportTool.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :order_export_tool, OrderExportToolWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Wk8dXiaQqq6vJwpOHsdQFTrz5exUIOW4s5clCrjWG+7BS/spRBH0Burck+sbpcUS",
  server: false

# In test we don't send emails
config :order_export_tool, OrderExportTool.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :order_export_tool, OrderExportToolWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "9O+h5qk/Ulp9GrmsqMoASIPp0l3sKQ0EXztezw8y1DTlrSZy/1DgeQTgsCcRbiGh",
  server: false

# In test we don't send emails
config :order_export_tool, OrderExportTool.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true
