require 'spec_helper'

describe 'bluejeans', :type => :class do
  context 'on osfamily RedHat' do
    let(:facts) {{ :osfamily => 'RedHat' }}

    it { should contain_yumrepo('bluejeans') }
    it { should contain_package('bjnplugin') }
  end

  context 'on osfamily Solaris' do
    let(:facts) {{ :osfamily => 'Solaris' }}

    it 'should fail' do
      should raise_error Puppet::Error, /Solaris is not supported/
    end
  end # on osfamily Solaris
end
