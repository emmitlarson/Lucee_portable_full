#############################################################################
                         Uniform Server Zero XIII 
#############################################################################
 4-1-2017
#############################################################################

-----------
Introuction
-----------
 The Uniform Server Zero is designed for portability, emphasis is
 given to reducing code size. The Uniform Server Zero achieves this
 through a modular implementation. Install only modules (plugins)
 you require these are listed in the documentation plugin section:
 ZeroXIII_documentation_1_0_0.exe

------------------------
Install module (plugins)
------------------------

 All plugins are installed as follows:
  1) Copy a plugin to folder UniServerZ
  2) Double click on the downloaded plugin
  3) This starts the extraction process
  4) If requested allow overwriting of existing files.

 Note: After installing a PHP module always restart UniController.

----------------------
Additional Information
----------------------

 ZeroXII_apache_2_4_25_j.exe - First release
 ZeroXII_apache_2_4_23_j.exe - Updated OpenSSL to 1.0.2j
 ZeroXII_apache_2_4_23_i.exe - Updated OpenSSL to 1.0.2i
 ZeroXII_apache_2_4_23_h.exe - First release

  Note: Apache configuration specific to PHP is contained in folder 
  \core\apache2\conf\extra_us this contains files with following format: 
  php**.conf are provided by each plugin as appropriate.

  For example file php71.conf contains:

  LoadFile ${US_ROOTF}/core/php71/libsasl.dll
  LoadFile ${US_ROOTF}/core/php71/icudt57.dll
  LoadFile ${US_ROOTF}/core/php71/icuin57.dll
  LoadFile ${US_ROOTF}/core/php71/icuio57.dll
  LoadFile ${US_ROOTF}/core/php71/icule57.dll
  LoadFile ${US_ROOTF}/core/php71/iculx57.dll
  LoadFile ${US_ROOTF}/core/php71/icuuc57.dll

 # Load PHP module and add handler
  LoadModule php7_module "${US_ROOTF}/core/php71/php7apache2_4.dll"
  AddHandler application/x-httpd-php .php
 # Configure the path to php.ini
  PHPIniDir "${US_ROOTF}/core/php71/${PHP_INI_SELECT}"

  Above file is included using the following code in core\apache2\conf

  <IfDefine php71>
   Include ${US_ROOTF}/core/apache2/conf/extra_us/php71.conf
  </IfDefine>
  
 

--------------------------------------o0o------------------------------------
            Copyright 2002-2017 The Uniform Server Development Team
                            All rights reserved.


