# enable/disable autoindex module
class apache::module::autoindex ( $ensure = present )
{

  apache::module { 'autoindex': ensure => $ensure }
}
