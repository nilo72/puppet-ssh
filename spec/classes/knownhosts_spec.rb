require 'spec_helper'

describe 'ssh::knownhosts', :type => 'class' do
    context "On Debian with version > 8" do
        let :facts do
        {
            :operatingsystem => 'Debian'
            :lsbmajdistrelease => '8'
        end
        it {
            should contain_package('openssh-client').with(:ensure => 'present')
        }
    end
    context "On Debian with version < 8" do
        let :facts do
        {
          :operatingsystem => 'Debian'
          :lsbmajdistrelease => '7'
        }
        end
        it {
            should contain_package('openssh-client').with(:ensure => 'latest')
        }
    end
end
