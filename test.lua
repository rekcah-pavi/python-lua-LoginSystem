
server = "your website"

c = gg.makeRequest(server.."/mykey").content

ch = gg.prompt(
	{'Enter your key and pres ok to continue'},
	{[1] = c},
	{[1] = 'text'})

if ch == nill then
 gg.alert("Please enter key and press ok")
   os.exit()
end

pass = ch[1]

str = pass
if string.find(str, "/") then
  gg.alert("Invlied Key")
  os.exit()
end

if pass == "" then
      x = gg.alert("Wrong key\n Get key form here \n\n"..server,"copy link")
   if x == 1 then 
      gg.copyText(server)
   end
   os.exit()
end

a = gg.makeRequest(server.."/login/"..pass.."").content

if a == "true" then
   gg.alert("Login Success")
elseif a =="false" then
   x = gg.alert("Wrong key\n Get key form here \n\n "..server,"copy link")
   if x == 1 then 
      gg.copyText(server)
   end
   os.exit()
else
  gg.alert("No response form server/No internet Connection")
  os.exit()
end



