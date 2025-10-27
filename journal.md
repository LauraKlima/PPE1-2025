Journal de bord du projet encadré

Aujourd'hui, après avoir créer mon compte Github, j'ai appris à le récuperer et à le mettre sur mon ordinateur. J'y ai créée un journal de bord, et j'ai appris comment faire afin que ce que le dossier j'ai sur mon ordinateur soit synchronisé sur Github. J'ai utilisé pull pour faire venir le journal d'internet vers mon ordinateur, et j'ai utilisé push afin de faire l'inverse. 

finalement, juste faire push n'est pas suffisant, il est nécessaire de commit avant. rajouter cette phrase me permet de vérifier que j'ai bien retenu la démarche. 

Cher journal, ces deux dernières semaines furent compliquées au niveau du travail en PPE. Nous avons découvert le 8 octobre les scripts bash. Premièrement, j'ai eu beaucoup de mal à comprendre ce à quoi c'était censé ressembler, et comment cela fonctionnait. Néanmoins, une fois avoir compris que je peux créer ça directement depuis VS Code (qui comprend que c'est un script bash après avoir mis en place un shebang en premiere ligne(même si je ne suis pas sûr d'avoir bien commpris pourquoi il y avait "bin" à l'intérieur, mais soit)), j'ai réussis grâce au powerpoint, ainsi qu'à plusieurs recherches internet, à faire le premier script. J'ai dû néanmoins reprendre ma petite fiche révision qui me rappelle comment ajouter un travail à git/github. 

Le premier exercice avait pour objectif de compter le nombre de récurrence du mot location dans les fichiers ann qu'on a auparavent classés. J'avais utilisé la commande cat et grep. J'ai fait tout année par année, pour garder le code lisible et surtout symple à écrire. j'ai mis pas mal de temps à comprendre à quoi sert | . Je me suis beaucoup aidé d'un site "commands cheat sheet" qui listait les commandes du terminal, et les expliquait par la suite en détail.
Le deuxième exercice avait pour objectif de nous donner un script qui allait dans un premier lieu nous montrer le nombre de fois qu'un certain type d'entité apparaissait (par exemple si nous souhaitions avoir le nombre d'occurence de Person de 2018, ou de Location de 2016). Ensuite nous devions écrire un nouveau script qui allait lancer ce premier script, afin d'avoir le type d'entité qu'on veut (zB Organization) et les résultats pour les trois années au lieu d'une seule. Dans cette exercice, le script est censé piocher dans l'année choisi, et vérifier si le type d'entité que nous recherchons existe ou non, et doit informer si donc oui ou non cela existe et si oui, compter le nombre d'occurences et l'afficher. Le deuxieme script de cet exercice, grâce à la boucle for, reprend le script d'avant trois fois, et donc affiche le résultats pour les trois années et donc permets de ne pas avoir à manuellement devoir lancer la meme commande le trois fois. 
Dans la deuxieme partie de l'exercice 2, il a été demandé d'écrire un programme ayant pour objectif d'afficher un classement des lieux les plus présent.

Je n'ai pas forcément compris l'interet de l'exercice 3, j'ai eu du mal à comprendre la consigne. 
J'ai bien créer, en revanche, la boucle dans mon tout premier script. 

Explication de code : ce qui est interessant avec le code qui nous a été demandé d'expliquer, est le fait qu'il possède une boucle while. La boucle while a été utilisée afin de savoir combien de liens valides étaient présents dans un fichier. Donc ce programme a eu pour objectif de de lire chaque ligne du fichier et dire si les liens https présents sur ce fichiers étaient corrects ou non. selon si les liens étaient corrects ou non, le programme devait écrire textuellement "ressemble à une url valide" ou "ne ressemble pas à une url valide" et à la fin lister combien il y en avait de chaque.

C'est plus d'une semaine apres avoir fini l'exercice, lors du moment que je prends pour rédiger mon journal, que je me rends compte que j'ai completement oublié de rajouter un tag au devoir fini. En espérant que ce soit rattrapable...
Grâce à cet oubli j'ai pu découvrir qu'il est possible d'ajouter des tags après coup (--oneline pour voir la liste des tags, et chacun porte une combinaison de lettres et de chiffres qui permet de les distinquer les uns des autres). 



Cher journal, aujourd'hui j'ai décidé de commencer le "mini" projet. Avant tout, j'ai repris toutes les slides pour bien comprendre ce qu'on avait vu en cours (qu'est-ce qu'est Lynx, cURL et wget, la différence entre http et https, etc).

Questions :  
Exo 1: 1.Pourquoi ne pas utiliser cat? Si on souhaite utiliser cat il faudrait rajouter plus de choses autour, donc ça prendrait plus de temps à écrire et ce serait moins économe. Moins d'étapes. 

Je dois bien me souvenir de modifier comment s'appelle le fichier qui sera lu par le script si jamais je le change (je l'ai appris à mes dépend étant donné qu'au début je n'avais pas placé le fichier fr.txt dans un dossier nommé urls, et je m'étonnais que le script de base (dans le quel il est demandé d'ouvrir urls/fr.txt)ne marchait pas...)

