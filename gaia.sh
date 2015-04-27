target="<!everyone>"

channel=#shmoosh

SLACKURL=""

############## #list of emojis #######################

emojis=(:bowtie: :smile: :laughing: :blush: :smiley: :relaxed: :smirk: :heart_eyes: :kissing_heart: :kissing_closed_eyes: :flushed: :relieved: :satisfied: :grin: :wink: :stuck_out_tongue_winking_eye: :stuck_out_tongue_closed_eyes: :grinning: :kissing: :kissing_smiling_eyes: :stuck_out_tongue: :sleeping: :worried: :frowning: :anguished: :open_mouth: :grimacing: :confused: :hushed: :expressionless: :unamused: :sweat_smile: :sweat: :disappointed_relieved: :weary: :pensive: :disappointed: :confounded: :fearful: :cold_sweat: :persevere: :cry: :sob: :joy: :astonished: :scream: :neckbeard: :tired_face: :angry: :rage: :triumph: :sleepy: :yum: :mask: :sunglasses: :dizzy_face: :imp: :smiling_imp: :neutral_face: :no_mouth: :innocent: :alien: :hankey: :walking: :runner: :couple: :family: :two_men_holding_hands: :two_women_holding_hands: :dancer: :dancers: :ok_woman: :no_good: :informatiocn_desk_person: :person_frowning: :bow: :couplekiss: :couple_with_heart: :massage: :haircut: :boy: :girl: :woman: :man: :baby: :older_woman: :older_man: :person_with_blond_hair: :man_with_gua_pi_mao: :man_with_turban: :construction_worker: :cop: :angel: :princess: :smiley_cat: :smile_cat: :heart_eyes_cat: :kissing_cat: :smirk_cat: :scream_cat: :crying_cat_face: :joy_cat: :pouting_cat: :japanese_ogre: :japanese_goblin: :see_no_evil: :hear_no_evil: :speak_no_evil: :guardsman: :skull: :love_letter: :bust_in_silhouette: :busts_in_silhouette: :feelsgood: :finnadie: :goberserk: :godmode: :hurtrealbad: :rage1: :suspect: :trollface: :cat: :dog: :mouse: :hamster: :rabbit: :wolf: :frog: :tiger: :koala: :bear: :pig: :cow: :boar: :monkey_face: :monkey: :horse: :racehorse: :camel: :sheep: :elephant: :panda_face: :snake: :bird: :baby_chick: :hatched_chick: :hatching_chick: :chicken: :penguin: :turtle: :bug: :honeybee: :ant: :beetle: :snail: :octopus: :tropical_fish: :fish: :whale: :whale2: :dolphin: :cow2: :ram: :rat: :water_buffalo: :tiger2: :rabbit2: :dragon: :goat: :rooster: :dog2: :pig2: :mouse2: :ox: :dragon_face: :blowfish: :crocodile: :dromedary_camel: :leopard: :cat2: :poodle: :bouquet: :cherry_blossom: :tulip: :four_leaf_clover: :rose: :sunflower: :hibiscus: :maple_leaf: :leaves: :fallen_leaf: :herb: :mushroom: :cactus: :palm_tree: :evergreen_tree: :deciduous_tree: :chestnut: :seedling: :blossom: :ear_of_rice: :shell: :sun_with_face:  :full_moon_with_face: :new_moon_with_face: :new_moon: :full_moon: :last_quarter_moon_with_face: :first_quarter_moon_with_face: :moon: :earth_africa: :earth_americas: :earth_asia: :squirrel:)

post(){
  #1.channel, 2.username, 3.emoji, 4.text
  #Grab SLACKURL from config
  curl -X POST --data-urlencode "payload={\"channel\": \"$1\", \"username\": \"$2\", \"text\": \"$4\", \"icon_emoji\": \"$3\"}" https://hooks.slack.com/services/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
}

userPost(){
  #1.username, 2.emoji, 3.text
  post $channel "$1" "$2" "$3"
}

k=1

for i in "${emojis[@]}"
  do
    names="Gaia's children $k"
    text="hey $target, Gaia loves you :heart:"
    userPost "$names" "$i" "$text"
    ((k++))
  done
