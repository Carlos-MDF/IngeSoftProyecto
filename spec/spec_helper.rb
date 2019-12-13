require 'simplecov'
require 'simplecov-console'
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::Console,
]
SimpleCov.start do
  add_filter ".bundle"
  add_filter "template_steps"
  add_filter "lib/errors/invalid_dimension"
  add_filter "lib/errors/invalid_move"
  add_filter "lib/errors/invalid_position"
end
