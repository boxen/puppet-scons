require 'spec_helper'

describe 'scons' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser'
    }
  end

  it do
    should include_class('homebrew')

    should contain_homebrew__formula('scons').
      with_before('Package[boxen/brews/scons]')

    should contain_package('boxen/brews/scons').with({
      :ensure => '2.2.0-boxen1'
    })
  end
end
