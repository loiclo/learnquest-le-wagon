puts "Cleaning up database..."

UserQuest.destroy_all
p "-------all user quests destroyed-------"
UserQuestion.destroy_all
p "-------all user questions destroyed-------"
UserQuiz.destroy_all
p "-------all user quizzes destroyed-------"
UserWorld.destroy_all
p "-------all user worlds destroyed-------"
Answer.destroy_all
p "-------all answers destroyed-------"
Quest.destroy_all
p "-------all quests destroyed-------"
Question.destroy_all
p "-------all questions destroyed-------"
Quiz.destroy_all
p "-------all quizzes destroyed-------"
World.destroy_all
p "-------all worlds destroyed-------"
User.destroy_all
p "-------all users destroyed-------"

p "-------all avatars destroyed-------"
Avatar.destroy_all

puts "Database cleaned"


p "-------creating avatars--------"

chat_loic = Avatar.create!(name: "chat", img_url: "avatar2.png", price: 30)
pirate_hugo = Avatar.create!(name: "pirate", img_url: "avatar3.png", price: 30)
raton_guillaume = Avatar.create!(name: "raton", img_url: "avatar1.png", price: 100)
canard_eva = Avatar.create!(name: "canard", img_url: "avatar4.png",price: 1030)

p "--------#{User.count} avatars created--------"

p "-------creating users--------"

hugo = User.create!(email: "hugo@gmail.com", password: "123456", name: "Hugo")
guillaume = User.create!(email: "guillaume@gmail.com", password: "123456", name: "Guillaume")
loic = User.create!(email: "loic@gmail.com", password: "123456", name: "Loic")
eva = User.create!(email: "eva@gmail.com", password: "123456", name: "Eva")

p "--------#{User.count} users created--------"




p "-------creating user avatar--------"

# UserAvatar.create!(user: hugo , avatar: chat_loic)
# UserAvatar.create!(user: guillaume, avatar: chat_loic)
# UserAvatar.create!(user: loic, avatar: chat_loic)
# UserAvatar.create!(user: eva, avatar: chat_loic)

# p "--------#{User.count} user avatar created--------"


p "-------creating worlds--------"

world_one = World.create!(title: "Maths", description: "Bienvenue dans le monde merveilleux des Mathématiques", reward: 1000)
world_two = World.create!(title: "Français", description: "Bienvenue dans le monde merveilleux du Français", reward: 1000)

p "————#{World.count} worlds created--------"

p "-------creating quests--------"
world_one_quest_one = Quest.create!(title: "Fais un quiz de Maths", world_id: world_one.id, reward: 200)
world_two_quest_one = Quest.create!(title: "Fais un quiz de Français", world_id: world_two.id, reward: 200)

p "--------#{Quest.count} quests created--------"

p "-------creating user_quests--------"

hugo_user_world_one_quest_one = UserQuest.create!(user_id: hugo.id, quest_id: world_one_quest_one.id, done_flag: false)
hugo_user_world_two_quest_one = UserQuest.create!(user_id: hugo.id, quest_id: world_two_quest_one.id, done_flag: false)

guillaume_user_world_one_quest_one = UserQuest.create!(user_id: guillaume.id, quest_id: world_one_quest_one.id, done_flag: false)
guillaume_user_world_two_quest_one = UserQuest.create!(user_id: guillaume.id, quest_id: world_two_quest_one.id, done_flag: false)

loic_user_world_one_quest_one = UserQuest.create!(user_id: loic.id, quest_id: world_one_quest_one.id, done_flag: false)
loic_user_world_two_quest_one = UserQuest.create!(user_id: loic.id, quest_id: world_two_quest_one.id, done_flag: false)

eva_user_world_one_quest_one = UserQuest.create!(user_id: eva.id, quest_id: world_one_quest_one.id, done_flag: false)
eva_user_world_two_quest_one = UserQuest.create!(user_id: eva.id, quest_id: world_two_quest_one.id, done_flag: false)

p "————#{UserQuest.count} user_quests created--------"

p "-------creating quizzes--------"

world_one_quiz_one = Quiz.create!(world_id: world_one.id, title: "Maths niveau 1", description: "Bienvenue dans le quizz Maths niveau 1", number: 1, reward: 100)
world_one_quiz_two = Quiz.create!(world_id: world_one.id, title: "Maths niveau 2", description: "Bienvenue dans le quizz Maths niveau 2", number: 2, reward: 100)


