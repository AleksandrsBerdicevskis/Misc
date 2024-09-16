f = File.open("saldo20v03.txt","r:utf-8")
letterhash = Hash.new(0)
f.each_line do |line|
    line2 = line.strip
    if line2[0] != "#" and line2[0] != "_"
        letterhash[line2[0].downcase] += 1
    end
end
o = File.open("first_letter_freqs.tsv","w:utf-8")
o.puts "letter\tfreq"
letterhash.keys.sort.each do |letter|
    o.puts "#{letter}\t#{letterhash[letter]}"
end

