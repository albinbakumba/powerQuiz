import 'package:alibali/PageQuestion/CLassUtilisee.dart';


// la table de sous questions Enigme
List<Quizx>sousQuestionLesEnigmes=[
    Quizx(7,"J'entre dur et grand dans la bouche, mais j'en sort mou et petit, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Un chewing-gum",""),
    Quizx(7,"Humide à l'intérieur, avec des poils dehors, je commence par la lettre C, qui suis-je ?",["ADN","ARNr","ARNt","ARNm","ARN"],"Une noix de coco",""),
    Quizx(7,"Je me lève quand je suis content, mais je suis plus petit que le reste, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le pouce",""),
    Quizx(7,"David et Pierre jouent aux échecs. Ils ont fait 5 parties, mais les deux en ont gagné 3, comment est-ce possible: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Parce qu'ils jouent contre d'autres personnes",""),
    Quizx(7,"Tu me vois en été et non en hiver et, que je sois grand ouvert ou fermé, je me trouve entre tes mains, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Un éventail",""),
    Quizx(7,"Les femmes n'en ont pas, alors que les hommes l'ont, l'or l'a aussi et Pascal Obispo en a deux, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"La lettre O",""),
    Quizx(7,"Je suis entouré de poils et je suis au milieu. J'ai une ouverture que tu peux voir qui s'ouvre et se ferme, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Un oeil",""),
    Quizx(7,"Je commence la nuit et je termine le matin, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"La lettre N",""),
    Quizx(7,"Ils l'ont tous devant eux, mais ils la montrent avec suspicion. J'ai une tête et des aiguilles mais aucun poils, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Une montre à gousset",""),
    Quizx(7,"Je suis une partie de l'être humain capable d'augmenter par 9 sa taille, qui suis-je : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"La pupille",""),
    Quizx(7,"Je suis quelque chose qui t'appartient mais que les gens utilisent plus que toi, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Ton prénom",""),
    Quizx(7,"Je grandis sans être vivant. Je n'ai pas de poumon, mais j'ai besoin d'air pour vivre. L'eau, même si je n'ai pas de bouche, me tue, qui suis-je: ?",["ADN","ARNr","ARNt","ARNm","ARN"],"Le feu",""),
    Quizx(7,"En étant cassé je suis plus utile que quand je ne le suis pas, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Un oeuf",""),
    Quizx(7,"Je suis un appareil qui vibre et tourne, je me mets dans ta bouche environ 3 fois par jour et je mesure 15 cm, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Une brosse à dent électrique",""),
    Quizx(7,"Je suis un mois où les personnes dorment moins, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Février car il a moins de jours",""),
    Quizx(7,"Quelle lettre peut-on lancer dans tous les sens: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"La lettre D(dé)",""),
    Quizx(7,"Tu t'arrêtes quand je suis et tu continues quand je suis rouge, qui suis-je : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"La pastèque",""),
    Quizx(7,"Quelle était la montagne la plus haute avant que le monde découvre l’Everest: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le mont Everest",""),
    Quizx(7,"Monsieur et Madame Dupont ont 6 fils. Ils ont tous une sœur, combien y-a-t-il de personne dans cette famille : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"9 personne car chaque fils a la même sœur : 6 fils, 1 fille et deux parents",""),
    Quizx(7,"Je suis grand quand je suis jeune et petit quand je suis vieux. Je rayonne de vie et le vent est mon plus grand ennemi. Que suis-je : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Une bougie",""),
    Quizx(7,"Numero a 3 chiffres. Le chiffre du milieu est 4 fois plus grand que le troisieme et dernier chiffre. De plus, le premier est plus petit de 3 unités que le second. Qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le 141",""),
    Quizx(7,"Combien de 9 y-a-t-il entre 1 et 100: ?",["ADN","ARNr","ARNt","ARNm","ARN"],"1",""),
    Quizx(7,"La somme d'un club et d'une balle de golf est de 1,10 euros. Le club dépasse le prix de la balle d'un euro. Combien coûte la balle: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"5 centimes est le prix de la balle et 1'05 est le prix du club",""),
    Quizx(7,"Mon fils a plusieurs frères. En fait, il a autant de frères que de sœurs. Toutes les sœurs ont deux fois plus de frères que de sœurs. Combien de filles et de fils ai-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"3 filles et 4 fils",""),
    Quizx(7,"Un père a 4 fois l'âge de sa fille. Dans 20 ans, ce père sera deux fois plus âgé que sa famille. Quel âge ont le père et sa fille: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"La fille a 10 ans et le père 40",""),
    Quizx(7,"Un fermier a 40 porcs, 10 lapins et 20 chevaux. Si vous appelez les chevaux les porcs, combien de nouveaux chevaux aura-t-il maintenant: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Il en aura le même nombre (20) car ils ne se transforment pas même si vous les appelez différemment",""),
    Quizx(7,"Un coureur qui dépasse le second dans une course, à quel place se trouve-t-il : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"En second",""),
    Quizx(7,"Combien de fois pouvez-vous soustraire 1 de 1 111: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Juste une fois, ensuite tu le soustraira à 1.110, 1.109, etc...",""),
    Quizx(7,"Si je tombe d'un immeuble de 50 étages, comment pourrais-je survivre : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Si vous tombez du premier étage",""),
    Quizx(7,"Quel jour de l'année les charlatans parlent-ils le moins : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le jour où on avance d'une heure au printemps",""),
    Quizx(7,"Il t'appartient complètement, cependant, tous le monde l'utilise... qu'est-ce: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Ton nom",""),
    Quizx(7,"J'ai trois pommes si tu m'en enlèves deux, combien est-ce que tu en as: ?",["ADN","ARNr","ARNt","ARNm","ARN"],"Je ne peux pas le savoir car tu ne m'as pas dit combien de pommes j'avais avant",""),
    Quizx(7,"Qu'est-ce que peut avoir ta main droite mais que tu ne pourras jamais avoir dans ta main gauche: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Ta main gauche",""),
    Quizx(7,"Laquelle de ces deux expressions est correcte, les manchots volent ou un manchot vole: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Aucune des deux car les pingouins ne peuvent pas voler",""),
    Quizx(7,"Quelle est la première cause de divorce: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le mariage",""),
    Quizx(7,"Quelle est la chose la plus importante pour ne pas qu'un éclair foudroie ta maison : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Qu'il n'y ait pas de tempête",""),
    Quizx(7,"Celui qui le fabrique n'en a pas besoin, celui qui l'achète ne l'utilise pas et celui qui l'utilise ne peut ni le voir ni le sentir, que suis-je : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Un cercueil",""),
    Quizx(7,"À quel endroit le jeudi se trouve-t-il avant le mercredi: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Dans le dictionnaire",""),
    Quizx(7,"Qu'est-ce qui entre dur mais qui sort tout doux et tout mou : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le chewing-gum",""),
    Quizx(7,"De quelle couleur sort un cheval blanc après s'être baigné dans la mer noire: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Blanc",""),
    Quizx(7,"Il n'y a qu'une seule question à laquelle personne ne pourra répondre à l’affirmative et dire la vérité, laquelle est-ce : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Tu dors ?",""),
    Quizx(7,"Comme est-ce qu'un homme peut ne pas dormir pendant 8 jours: ?",["ADN","ARNr","ARNt","ARNm","ARN"],"En dormant la nuit!",""),
    Quizx(7,"Où se met un policier pour siffler son sifflet: ?", ["ADN","ARNr","ARNt","ARNm","ARN"]," Derrière son sifflet",""),
    Quizx(7,"Qu'est-ce qui monte mais qui ne descend jamais : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"L'âge !",""),
    Quizx(7,"Imagines que tu te trouves dans une pièce obscure... comment est-ce que tu en sors: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Ouvre les yeux et n'imagines plus",""),
    Quizx(7,"Combien de pommes poussent sur un arbre: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Toutes les pommes poussent sur un arbre",""),
    Quizx(7,"Avant que soit découvert le Mont Everest , qui est la plus haute montagne du monde, quelle était la montagne la plus haute du monde: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le Mont Everest a toujours été la montagne la plus haute du monde mais avant personne ne le savait",""),
    Quizx(7,"À quel endroit le jeudi se trouve-t-il avant le mercredi: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Nulle part étant donné qu'ils ont survécu au crash",""),
    Quizx(7,"Combien de couple d'animaux a fait monter Moïse dans son arche : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Aucun car Moïse n'a pas construit l'arche comme un certain Noé.",""),
    Quizx(7,"Qu'est-ce qui se passerait si une force surpuissante entrerait en contact avec un objet inamovible: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Rien",""),
    //50
    Quizx(7,"De quoi se remplit un tonneau pour qu'il pèse moins: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"un trous",""),
    Quizx(7,"Quel est le mois durant lequel les femmes mangent le moins ?",["ADN","ARNr","ARNt","ARNm","ARN"],"Février car il y a moins de jours en février",""),
    Quizx(7,"Qu'est-ce qu'on ne peut jamais manger au petit déjeuner: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le déjeuner et le dîner",""),
    Quizx(7,"Qu'est-ce qu'on appelle une véritable arme blanche: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Une bouteille de lait cassée",""),
    Quizx(7,"Qu'est-ce que tu donnes à quelqu'un et que tu dois tenir: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Ta parole",""),
    Quizx(7,"Qu'est-ce qui plus grande elle est plus elle se voit de loin: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"L'obscurité",""),
    Quizx(7,"Quel est l'animal qui met le plus de temps à se déchausser: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le mille pattes",""),
    Quizx(7,"Qui est toujours là à un mariage mais qui ne se marrie jamais: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Un prêtre",""),
    Quizx(7,"Qu'est-ce que tu veux partager si tu l'as mais que si tu le partages tu ne l'as plus: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"un secret",""),
    Quizx(7,"Qu'est-ce qui vient toujours mais qui n'arrive jamais : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le lendemain",""),
    Quizx(7,"Qu'est-ce qui s'est passé hier à Paris entre 6 et 7 heures: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Une heure",""),
    Quizx(7,"De quelle couleur sont les boîtes noires des avions: ?",["ADN","ARNr","ARNt","ARNm","ARN"],"Elles sont orange",""),
    Quizx(7,"Combien d'anniversaires célèbrent les témoins de Jéhovah: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Aucun",""),
    Quizx(7,"Qu'est-ce qui peut voyager tout autour du monde tout en étant dans un coin: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Un timbre",""),
    Quizx(7,"Je suis depuis très longtemps dans la mer mais je ne sais pas nager... qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le sable",""),
    Quizx(7,"J'ai beaucoup de visages, d'émotions et d'expressions ; je vis à une touche de distance... que suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Une émoticône",""),
    Quizx(7,"Qu'est-ce qu'on peut voir au milieu de l'infini: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"La lettre I",""),
    Quizx(7,"Qu'est-ce qui est toujours sur le sol et sur les murs mais qui ne se salit jamais: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"L'ombre",""),
    Quizx(7,"Qu'est-ce qui peut se briser sans jamais avoir été dans nos mains : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Une promesse",""),
    Quizx(7,"Pourquoi est-ce qu'une girafe boit plus d'eau en Mars qu'en Février: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Parce qu'il y a plus de jours en Mars",""),
    Quizx(7,"Comment est-ce qu'on appelle les grands-parents en Chine: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Par son prenom",""),
    Quizx(7,"Deux amis soldats partent à la guerre, un va en Afghanistan et l'autre en Israël. Comment est-ce que les soldats s'appellent",["ADN","ARNr","ARNt","ARNm","ARN"],"Par téléphone",""),
    Quizx(7,"Quels sont les jours les plus long de la semaine: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Mercredi et dimanche",""),
    Quizx(7,"J'ai quatre pattes mais je ne peux pas marcher, qui suis-je: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Une table",""),
    Quizx(7,"Comment est-ce qu'on appelle une personne qui a peur de Santa Claus: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Un claus-trophobique",""),
    Quizx(7,"Si un bébé naît en Argentine mais qu'il déménage en Allemagne quand il a deux ans, où est-ce que ses dents pousseront: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Dans la bouche",""),
    Quizx(7,"Qu'est-ce qui monte vers le haut et descend vers le bas mais qui se trouve toujours au même endroit : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Les escalators",""),
    Quizx(7,"Qu'est-ce qui monte quand la pluie tombe: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le parapluie",""),
    Quizx(7,"Je peux passer ma journée à raser mais ma barbe ne se raccourcit pas... qui suis-je : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Un barbier",""),
    //80
    Quizx(7,"Si lors d'une course à vélo, tu doubles le second, à quelle position tu finis: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"À la deuxième place",""),
    Quizx(7,"Si un train électrique se déplace du nord au sud, vers où se déplace la fumée qu'il projette: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Nulle part, les trains électriques n'ont pas de fumée",""),
    Quizx(7,"Durant quel mois de l'année les russes célèbrent-ils la révolution d'octobre : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"En novembre",""),
    Quizx(7,"De quels matériaux sont fait les brosses en poil de chameau: ?", ["ADN","ARNr","ARNt","ARNm","ARN"]," De poil d'écureuil, de chèvre ou de poils synthétique",""),
    Quizx(7,"Où sont fabriqués les chapeaux Panama: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"En Équateur",""),
    Quizx(7,"Quel animal animal a donné son nom aux îles Canaris: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Ces îles ont été appelés d'après le terme latin << Canis >> qui veut dire chien",""),
    Quizx(7,"Combien de temps a duré la guerre de 100 ans: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"116 ans",""),
    Quizx(7,"Quel est le premier nom du Roi George VI: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Albert",""),
    Quizx(7,"Une fille est assise à un endroit où, même si elle se lève et part, vous ne pourrez jamais vous asseoir. Où est-elle assise: ?", ["ADN","ARNr","ARNt","ARNm","ARN"], "Sur vos genoux",""),
    Quizx(7,"Qu'est-ce qui te donne la force et l'espoir nécessaires pour traverser les portes de chez toi: ?", ["ADN","ARNr","ARNt","ARNm","ARN"], "Les portes",""),
    Quizx(7,"Combien de kilos de terre est-ce que tu peux trouver dans un puits de 20 mètres de profondeur pour 5 mètres de large: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Dans les puits, il n'y a pas de puits, il y a de l'eau",""),
    Quizx(7,"Quel objet peut avoir un visage mais pas de corps: ?", ["ADN","ARNr","ARNt","ARNm","ARN"], "Une pièce de monnaie",""),
    Quizx(7,"Pourquoi est-ce que les moutons blancs mangent plus que les moutons noirs: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Parce que les moutons noirs n'existent pas",""),
    Quizx(7,"Quel est l'animal qui marche toujours avec les pattes sur la tête: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le poux",""),
    Quizx(7,"Quels sont les poissons charpentiers: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Le requin marteau et le requin scie",""),
    Quizx(7,"Qu'est-ce qui pèse le plus : un kilo de coton ou un de plomb: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Les deux ont le même poids",""),
    Quizx(7,"Où est-ce qu'on peut trouver des fleuves sans eaux: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Sur les cartes",""),
    Quizx(7,"Si j'ai un aquarium avec 12 poissons et 5 d'eux se noient... combien seront en vie : ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"12 car les poissons ne se noient pas",""),
    Quizx(7,"Certains mois ont 30 jours et d'autres 31 jours, combien d'eux ont 28 jours: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Tous les mois de l'année ont, au moins, 28 jours",""),
    Quizx(7,"Certains mois ont 30 jours et d'autres 31 jours, combien d'eux ont 28 jours: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Tous les mois de l'année ont, au moins, 28 jours",""),
    Quizx(7,"Certains mois ont 30 jours et d'autres 31 jours, combien d'eux ont 28 jours: ?", ["ADN","ARNr","ARNt","ARNm","ARN"],"Tous les mois de l'année ont, au moins, 28 jours",""),


];
