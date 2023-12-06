function queryIPInfo(command)
    if command == "myip" then
        os.execute("curl -s https://api.ipify.org")
    elseif command == "mygeoip" then
        os.execute("curl -s 'https://ipapi.co/json' | jq . | bat -p -l json")
    elseif command == "geoip" then
        os.execute("curl -s http://ip-api.com/json/" .. arg[2] .. " | jq . | bat -p -l json")
    else
        os.execute("echo not found command")
    end
end

queryIPInfo(arg[1])
