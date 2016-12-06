# == Class: roles::puppet::pe_compilemasterhub
#
class roles::puppet::pe_compilemasterhub {
  # PE ActiveMq Hub
  include ::puppet_enterprise::profile::amq::hub

  # PE Infrastructure
  include ::puppet_enterprise

  # PE Agent
  include ::puppet_enterprise::profile::agent

  # PE Master
  include ::puppet_enterprise::profile::master
  include ::puppet_enterprise::profile::master::mcollective
  include ::puppet_enterprise::profile::mcollective::peadmin
  include ::pe_repo
  include ::pe_repo::platform::el_7_x86_64

  # PE MCOllective
  include ::puppet_enterprise::profile::mcollective::agent
}