world_two_quiz_one = Quiz.create!(world_id: world_two.id, title: "Français niveau 1", description: "Bienvenue dans le quizz Français niveau 1", number: 1, reward: 100)
world_two_quiz_two = Quiz.create!(world_id: world_two.id, title: "Français niveau 2", description: "Bienvenue dans le quizz Français niveau 2", number: 2, reward: 100)


# last quiz created
# On crée un quiz qu'il faudra remplacer a l'avenir par des vrais quizzes
quizz_math_generique = Quiz.create!(world_id: world_one.id, title: "Quizz Maths test", description: "Bienvenue dans le quizz Maths ", number: 3, reward: 100)
quizz_francais_generique = Quiz.create!(world_id: world_two.id, title: "Quizz Français test", description: "Bienvenue dans le quizz Français ", number: 3, reward: 100)


p "————#{Quiz.count} quizzes created--------"

p "-------creating questions--------"

world_one_quiz_one_question_one = Question.create!(quiz_id: world_one_quiz_one.id, title: "Le nombre 327 se situe entre...", number: 1, reward: 10)
world_one_quiz_one_question_two = Question.create!(quiz_id: world_one_quiz_one.id, title: "Quel nombre n'est pas un multiple de 6?", number: 2, reward: 20)
world_one_quiz_one_question_three = Question.create!(quiz_id: world_one_quiz_one.id, title: "Quel nombre est le quart de 24", number: 3, reward: 30)

world_one_quiz_two_question_one = Question.create!(quiz_id: world_one_quiz_two.id, title: "Donne le résultat de la multiplication suivante : 8 x 7", number: 1, reward: 10)
world_one_quiz_two_question_two = Question.create!(quiz_id: world_one_quiz_two.id, title: "Donne le résultat de la division suivante : 56 / 8", number: 2, reward: 20)
world_one_quiz_two_question_three = Question.create!(quiz_id: world_one_quiz_two.id, title: "Pour avoir 56 bonbons, combien de paquets de 8 bonbons dois-je acheter?", number: 3, reward: 30)



world_two_quiz_one_question_one = Question.create!(quiz_id: world_two_quiz_one.id, title: "Question 1 à créer", number: 1, reward: 30)
world_two_quiz_one_question_two = Question.create!(quiz_id: world_two_quiz_one.id, title: "Question 2 à créer", number: 2, reward: 30)
world_two_quiz_one_question_three = Question.create!(quiz_id: world_two_quiz_one.id, title: "Question 3 à créer", number: 3, reward: 30)

world_two_quiz_two_question_one = Question.create!(quiz_id: world_two_quiz_two.id, title: "Question 1 à créer", number: 1, reward: 30)
world_two_quiz_two_question_two = Question.create!(quiz_id: world_two_quiz_two.id, title: "Question 2 à créer", number: 2, reward: 30)
world_two_quiz_two_question_three = Question.create!(quiz_id: world_two_quiz_two.id, title: "Question 3 à créer", number: 3, reward: 30)


p "————#{Question.count} questions created--------"

p "-------creating answers--------"

world_one_quiz_one_question_one_answer_one = Answer.create!(question_id: world_one_quiz_one_question_one.id, content: "310 et 320", number: 1, good_answer_flag: false)
world_one_quiz_one_question_one_answer_two = Answer.create!(question_id: world_one_quiz_one_question_one.id, content: "320 et 330", number: 2, good_answer_flag: true)
world_one_quiz_one_question_one_answer_three = Answer.create!(question_id: world_one_quiz_one_question_one.id, content: "330 et 440", number: 3, good_answer_flag: false)


world_one_quiz_one_question_two_answer_one = Answer.create!(question_id: world_one_quiz_one_question_two.id, content: "12", number: 1, good_answer_flag: false)
world_one_quiz_one_question_two_answer_two = Answer.create!(question_id: world_one_quiz_one_question_two.id, content: "54", number: 2, good_answer_flag: false)
world_one_quiz_one_question_two_answer_three = Answer.create!(question_id: world_one_quiz_one_question_two.id, content: "32", number: 3, good_answer_flag: true)


