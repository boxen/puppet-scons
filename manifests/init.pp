# Public: Install scons via homebrew
#
# Examples
#
#   include scons
class scons {
  include homebrew

  homebrew::formula { 'scons':
    before => Package['boxen/brews/scons'],
  }

  package { 'boxen/brews/scons':
    ensure => '2.2.0-boxen1'
  }
}
