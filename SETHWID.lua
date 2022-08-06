local set = {
    iprint = printconsole, -- internal ui print
    clear = rconsoleclear,
    setname = rconsolename,
    error = rconsoleerr,
    warn = rconsolewarn,
    info = rconsoleinfo,
    input = rconsoleinput,
    print = function(text,color)
        if not color then color = "WHITE" end
        local Color = ("@@%s@@"):format(color:upper():gsub(" ","_"))
        rconsoleprint(Color)
        rconsoleprint(text)
        rconsoleprint("@@WHITE@@")
    end,
    line = function(text,color)
        if not color then color = "WHITE" end
        local Color = ("@@%s@@"):format(color:upper():gsub(" ","_"))
        rconsoleprint(Color)
        rconsoleprint(text)
        rconsoleprint("@@WHITE@@")
    end,
}
set.setname('Edog Hub Set Hwid')
set.print("Check Hwid.")
wait(0.1)
rconsoleclear("Check Hwid.")
set.print("Check Hwid..")
wait(0.1)
rconsoleclear("Check Hwid..")
set.print("Check Hwid...")
wait(0.1)
rconsoleclear("Check Hwid...")
set.print("Check Hwid.")
wait(0.1)
rconsoleclear("Check Hwid.")
set.print("Check Hwid..")
wait(0.1)
rconsoleclear("Check Hwid..")
set.print("Check Hwid...")
wait(0.1)
set.print("Check Hwid.")
wait(0.1)
rconsoleclear("Check Hwid.")
set.print("Check Hwid..")
wait(0.1)
rconsoleclear("Check Hwid..")
set.print("Check Hwid...")
wait(0.1)
rconsoleclear("Check Hwid...")
set.print("Check Hwid.")
wait(0.1)
rconsoleclear("Check Hwid.")
set.print("Check Hwid..")
wait(0.1)
rconsoleclear("Check Hwid..")
set.print("Check Hwid...")
wait(0.1)
rconsoleclear("Check Hwid...")
wait(0.12)
local Value = setmetatable({},{
    __index = function(a,b)
        a[b] = {}
        return a[b]
    end
})

function GG(v)
    local MATH = ''
    for i= 1,v do
        MATH = MATH ..string.char(math.random(49,80))
    end
    return MATH
end

sss = wait
set.print('Hello i Na Hee '.. game.Players.LocalPlayer.Name)
set.print("\n[!] Enter Hiwd: ")
local Input = set.input()
local splited = Input:split(" ")
local cmd = splited[1]
table.remove(splited,1)
local args = splited
local http_request_all = http_request or request or HttpPost or syn.request
local HwidBody = http_request_all({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body
local decodeHwid = game:GetService('HttpService'):JSONDecode(HwidBody)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint", "Krnl-Hwid", "krnl-hwid", "Electronid", "Flux-Fingerprint"}
local hwid = ""
for i, v in next, hwid_list do
    if decodeHwid.headers[v] then
        hwid = decodeHwid.headers[v];
        break
    end
end
task.spawn(function()
    pcall(function()
        if cmd == hwid then
            set.info('Hwid correct')
            sss(0.5)
            game.Players.LocalPlayer.kick('')
            spawn(function()
                for i= 1,1000000 do wait()
                    set.info(GG(100))
                end
            end)
        else
            set.error('Wrong Hwid')
        end
    end)
end)
