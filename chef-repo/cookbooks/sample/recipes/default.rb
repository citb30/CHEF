%w(httpd httpd-devel).each do |packname|
    package "Installing #{packname}" do 
        package_name "#{packname}"
        action :install 
    end
end 
