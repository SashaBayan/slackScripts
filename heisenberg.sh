hr23_names=(Alan Andy Arun Benoy Bren Christian David Eric_B Eric_S Fred Henry Hou Kiran Luke Matt Mike_D Mike_M Neil Omar Peter Preston Rob Ryan_L Ryan_M Sasha Shin Steven Todd Wes Yondy Zach )

hr23_usernames=( alan andrewcoenen arun_suresh benoy_maniara bren csreyes dsernst eric ericschmidt henryw4k kchia k_ranrao lukedavis matt_conrad delucco realmike33 neillokare omarduarte peterkim preston robert_ing ryanjlee ryanmccarter sasha_bayan shin radiobeat33 toddskinner wesleysmyth yokangy zdlopez bethjohnson jimbo vijayram bryanlvenable)

hr23_emojis=(:alan: :andy: :arun: :benoy: :bren: :christian: :david: :eric_b: :eric_s: :fred: :henry: :hou: :kiran: :luke: :matt: :mike_d: :mike_m: :neil: :omar: :peter: :preston: :rob: :ryan_l: :ryan_m: :sasha: :shin: :steven: :todd: :wes: :yondy: :zach: )

narrator="Heisenberg"

narrator_emoji=":heisenberg:"

#change to @peterkim when ready
target="<@peterkim>";

#change to hr23andme when ready
channel=#shmoosh;

story1a="<!everyone> The most common phrase in the Tenderloin has for years been: 'Hide your wife, hide your kids... from Fingah Peet.'"

story1b="<!everyone> Fingah Peet has been terrorizing the people of the TL for decades. How many unsuspecting, innocent people have been flipped the bird by this mad man? How many promising lives have been ruined by his villainy?"

story1c="<!everyone> But today, his reign of terror ends. Today, he goes down. There is a new, far more fearsome villain on the block."

story2="No more half-measures." 

story3="I am the one who knocks."

#counter to be incremented in concert with the names array
j=0

post(){
  #1.channel, 2.username, 3.emoji, 4.text
  curl -X POST --data-urlencode "payload={\"channel\": \"$1\", \"username\": \"$2\", \"text\": \"$4\", \"icon_emoji\": \"$3\"}" https://hooks.slack.com/services/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
}

narratorPost(){
  post $channel $narrator $narrator_emoji "$1"
}

userPost(){
  #1.username, 2.emoji, 3.text
  post $channel $1 $2 $3
  # curl -X POST --data-urlencode "payload={\"channel\": \"$channel\", \"username\": \"${hr23_names[$j]}\", \"text\": \"hey $peter, :fu:\", \"icon_emoji\": \"$i\"}" https://hooks.slack.com/services/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
}

# Heisenberg opening

# narratorPost "$story1a"
# sleep 3;
# narratorPost "$story1b"
# sleep 4;
# narratorPost "$story1c"
# sleep 4;
# narratorPost "$story2"
# sleep 5;
# narratorPost "$story3"
# sleep 5;

##################hr23 ########################
text="hey $target, :fu:"

for i in "${hr23_emojis[@]}"
do
  #post message to slack
  userPost "${hr23_names[$j]}" $i "$text"
  #increment count for the for the names array
  ((j++))
  sleep 1;
done

# Heisenberg closing
narratorPost "(hey $target)"

   # curl -X POST --data-urlencode "payload={\"channel\": \"$channel\", \"username\": \"Heisenberg\", \"text\": \"hey $peter\", \"icon_emoji\": \"$narrator_emoji\"}" https://hooks.slack.com/services/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
   # sleep 3;
   # curl -X POST --data-urlencode "payload={\"channel\": \"$channel\", \"username\": \"Heisenberg\", \"text\": \"i won\", \"icon_emoji\": \"$narrator_emoji\"}" https://hooks.slack.com/services/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