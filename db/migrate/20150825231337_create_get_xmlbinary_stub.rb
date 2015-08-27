class CreateGetXmlbinaryStub < ActiveRecord::Migration
  def up
    return if ENV["DEPLOYMENT"] == "production"
    execute <<EOF
-- This is used by Heroku Connect to establish who is running the statement.
-- Returns 'base64' on the user session, something else when Connect is running
CREATE FUNCTION get_xmlbinary() RETURNS varchar AS $$
  BEGIN
    RETURN 'heroku-connect'; 
  END;
$$ LANGUAGE plpgsql;

EOF
  end

  def down
    return if ENV["DEPLOYMENT"] == "production"
    execute "DROP FUNCTION get_xmlbinary()"
  end
end
