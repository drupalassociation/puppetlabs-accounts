# Parse an ssh authorized_keys option string into an array using its expected
# pattern which matches a CSV. The pattern should be a string.

require 'csv'

Puppet::Functions.create_function(:options_parser) do
  dispatch :options_parser_String do
    param 'String', :str
  end

  def options_parser_String(str)
    CSV.parse_line(str)
  end
end
