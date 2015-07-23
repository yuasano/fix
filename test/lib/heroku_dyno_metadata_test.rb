require 'test_helper'
require 'heroku_dyno_metadata'

class HerokuDynoMetadataTest < ActiveSupport::TestCase
  SAMPLE_FILE = 'sample-etc-heroku-dyno.json'

  setup do
    # clear the cached JSON @data
    HerokuDynoMetadata.instance_variable_set(:@data, nil)
  end

  test "load raises for a non-existent file" do
    assert_raises(Errno::ENOENT) do
      HerokuDynoMetadata.load('non-existent-file')
    end
  end
  test "loads sample file" do
    value = HerokuDynoMetadata.load(SAMPLE_FILE)
    assert_kind_of(Hash, value)
  end
  test "caches sample file" do
    value = HerokuDynoMetadata.cache(SAMPLE_FILE)
    assert_kind_of(Hash, value)
  end
  test "gets a deep key from the sample" do
    HerokuDynoMetadata.load(SAMPLE_FILE)
    value = HerokuDynoMetadata.get('release.commit')
    assert_equal("e831f344ca1fee91cb427fad34c630311b136f2d", value)
  end
  test "gets nil from the sample for a non-existent key" do
    HerokuDynoMetadata.load(SAMPLE_FILE)
    value = HerokuDynoMetadata.get('not.a.real.key')
    assert_nil(value)
  end
  test "get raises without a valid key path" do
    assert_raises(StandardError) do
      HerokuDynoMetadata.get(nil)
    end
  end
  test "gets nil for a non-existent file" do
    # HerokuDynoMetadata.FILE_PATH only exists in deployment, in a dyno
    value = HerokuDynoMetadata.get('release.commit')
    assert_nil(value)
  end
end
