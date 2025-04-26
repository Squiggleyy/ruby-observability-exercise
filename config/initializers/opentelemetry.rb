# This is required for OTel to initialize! Also make sure you add necessary SDK to "Gemfile"
require 'opentelemetry/sdk'
require 'opentelemetry/exporter/otlp'
require 'opentelemetry/instrumentation/rack'
require 'opentelemetry/instrumentation/rails'
require 'opentelemetry/instrumentation/net/http'

OpenTelemetry::SDK.configure do |c|
  c.service_name = 'rails-otel-sandbox'
  c.use 'OpenTelemetry::Instrumentation::Rack'
  c.use 'OpenTelemetry::Instrumentation::Rails'
  c.use 'OpenTelemetry::Instrumentation::Net::HTTP'

  c.add_span_processor(
    OpenTelemetry::SDK::Trace::Export::BatchSpanProcessor.new(
      OpenTelemetry::Exporter::OTLP::Exporter.new
    )
  )
end