world_one_quiz_one_question_three_answer_one = Answer.create!(question_id: world_one_quiz_one_question_three.id, content: "24", number: 1, good_answer_flag: false)
world_one_quiz_one_question_three_answer_two = Answer.create!(question_id: world_one_quiz_one_question_three.id, content: "12", number: 2, good_answer_flag: false)
world_one_quiz_one_question_three_answer_three = Answer.create!(question_id: world_one_quiz_one_question_three.id, content: "6", number: 3, good_answer_flag: true)


world_one_quiz_two_question_one_answer_one = Answer.create!(question_id: world_one_quiz_two_question_one.id, content: "56", number: 1, good_answer_flag: true)
world_one_quiz_two_question_one_answer_two = Answer.create!(question_id: world_one_quiz_two_question_one.id, content: "65", number: 2, good_answer_flag: false)
world_one_quiz_two_question_one_answer_three = Answer.create!(question_id: world_one_quiz_two_question_one.id, content: "58", number: 3, good_answer_flag: false)



world_one_quiz_two_question_two_answer_one = Answer.create!(question_id: world_one_quiz_two_question_two.id, content: "6", number: 1, good_answer_flag: false)
world_one_quiz_two_question_two_answer_two = Answer.create!(question_id: world_one_quiz_two_question_two.id, content: "7", number: 2, good_answer_flag: true)
world_one_quiz_two_question_two_answer_three = Answer.create!(question_id: world_one_quiz_two_question_two.id, content: "8", number: 3, good_answer_flag: false)



world_one_quiz_two_question_three_answer_one = Answer.create!(question_id: world_one_quiz_two_question_three.id, content: "7 paquets", number: 1, good_answer_flag: true)
world_one_quiz_two_question_three_answer_two = Answer.create!(question_id: world_one_quiz_two_question_three.id, content: "8 paquets", number: 2, good_answer_flag: false)
world_one_quiz_two_question_three_answer_three = Answer.create!(question_id: world_one_quiz_two_question_three.id, content: "9 paquets", number: 3, good_answer_flag: false)


