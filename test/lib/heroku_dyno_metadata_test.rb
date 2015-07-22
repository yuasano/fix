require 'test_helper'
require 'heroku_dyno_metadata'

class HerokuDynoMetadataTest < ActiveSupport::TestCase
  SAMPLE_FILE = 'sample-etc-heroku-dyno.json'

  test "raises file not found" do
    assert_raises(Errno::ENOENT) do
      HerokuDynoMetadata.read('non-existent-file')
    end
  end
  test "reads sample file" do
    value = HerokuDynoMetadata.read(SAMPLE_FILE)
    assert_kind_of(Hash, value)
  end
  test "caches sample file" do
    value = HerokuDynoMetadata.cache(SAMPLE_FILE)
    assert_kind_of(Hash, value)
  end
  test "gets a deep key from the sample" do
    HerokuDynoMetadata.read(SAMPLE_FILE)
    value = HerokuDynoMetadata.get('release.commit')
    assert_equal("e831f344ca1fee91cb427fad34c630311b136f2d", value)
  end
  test "gets nil from the sample for a non-existent key" do
    HerokuDynoMetadata.read(SAMPLE_FILE)
    value = HerokuDynoMetadata.get('not.a.real.key')
    assert_nil(value)
  end
  test "raises without a valid key path" do
    assert_raises(StandardError) do
      HerokuDynoMetadata.get(nil)
    end
  end
end
