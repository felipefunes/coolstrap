require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "Creating of a view file" do
  before(:all) do
    ::Coolstrap::Gen::Generate::Project.create('dailyfocus', 'org.codewranglers.demo', 'ipad')
  end
  
  context "Creating a view file and its spec" do
    before(:each) do
      system("cd dailyfocus && bundle exec coolstrap g view user")
    end
    
    it "should have created the view within the source/views directory" do
      File.exists?("dailyfocus/source/views/_user.haml").should be_true
    end
    
    it "should have created the view coffee-script within the spec/views directory" do
      pending
      # File.exists?("spec/views/user_spec.coffee").should be_true
    end
  end
  
  context "Creating a scaffold file and its spec" do
    before(:each) do
      system("cd dailyfocus && bundle exec coolstrap s list User collection")
    end
    
    it "should have created the view within the source/views directory" do
      File.exists?("dailyfocus/source/views/user/_collection.haml").should be_true
    end
  end
  
  context "Creating a scaffold file and its spec" do
    before(:each) do
      system("cd dailyfocus && bundle exec coolstrap s complexlist User complexcollection")
    end
    
    it "should have created the view within the source/views directory" do
      File.exists?("dailyfocus/source/views/user/_complexcollection.haml").should be_true
    end
  end
  
  context "Creating a scaffold tabbar and its spec" do
    before(:each) do
      system("cd dailyfocus && bundle exec coolstrap s tabbar User menu")
    end
    
    it "should have created the view within the source/views/tabbars directory" do
      File.exists?("dailyfocus/source/views/tabbars/user/_menu.haml").should be_true
    end
  end
  
  context "Creating a scaffold toolbar and its spec" do
    before(:each) do
      system("cd dailyfocus && bundle exec coolstrap s toolbar User menu")
    end
    
    it "should have created the view within the source/views/toolbars directory" do
      File.exists?("dailyfocus/source/views/toolbars/user/_menu.haml").should be_true
    end
  end
  
  context "Creating a scaffold dialog and its spec" do
    before(:each) do
      system("cd dailyfocus && bundle exec coolstrap s dialog User menu")
    end
    
    it "should have created the view within the source/views/dialogs directory" do
      File.exists?("dailyfocus/source/views/dialogs/user/_menu.haml").should be_true
    end
  end
  
  after(:all) do
    remove_directories('dailyfocus', 'app', 'spec/views')
  end
end