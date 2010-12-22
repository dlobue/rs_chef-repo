

log "getting all machine tags"

ruby_block "tag collect start" do
    action :create
    block do
        File.open( '/var/log/rs_reliability_test.log', 'a') do |f|
            f.puts "collecting machine tags at #{Time.now}"
        end
    end
end

server_collection "all" do
    tags 'rs_login:state=active'
end

log "got 'em"

log "now to see what we got"
ruby_block "pprinter" do
    action :create
    block do
        File.open( '/var/log/rs_reliability_test.log', 'a') do |f|
            f.puts "starting at #{Time.now}"
            c = 0
            @node[:server_collection]["all"].each_pair do |k,v|
                c += 1
                f.puts("key: #{k}, value: #{v.inspect}")
            end
            if c > 2 then
                f.puts "SUCCESS"
            else
                f.puts "FAILURE"
            end

            f.puts "ending at #{Time.now}"
        end
    end
end
log "done printing what was found"

