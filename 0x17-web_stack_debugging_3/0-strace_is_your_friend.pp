# Apache returns 500; use this script to fix typo in config

$file_path = '/var/www/html/wp-settings.php'
# Replace the line containing the error "phpp" with "php"
exec { 'replace_error':
    command => "sed -i 's/phpp/php/g' ${file_path}",
    path    => ['/bin','/usr/bin']
}
