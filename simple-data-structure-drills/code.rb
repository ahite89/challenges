transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

puts transactions.first
puts transactions[1]
puts transactions[3]
puts transactions.last
puts transactions[-2]
puts transactions[-5]
puts transactions[5]
puts transactions.count
puts transactions.count {|i| i > 0}
puts transactions.count {|i| i < 0}
puts transactions.min
puts transactions.max

puts transactions.inject {|sum,i| sum + i}
puts 239_900 + (transactions.inject {|sum,i| sum + i})

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

 puts best_records.count
 puts best_records.keys
 puts best_records.values
 best_records.delete("Eminem")
 best_records["Wilco"]= "Yankee Hotel Foxtrot"
 best_records["Nirvana"]= "In Utero"
 best_records.has_key?("Nirvana")
 best_records.has_key?("Soundgarden")
 if best_records.include?("Soundgarden") == false
	  best_records["Soundgarden"] = "Superunknown"
 end

 puts best_records.keys{|k,v| k.length <= 6}
 puts best_records.values{|k,v| v.length > 10}
