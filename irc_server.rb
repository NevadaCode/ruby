require 'socket'

server = 'moon.freenode.net'
port = 6667
socket = TCPSocket.open(server, port)

nickname = 'TheHappyBot'
channel = '#NevadaCode123'

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
socket.puts "PRIVMSG #{channel} :Hi, how are you today?"

message = socket.gets


quotes = ['"The greatest fear in the world is the opinion of others, and the moment you are unafraid of the crowd, you are no longer a sheep, you become a lion. A great roar arises in your heart, the roar of freedom." -Osho',
    '"Respect life, revere life. There is nothing more holy than life, nothing more divine than life." -Osho', 
    '"Love is the goal, life is the journey." -Osho', 
    '"Tomorrow never comes, it is always today." -Osho', 
    '"Love and respect yourself and never compromise for anything. And then you will be surprised how much growth starts happening of its own accord.. as if rocks have been removed and the river has started flowing." -Osho',
    '"Drop the idea of becoming someone, because you are already a masterpiece. You cannot be improved. You have only to come to it, to know it, to realize it." -Osho',
    '"To be a happy person, one has to drop all comparison. Drop all these stupid ideas of being superior and inferior. You are neither superior nor inferior. You are simply yourself! There exists no one like you, no one with whom you can be compared. Then, suddenly, you are at home." -Osho',
    '"That is the simple secret of happiness. Whatever you are doing, don’t let past move your mind; don’t let future disturb you. Because the past is no more, and the future is not yet. To live in the memories, to live in the imagination, is to live in the non-existential. And when you are living in the non-existential, you are missing that which is existential. Naturally you will be miserable, because you will miss your whole life." -Osho']


while message = socket.gets do 
    puts message
    if message.match('^PING :')
        sever = message.split(':').last
        puts "PONG #{sever}"
        socket.puts "PONG #{sever}"
       elsif message.match('I feel down')
        #print random Osho quote
        quote = quotes.sample
        puts "PRVMSG #{channel} : #{quote}"
        socket.puts "PRVMSG #{channel} : #{quote}"
    end
end


