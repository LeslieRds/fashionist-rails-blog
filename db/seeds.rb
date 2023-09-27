# Suppression des données existantes
puts "destruction des utilisateurs, des articles et des commentaires"

User.destroy_all
Post.destroy_all
Comment.destroy_all

puts "destruction faite"

# Creation des utilisateurs
puts "creation de 8 utilisateurs"
AverageGirl = User.create(email: "user1@lewagon.fr", password: "password", nickname: "AverageGirl")
BigBeauty = User.create(email: "user2@lewagon.fr", password: "password", nickname: "BigBeauty")
CurvyBabe = User.create(email: "user3@lewagon.fr", password: "password", nickname: "CurvyBabe")
DeeDee = User.create(email: "user4@lewagon.fr", password: "password", nickname: "DeeDee")
ElasticGirl = User.create(email: "user5@lewagon.fr", password: "password", nickname: "ElasticGirl")
Fatshionista = User.create(email: "user6@lewagon.fr", password: "password", nickname: "Fatshionista")
Glamazon = User.create(email: "user7@lewagon.fr", password: "password", nickname: "Glamazon")
HoneyBee = User.create(email: "user8@lewagon.fr", password: "password", nickname: "HoneyBee")
puts "utilisateurs crees"

# Creation des articles
puts "creation de 8 articles"
un = Post.create(title: "Les Tendances de la Mode Printemps-Été 2023",
            content: "Le printemps est enfin là, et il est temps de laisser derrière nous les lourds manteaux d'hiver pour faire place à des tenues légères et colorées. Pour la saison printemps-été 2023, les tendances sont plus audacieuses que jamais. Les pastels doux, comme le rose pâle et le bleu ciel, dominent les palettes de couleurs, apportant une touche de fraîcheur à votre garde-robe. Les imprimés floraux, qu'ils soient petits et délicats ou grands et audacieux, sont incontournables pour cette saison. Les vêtements utilitaires continuent également à faire sensation. Les pantalons cargo, les vestes multipoches et les combinaisons de travail sont des choix populaires pour un look à la fois tendance et fonctionnel. Les détails en métal, les ceintures utilitaires et les fermetures éclair ajoutent une touche industrielle à ces tenues.",
            url: "https://www.modedujour.com/tendances-mode-printemps-ete-2023",
            user: AverageGirl)
deux = Post.create(title: "Comment Créer un Look Minimaliste Chic",
            content: "Le minimalisme est un style intemporel qui met l'accent sur la simplicité et l'élégance. Pour créer un look minimaliste chic, commencez par une palette de couleurs neutres, comme le blanc, le noir, le gris et le beige. Optez pour des vêtements bien coupés qui mettent en valeur la qualité des tissus plutôt que des détails complexes. es superpositions légères sont un élément clé du minimalisme. Associez un pull en cachemire à un pantalon en lin ou une robe chemise avec des sandales épurées. Les accessoires doivent être simples et bien choisis. Une montre classique, un sac à main minimaliste et des bijoux discrets complètent parfaitement ce look.",
            url:  "https://www.modedujour.com/look-minimaliste-chic",
            user: BigBeauty)
trois = Post.create(title: "Les Essentiels de la Garde-Robe d'Automne",
            content: "À mesure que l'été s'estompe, il est temps de préparer votre garde-robe pour l'automne. Les manteaux en laine sont incontournables pour rester au chaud tout en restant élégant. Optez pour des modèles classiques comme le trench-coat ou des pièces en laine texturée pour ajouter une touche de sophistication. Les bottes en cuir, qu'elles soient hautes ou cheville, sont un choix judicieux pour l'automne. Associez-les avec des jupes midi ou des jeans skinny pour un look polyvalent. En ce qui concerne les couleurs, les tons terreux comme le camel, le bordeaux et le kaki sont parfaits pour cette saison.",
            url:"https://www.modedujour.com/essentiels-garde-robe-automne",
            user: CurvyBabe)
quatre = Post.create(title: "Le Retour des Années 90 dans la Mode",
            content: "Les années 90 font un retour en force, et cela se reflète dans les tendances actuelles. Les crop-tops, portés avec des jeans taille haute, sont un look emblématique de cette époque. Les jeans baggy sont également de retour, offrant un confort ultime et un style décontracté. Les vestes en jean et les chemises à carreaux sont des pièces essentielles pour adopter le look des années 90. Accessoirisez avec des bandanas autour du cou ou dans les cheveux pour une touche rétro. Les baskets blanches classiques sont le choix idéal pour compléter ce look décontracté et cool.",
            url: "https://www.modedujour.com/retour-annees-90-mode",
            user: DeeDee)
