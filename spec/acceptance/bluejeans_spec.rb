require 'spec_helper_acceptance'

describe 'bluejeans class' do
  describe 'running puppet code' do
    pp = <<-EOS
      if $::osfamily == 'RedHat' {
        class { 'epel': } -> Class['bluejeans']
      }

      include ::bluejeans
    EOS

    it 'applies the manifest twice with no stderr' do
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end

    describe package('bjnplugin') do
      it { should be_installed }
    end

    describe yumrepo('bluejeans') do
      it { should be_enabled }
    end
  end
end
