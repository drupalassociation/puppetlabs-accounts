# Parse an ssh authorized_keys option string into an array using its expected
# pattern which matches a crazy regex slightly modified from shellwords. The
# pattern should be a string.

Puppet::Functions.create_function(:accounts_ssh_options_parser) do
  dispatch :accounts_ssh_options_parser_String do
    param 'String', :str
  end

  def accounts_ssh_options_parser_String(str)
    str.scan(/(?:\'[^'']*\'|[^,])+/)
  end

end
