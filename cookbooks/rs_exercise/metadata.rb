maintainer       "Dominic"
maintainer_email "dominic@geodelic.com"
license          "All rights reserved"
description      "Installs/Configures rs_exercise"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1"


recipe "rs_exercise::noise", "a hello world-esque recipe"
recipe "rs_exercise::tagtest", "see what our tags look like"
recipe "rs_exercise::dnsupdate", "manually initiate a dns update"
recipe "rs_exercise::remotetest", "test remote recipe resource"
recipe "rs_exercise::rs_reliability", "make sure that the rs machine tag api is reliable"

