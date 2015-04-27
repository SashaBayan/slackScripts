hr23_names=( Alan Andy Arun Benoy Bren Christian David Eric_B Eric_S Henry Hou Kiran Luke Matt Mike_D Mike_M Neil Omar Peter Preston Rob Ryan_L Ryan_M Sasha Shin Steven Todd Wes Yondy Zach )

hr23_userNames=( alan andrewcoenen arun.suresh benoy.maniara bren csreyes dsernst eric ericschmidt henryw4k kchia k.ranrao lukedavis matt.conrad delucco realmike33 neillokare omarduarte peterkim preston robert_ing ryanjlee ryanmccarter sasha.bayan shin radiobeat33 toddskinner wesleysmyth yokangy zdlopez ) 

#this is different from userNames b/c you cannot use "." in emojis in slack
#order is in line w/ hr_23 names
hr23_emojiNames=( alan andrewcoenen arun_suresh benoy_maniara bren csreyes dsernst eric ericschmidt henryw4k kchia k_ranrao lukedavis matt_conrad delucco realmike33 neillokare omarduarte peterkim preston robert_ing ryanjlee ryanmccarter sasha_bayan shin radiobeat33 toddskinner wesleysmyth yokangy zdlopez )

channel=#shmoosh

j=1

SLACKURL=""

slack(){
  #1.name, 2.channel, 3.text
  for i in "${hr23_names[@]}"
    do
      if [ "$1" = "${hr23_names[$j]}" ]; then
      curl -X POST --data-urlencode "payload={\"channel\": \"$2\", \"username\": \"${hr23_userNames[$j]}\", \"text\": \"$3\", \"icon_emoji\": \":${hr23_emojiNames[$j]}:\"}" "$SLACKURL"
      fi
      #increment count for the for the names array
      ((j++))
    done
}