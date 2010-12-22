

log("getting all machine tags"){ level :debug }

server_collection "all" do
    tags nil
end

log("got 'em"){ level :debug }

#ruby_block "pprinter" do
#    action :create
#    block do
#        require 'pp'
#        pp @node[:server_collection]["all"]
#    end
#end
#
