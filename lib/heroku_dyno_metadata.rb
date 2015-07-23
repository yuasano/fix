require 'json'

# Requires (currently) alpha platform feature
# `heroku labs:enable runtime-dyno-metadata`
# which writes a JSON data file to "/etc/heroku/dyno".
#
module HerokuDynoMetadata

  FILE_PATH = '/etc/heroku/dyno'.freeze

  def self.load(file_path=FILE_PATH)
    @data = File.open(file_path) do |f|
      JSON.parse(f.read)
    end
  end

  def self.cache(*args)
    @data || load(*args)
  end

  # Main API to fetch Dyno Metadata
  #
  # Returns `nil` if the metadata file or key doesn't exist.
  #
  def self.get(key_path)
    unless key_path.respond_to? :split
      raise ArgumentError, "Requires a dot-delimited key path; for example 'release.commit'"
    end

    catch :no_value do
      key_path.split(".").inject(cache) do |hash, key|
        throw :no_value unless hash.has_key? key
        hash[key]
      end
    end

  rescue Errno::ENOENT
  end

end
