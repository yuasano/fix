task :before_assets_precompile do
  Rake::Task['deface:precompile'].invoke
end

Rake::Task['assets:precompile'].enhance ['before_assets_precompile']
