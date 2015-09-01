task :before_assets_precompile do
  $IS_ASSETS_PRECOMPILE = true
  Rake::Task['deface:precompile'].invoke
end

Rake::Task['assets:precompile'].enhance ['before_assets_precompile']