2.Comment le transformer en paramètre de script? utiliser $

2,1. Valider l'argument : donc si je comprends bien, il faut que le script dise "je vérifie si on me donne bel et bien un fichier à lire sinon on s'arrete". Si c'est bien ça, j'imagine qu'il faut ajouter quelque chose du style if [ mhhhhh -eq 0]; then echo "erreur"

3.comment afficher le numéro de ligne. j'imagine qu'il est malheureusment pas possible de juste modifier le fichier fr.txt à la main. J'ai donc trouvé sur de vieux forum très sympathique datant d'avant ma naissance comment faire : ça ressmeblait legerement à python donc j'ai mieux compris que ce qu'on faisait avant, lorsqu'on créer une variable et qu'on lui assigne 1, on peut apres lui ajouter un chiffre à chaque tour dans la boucle en faisant ((blabla++)). Aussi j'ai appris que malheureusment juste séparer le numéro de ligne de l'URL par un simple tab (en appuyant sur la touche du clavier)ne marche pas, car quand j'essaye de le supprimer, ça se divise en espaces, j'ai dû donc utiliser \t (\n aurait été pour un saut de ligne). mais \t ne marche pas tout seul, j'ai dû donner -e en argument à echo. (Des listes avec explications sont facilement trouvables sur internet, même si je ne suis pas sûre de tous les comprendre. par exemple \v affiche un "onglet vertical" mais je ne vois pas encore ce que c'est. mais au moins j'ai une liste sous la main qui me sera utile plus tard)

Exo 2: une fois cet exercice accompli, ce que va me sortir mon scritp c'est donc le numéro de ligne, le lien url, le truc de réponse à la requete (la liste qu'on a vu en cours, de 100 à 500), l'encodage de la page (je ne connais pour l'instant que UTF-8, work in progress), le nombre de mot pour la page. 
sans faire aucune recherche, je sais déjà que pour le nombre de mot je vais devoir utiliser wc, et pour le reste j'imagine cURL. Je suis pour l'instnat très confuse car je pensais que pour utiliser cURL je dois utiliser le terminal mais comment je peux utiliser le terminal si je lance mon script bash? 
Après quelques temps de recherche, c'est bien cURL qu'il faut utliser, avec des options. J'imagine qu'on va assigner le résultat à une "fonction" et apres on va echo le numéro de la ligne, la fonction qui contient le numéro de ligne puis la fonction qui cherche le code requete. Je vais l'inclure dans la boucle, vu que le code requete doit etre cherché pour tous les liens. 
Dans cette meme boucle j'imagine qu'il faudra inclure le truc pour chercher le nombre de mots et l'encodage. 
J'ai cru que les fichiers tsv etaient compliqués à créer mais finalement ça va, donc j'imagine que la derniere ligne de mon script qui va donc afficher les résultats je vais devoir faire quelque chose du style numérotation\tlien\tcodehttp\tencodage\tnombredemots
Je ne suis vraiment pas sûre d'avoir bien compris si ces resultats doivent s'afficher sur le terminal simplement ou si je dois les mettres dans un document. je vais au début essayer de le faire s'afficher dans le terminal pour voir si ça marche, et si ça marche je vais le mettre dans un fichier pour voir si je peux l'ouvrir avec excel après. 
Est ce que si je lance le script plusieurs fois ça va créer plusieurs fichiers pareils? 
Ok, non, le contenu sera écrasé 
J'ai trouvé comment faire pour afficher le code http sur un forum ubuntu (curl -s -o /dev/null -w "%{http_code}"). -s , silence, pour pas que tout le processus s'affiche, -o, output, -w write out

