# Parse an ssh authorized_keys option string into an array using its expected
# pattern which matches a CSV. The pattern should be a string.

require 'csv'

Puppet::Functions.create_function(:accounts_ssh_options_parser) do
  dispatch :accounts_ssh_options_parser_String do
    param 'String', :str
  end

  def accounts_ssh_options_parser_String(str)
    CSV.parse_line(str.to_csv)
  end
end
