# frozen_string_literal: true

require 'rdeunicode/version'
require 'rutie'

# Example how to init lib in your project
module RdeunicodeExample
  Rutie.new(:rdeunicode).init 'Init_rdeunicode', __dir__
end
