guard :ruby do
  watch(%r{^ruby/.*test\.rb})
  watch(%r{^ruby/(.*?)/([^/]+)\.rb})     { |m| "ruby/#{m[1]}/#{m[1]}_test.rb" }
end