cinq = Post.create(title: "La Durabilité dans la Mode : Comment Faire des Choix Éthiques",
            content: "La mode durable est devenue un sujet brûlant ces dernières années, et à juste titre. Pour faire des choix éthiques, commencez par rechercher des marques qui mettent en avant la durabilité, utilisant des matériaux recyclés et des pratiques de fabrication respectueuses de l'environnement. Pensez à la qualité plutôt qu'à la quantité. Optez pour des pièces intemporelles et bien faites qui dureront longtemps. Privilégiez également les vêtements d'occasion et les vides greniers pour réduire votre impact environnemental.",
            url: "https://www.modedujour.com/durabilite-mode-choix-ethiques",
            user: ElasticGirl)
six = Post.create(title: "L'Art de Mixer les Imprimés",
            content: "Mélanger les imprimés peut sembler intimidant, mais c'est une tendance amusante à essayer. Pour réussir, choisissez un élément de base neutre comme une jupe ou un pantalon à imprimé, puis ajoutez un autre imprimé avec un ton complémentaire. Par exemple, un haut rayé avec une jupe à pois. N'oubliez pas d'équilibrer les proportions. Si vous avez un imprimé audacieux en haut, gardez le bas plus sobre et vice versa. Les accessoires discrets, comme des chaussures unies et un sac simple, peuvent aider à ancrer le look.",
            url: "https://www.modedujour.com/art-mixer-imprimes",
            user: Fatshionista)
sept = Post.create(title: "Les Accessoires Incontournables de l'Été",
            content: "L'été est le moment idéal pour mettre en valeur vos accessoires. Un chapeau de soleil à large bord peut vous protéger du soleil tout en ajoutant une touche de glamour à votre tenue. Les lunettes de soleil sont également indispensables, optez pour une paire tendance qui correspond à votre style. Les sacs en paille ou en osier sont parfaits pour la saison estivale, tout comme les bijoux en coquillage et les colliers de perles. N'oubliez pas de glisser dans des sandales confortables pour une promenade sous le soleil.",
            url: "https://www.modedujour.com/accessoires-incontournables-ete",
            user: Glamazon)
huit = Post.create(title: "Le Retour du Denim : Comment Porter le Jean en Tête à Pied",
            content: "Le denim est l'un des tissus les plus polyvalents de la mode, et il est de retour en force. Les jeans skinny sont toujours populaires, mais n'ayez pas peur d'essayer des coupes plus larges comme les jeans droits ou les mom jeans. Les vestes en jean sont un classique intemporel, mais vous pouvez également expérimenter avec des combinaisons en jean ou des robes en denim. Le denim sur denim est également une option si vous jouez avec les nuances et les textures.",
            url: "https://www.modedujour.com/retour-du-denim-comment-porter-le-jean",
            user: HoneyBee)

puts "articles crees"

#creation des commentaires
puts "creation de 7 commentaires"

Comment.create(content: "Pas très convaincue pour ce printemps",
              post: un,
              user: Glamazon)
Comment.create(content: "Je suis d'accord avec toi, je ne suis pas fan des imprimés floraux. Rien ne vaut les bons vieux chics",
              post: deux,
              user: HoneyBee)
Comment.create(content: "le retour du fluo et des bonnes vieilles bananes. Je ne sais pas s'il faut s'en réjouir",
              post: trois,
              user: Fatshionista)
Comment.create(content: "Trop bien!! je vais pouvoir ressortir les tenues fluos de ma mère!!!",
              post: trois,
              user: BigBeauty)
Comment.create(content: "Mixer les imprimés!!! Je ne suis pas sûre d'assumer",
              post: six,
              user: AverageGirl)
Comment.create(content: "comme si le denim avait disparu de la mode... perso c'est mon uniforme quotidien!",
              post: huit,
              user: CurvyBabe)
Comment.create(content: "Ok pour le denim. Mais quid des slim? On peut les abandonner? C'est tellement Millenials",
              post: huit,
              user: DeeDee)
puts "les commentaires sont crées et ajoutés"
puts "seeds terminés!!"