world_two_quiz_one_question_one_answer_one = Answer.create!(question_id: world_two_quiz_one_question_one.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_one_question_one_answer_two = Answer.create!(question_id: world_two_quiz_one_question_one.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_one_question_one_answer_three = Answer.create!(question_id: world_two_quiz_one_question_one.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)


world_two_quiz_one_question_two_answer_one = Answer.create!(question_id: world_two_quiz_one_question_two.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_one_question_two_answer_two = Answer.create!(question_id: world_two_quiz_one_question_two.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_one_question_two_answer_three = Answer.create!(question_id: world_two_quiz_one_question_two.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)


world_two_quiz_one_question_three_answer_one = Answer.create!(question_id: world_two_quiz_one_question_three.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_one_question_three_answer_two = Answer.create!(question_id: world_two_quiz_one_question_three.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_one_question_three_answer_three = Answer.create!(question_id: world_two_quiz_one_question_three.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)


world_two_quiz_two_question_one_answer_one = Answer.create!(question_id: world_two_quiz_two_question_one.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_two_question_one_answer_two = Answer.create!(question_id: world_two_quiz_two_question_one.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_two_question_one_answer_three = Answer.create!(question_id: world_two_quiz_two_question_one.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)


world_two_quiz_two_question_two_answer_one = Answer.create!(question_id: world_two_quiz_two_question_two.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_two_question_two_answer_two = Answer.create!(question_id: world_two_quiz_two_question_two.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_two_question_two_answer_three = Answer.create!(question_id: world_two_quiz_two_question_two.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)


world_two_quiz_two_question_three_answer_one = Answer.create!(question_id: world_two_quiz_two_question_three.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_two_question_three_answer_two = Answer.create!(question_id: world_two_quiz_two_question_three.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_two_question_three_answer_three = Answer.create!(question_id: world_two_quiz_two_question_three.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)

p "————#{Answer.count} answers created--------"

p "-------creating user_worlds--------"

hugo_user_world_one = UserWorld.create!(user_id: hugo.id, world_id: world_one.id, done_flag: false)
hugo_user_world_two = UserWorld.create!(user_id: hugo.id, world_id: world_two.id, done_flag: false)

guillaume_user_world_one = UserWorld.create!(user_id: guillaume.id, world_id: world_one.id, done_flag: false)
guillaume_user_world_two = UserWorld.create!(user_id: guillaume.id, world_id: world_two.id, done_flag: false)

loic_user_world_one = UserWorld.create!(user_id: loic.id, world_id: world_one.id, done_flag: false)
loic_user_world_two = UserWorld.create!(user_id: loic.id, world_id: world_two.id, done_flag: false)

eva_user_world_one = UserWorld.create!(user_id: eva.id, world_id: world_one.id, done_flag: false)
eva_user_world_two = UserWorld.create!(user_id: eva.id, world_id: world_two.id, done_flag: false)

p "————#{UserWorld.count} user_worlds created--------"

p "-------creating user_quizzes--------"

hugo_user_world_one_quiz_one = UserQuiz.create!(user_id: hugo.id, quiz_id: world_one_quiz_one.id, done_flag: false)
hugo_user_world_one_quiz_two = UserQuiz.create!(user_id: hugo.id, quiz_id: world_one_quiz_two.id, done_flag: false)


hugo_user_world_two_quiz_one = UserQuiz.create!(user_id: hugo.id, quiz_id: world_two_quiz_one.id, done_flag: false)
hugo_user_world_two_quiz_two = UserQuiz.create!(user_id: hugo.id, quiz_id: world_two_quiz_two.id, done_flag: false)


# on crée 7 userquiz (pour arriver a un total de 9) afin de les afficher proprement.
# c'est 7 fois le meme quizz (créé plus haut)
# a modifier par la suite
7.times do
  UserQuiz.create!(user_id: hugo.id, quiz_id: quizz_math_generique.id, done_flag: false)
  UserQuiz.create!(user_id: hugo.id, quiz_id: quizz_francais_generique.id, done_flag: false)
end





guillaume_user_world_one_quiz_one = UserQuiz.create!(user_id: guillaume.id, quiz_id: world_one_quiz_one.id, done_flag: false)
guillaume_user_world_one_quiz_two = UserQuiz.create!(user_id: guillaume.id, quiz_id: world_one_quiz_two.id, done_flag: false)
guillaume_user_world_two_quiz_one = UserQuiz.create!(user_id: guillaume.id, quiz_id: world_two_quiz_one.id, done_flag: false)
guillaume_user_world_two_quiz_two = UserQuiz.create!(user_id: guillaume.id, quiz_id: world_two_quiz_two.id, done_flag: false)

loic_user_world_one_quiz_one = UserQuiz.create!(user_id: loic.id, quiz_id: world_one_quiz_one.id, done_flag: false)
loic_user_world_one_quiz_two = UserQuiz.create!(user_id: loic.id, quiz_id: world_one_quiz_two.id, done_flag: false)
loic_user_world_two_quiz_one = UserQuiz.create!(user_id: loic.id, quiz_id: world_two_quiz_one.id, done_flag: false)
loic_user_world_two_quiz_two = UserQuiz.create!(user_id: loic.id, quiz_id: world_two_quiz_two.id, done_flag: false)

eva_user_world_one_quiz_one = UserQuiz.create!(user_id: eva.id, quiz_id: world_one_quiz_one.id, done_flag: false)
eva_user_world_one_quiz_two = UserQuiz.create!(user_id: eva.id, quiz_id: world_one_quiz_two.id, done_flag: false)
eva_user_world_two_quiz_one = UserQuiz.create!(user_id: eva.id, quiz_id: world_two_quiz_one.id, done_flag: false)
eva_user_world_two_quiz_two = UserQuiz.create!(user_id: eva.id, quiz_id: world_two_quiz_two.id, done_flag: false)

p "————#{UserQuiz.count} user_quizzes created--------"

p "-------creating user_questions--------"

hugo_user_world_one_quiz_one_question_one = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_one_question_one.id, done_flag: false, try: 0)
hugo_user_world_one_quiz_one_question_two = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_one_question_two.id, done_flag: false, try: 0)
hugo_user_world_one_quiz_one_question_three = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_one_question_three.id, done_flag: false, try: 0)

hugo_user_world_one_quiz_two_question_one = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_two_question_one.id, done_flag: false, try: 0)
hugo_user_world_one_quiz_two_question_two = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_two_question_two.id, done_flag: false, try: 0)
hugo_user_world_one_quiz_two_question_three = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_two_question_three.id, done_flag: false, try: 0)

hugo_user_world_two_quiz_one_question_one = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_one_question_one.id, done_flag: false, try: 0)
hugo_user_world_two_quiz_one_question_two = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_one_question_two.id, done_flag: false, try: 0)
hugo_user_world_two_quiz_one_question_three = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_one_question_three.id, done_flag: false, try: 0)

hugo_user_world_two_quiz_two_question_one = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_two_question_one.id, done_flag: false, try: 0)
hugo_user_world_two_quiz_two_question_two = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_two_question_two.id, done_flag: false, try: 0)
hugo_user_world_two_quiz_two_question_three = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_two_question_three.id, done_flag: false, try: 0)



