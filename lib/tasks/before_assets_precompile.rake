task :before_assets_precompile do
  puts "ENV => #{ENV.inspect}"
  Rake::Task['deface:precompile'].invoke
end

Rake::Task['assets:precompile'].enhance ['before_assets_precompile']
