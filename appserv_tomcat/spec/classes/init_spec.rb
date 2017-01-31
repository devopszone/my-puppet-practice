require 'spec_helper'
describe 'appserv_tomcat' do
  context 'with default values for all parameters' do
    it { should contain_class('appserv_tomcat') }
  end
end
