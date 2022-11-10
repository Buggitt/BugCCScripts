local chatbox = peripheral.find("chatBox")

local sleepMessage = "You can sleep."
-- will show with brackets [name here]
local blue = "\167b"
local white = "\167f"
local chatBotName = blue .. "SleepBot" .. white

-- chatbox.sendMessage(chatBotName)

players = {"Buggitt", "Snarphe"}

-- print(#players)
-- Functions
function sendSleepMessage ()
  for i=1, #players do
    chatbox.sendMessageToPlayer( sleepMessage, players[i], chatBotName)
    os.sleep(1)
  end
end

print("Starting...")
while true do

  if(os.time() >= 18.541 and os.time() < 20) then
    sendSleepMessage()
    os.sleep(10)
  end

  if(os.time() >= 20 and os.time() < 24) then
     sendSleepMessage()
     os.sleep(30)
  end

  if(os.time() >= 0 and os.time() < 5) then
     sendSleepMessage()
     os.sleep(60)
  end

os.sleep(1)
end --while
