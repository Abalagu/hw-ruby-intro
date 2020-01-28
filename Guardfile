guard 'rspec', cmd: "bundle exec rspec" do
  # watch /lib/ files
  watch(%r{^lib/(.+).rb$}) do |m|
    # "spec/#{m[1]}_spec.rb" # [1] stands for first capture group
    ["spec/part1_spec.rb", "spec/part2_spec.rb", "spec/part3_spec.rb"]
  end
 
# watch /spec/ files
  watch(%r{^spec/(.+).rb$}) do |m|
    "spec/#{m[1]}.rb"
  end
end