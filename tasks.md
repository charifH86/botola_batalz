To do ****

PAGE          ACTION                                STATUS         OWNER
team#create   cloudinary (users and team)           done           Youssef

team#view     barre de recherche                    done           Charif
team#view     inventaire de toutes les positions    not started    Charif
team#view     ajouter filtres par position          not started    Charif
team#view     sweet alert manque budget             not started    Charif
team#view     DATABASE: solve the firstlastname     not started    Charif


Dashboard     Migration position (système de 0 à 11)
~~Dashboard   Calendrier flatpickr~~                  DONE

Dashboard     Dashboard front: bench                not started    TBD
leagues#show  Dashboard front: calendar             not started    TBD
leagues#show  Dashboard front: ranking              not started    TBD
leagues#show  Dashboard front: the pitch            not started    TBD

Dashboard     Mettre à jour les scores              not started
ALGOCREATION_CALENDRIER    ALGO DE LANCEMENT DE LA COMPETITION //
                            insérer dans la table games l'ensemble du planning des games
                            ajouter statut dans la table games
                            ajouter date dans la table games
                            ajouter endgame (par défaut chaine vide) dans la table games
                            => algo va créer les games avec:
                                * les id des teams (y.c local & visitors)
                                * date prévue
                                * statut
                                * scores initialisés à 0
                                * league en cours
                                * endgame: V, L, D
                            Chaque journée à la date prévue du game appel API (cf ci dessous)

                            test 4 équipes A,B,C et D
                            A-B  C-D
                            A-C  B-d
                            A-d  B-C
                            A-B  C-D
                            A-C  B-d
                            A-d  B-C

Dashboard     Migration AddScoreToTeamplayer
              Objectif: faire la somme des goals des joueurs pour mettre à jour les score de la team à chaque journée

ALGO_SCORE&CLASSEMNT    Past goals, new goals (push new goals >> past goals) et new new goals
                          étape 0 setup pré-competition
                                  // 1 semaine pour créer ta team après creation de la league
                                  // trigger lancement de compétition => calendrier de la ligue fictive
                          etape 1 appel chaque joueur
                          étape 2 past goals stockés // écraser valeur past goals par new goals
                          étape 3 appel API des total goals
                          étape 4 new goals = total goals - past goals // set score
                          etape 5 mise à jour des scores dans la ligue fictive

Dashboard     Calendrier des matchs en amont
Dashboard     a chaque match les données sont mises à jour (appel d'api, necessité de séparer historique des buts avec les vrais buts)

League_Model  supprimer budget de la league (budget addossé à une team)


****

 ****** Back up ******