Je passe au comptage de mots, car l'encodage m'intimide vu que je n'ai pas encore une idée claire de ce que c'est. 

je vais tester curl | wc -w 

ok ça marche pas, le résultat qui ressort est zéro 

ok j'ai oublié le $

Alors, j'ai obtenu des résultats, mais ils sont étonnants pour certains. Le site numéro 3, wikipedia robot d'indexaction me montre requete 301, moved permanently. Le site de Monsieur Magistry ne marche pas non plus, requete 000. Enfin, les trois derniers sites wiki m'indiquent 264 mots et requete 429, donc too many requests. 

On m'a recommandé de rajouter -L pour le site 301. je ne savais pas où le mettre donc au début je l'ai mis à la fin, mais ça m'a sorti un tres grand nombre de lignes, donc je l'ai mis au milieu (entre -s et -o)et ça a marché. je n'ai pas testé de le mettre avant -s. Néanmoins, même si le code requete a changé (on est passé de 301 à 200), le nombre de mots reste à 0. 

J'ai rajouté un sleep 1 afin de voir si les trois derniers sites allaient marcher maintenant que je ne fais pas autant de requete d'un coup, et oui ça a marché (encore une fois, merci aux forums). Par contre, le site numéro 3 reste toujours à 0 en terme de nombre de mots. 

Je vais passer à l'encodage que je n'avais pas fait avant de revenir à ce troisieme lien. 

bon je n'ai toujours pas trouvé la solution au troisieme lien. 

pour l'encodage, j'ai pas utilisé curl car pour une raison qui m'échappe quand j'ai testé avec, tous les autres résulatats que j'avais (comptage de mots, code requete) disparaissaient. On m'a conseillé d'utiliser lynx. -source permet de faire en sorce de voir la page en HTML donc c'est là qu'on verra quel encodage a été utilisé. on lui demande de prendre la variable avec nos liens. on met un pipe pour que le resultat puisse etre vu par grep. vu que je voulais pas que sur chaque ligne on voit "charset = utf-8" mais uniquement utf-8 j'ai mis option i pour ignorer. Head pour mettre les trucs du début (tail si on voulait la fin?) avec otpion n pour number et on a choisit 1 pour aficher que la premiere ligne. cut pour découper le résultat (comme dit auparavant, je voulais juste utf-8 pour faire joli), avec option -d pour choisir le séparateur qui donc ici sera " (vu qu'on l'a mis entre ' ').

Je n'ai pas trouvé comment éviter le gros paragraphe que ressort lynx lorsqu'il arrive au site de Monsieur Magistry, mais ça ne me gene pas. 

Conclusion : j'ai trouvé certains passages sympa à faire (j'ai été contente d'enfin comprendre la logique des $, et de voir qu'il y a des similitudes avec des choses que je comprends (le fait de increase le nombre de mon compteur en faisant ((compteur++)) par exemple)), mais globalement c'est resté difficile à accomplir. Heureusment pour moi, on trouve beaucoup de réponse sur les forums et sites spécialisés. 

J'ai fini mon script du mini projet, je vais désormais le mettre sur github, et mettre le résultat du script dans un fichier txt. 

Bonnes vacances Messieurs