guillaume_user_world_one_quiz_one_question_one = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_one_question_one.id, done_flag: false, try: 0)
guillaume_user_world_one_quiz_one_question_two = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_one_question_two.id, done_flag: false, try: 0)
guillaume_user_world_one_quiz_one_question_three = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_one_question_three.id, done_flag: false, try: 0)

guillaume_user_world_one_quiz_two_question_one = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_two_question_one.id, done_flag: false, try: 0)
guillaume_user_world_one_quiz_two_question_two = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_two_question_two.id, done_flag: false, try: 0)
guillaume_user_world_one_quiz_two_question_three = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_two_question_three.id, done_flag: false, try: 0)

guillaume_user_world_two_quiz_one_question_one = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_one_question_one.id, done_flag: false, try: 0)
guillaume_user_world_two_quiz_one_question_two = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_one_question_two.id, done_flag: false, try: 0)
guillaume_user_world_two_quiz_one_question_three = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_one_question_three.id, done_flag: false, try: 0)

guillaume_user_world_two_quiz_two_question_one = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_two_question_one.id, done_flag: false, try: 0)
guillaume_user_world_two_quiz_two_question_two = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_two_question_two.id, done_flag: false, try: 0)
guillaume_user_world_two_quiz_two_question_three = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_two_question_three.id, done_flag: false, try: 0)



loic_user_world_one_quiz_one_question_one = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_one_question_one.id, done_flag: false, try: 0)
loic_user_world_one_quiz_one_question_two = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_one_question_two.id, done_flag: false, try: 0)
loic_user_world_one_quiz_one_question_three = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_one_question_three.id, done_flag: false, try: 0)

loic_user_world_one_quiz_two_question_one = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_two_question_one.id, done_flag: false, try: 0)
loic_user_world_one_quiz_two_question_two = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_two_question_two.id, done_flag: false, try: 0)
loic_user_world_one_quiz_two_question_three = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_two_question_three.id, done_flag: false, try: 0)

loic_user_world_two_quiz_one_question_one = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_one_question_one.id, done_flag: false, try: 0)
loic_user_world_two_quiz_one_question_two = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_one_question_two.id, done_flag: false, try: 0)
loic_user_world_two_quiz_one_question_three = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_one_question_three.id, done_flag: false, try: 0)

loic_user_world_two_quiz_two_question_one = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_two_question_one.id, done_flag: false, try: 0)
loic_user_world_two_quiz_two_question_two = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_two_question_two.id, done_flag: false, try: 0)
loic_user_world_two_quiz_two_question_three = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_two_question_three.id, done_flag: false, try: 0)

eva_user_world_one_quiz_one_question_one = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_one_question_one.id, done_flag: false, try: 0)
eva_user_world_one_quiz_one_question_two = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_one_question_two.id, done_flag: false, try: 0)
eva_user_world_one_quiz_one_question_three = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_one_question_three.id, done_flag: false, try: 0)

eva_user_world_one_quiz_two_question_one = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_two_question_one.id, done_flag: false, try: 0)
eva_user_world_one_quiz_two_question_two = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_two_question_two.id, done_flag: false, try: 0)
eva_user_world_one_quiz_two_question_three = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_two_question_three.id, done_flag: false, try: 0)

eva_user_world_two_quiz_one_question_one = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_one_question_one.id, done_flag: false, try: 0)
eva_user_world_two_quiz_one_question_two = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_one_question_two.id, done_flag: false, try: 0)
eva_user_world_two_quiz_one_question_three = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_one_question_three.id, done_flag: false, try: 0)

eva_user_world_two_quiz_two_question_one = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_two_question_one.id, done_flag: false, try: 0)
eva_user_world_two_quiz_two_question_two = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_two_question_two.id, done_flag: false, try: 0)
eva_user_world_two_quiz_two_question_three = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_two_question_three.id, done_flag: false, try: 0)

p "————#{UserQuestion.count} user_questions created--------"
