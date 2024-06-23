(defrule Regle1
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Multijoueur ?Multijoueur) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (<= ?Sport 0.5) (<= ?Multijoueur 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Super)))

(defrule Regle2
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Combat ?Combat))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (<= ?Puzzle 0.5) (> ?Multijoueur 0.5) (> ?Strategie 0.5) (<= ?Combat 0.5)))
=>
  (assert (class Outlast)))

(defrule Regle3
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Multijoueur ?Multijoueur) (Realiste ?Realiste))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5) (<= ?Multijoueur 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Zelda)))

(defrule Regle4
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Combat ?Combat) (Plateforme ?Plateforme))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (> ?Combat 0.5) (<= ?Plateforme 0.5)))
=>
  (assert (class Agar)))

(defrule Regle5
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (<= ?Violence 0.5) (<= ?Combat 0.5) (> ?Monde-ouvert 0.5) (<= ?FPS 0.5)))
=>
  (assert (class Elden)))

(defrule Regle6
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Strategie ?Strategie) (Plateforme ?Plateforme))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (> ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Plateforme 0.5)))
=>
  (assert (class Uncharted)))

(defrule Regle7
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Multijoueur ?Multijoueur) (Plateforme ?Plateforme) (Strategie ?Strategie))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (<= ?Puzzle 0.5) (<= ?Multijoueur 0.5) (<= ?Plateforme 0.5) (> ?Strategie 0.5)))
=>
  (assert (class Fruit)))

(defrule Regle8
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Multijoueur ?Multijoueur) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5) (> ?Multijoueur 0.5) (<= ?FPS 0.5) (> ?Realiste 0.5)))
=>
  (assert (class Steep)))

(defrule Regle9
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste) (Horreur ?Horreur))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (<= ?Violence 0.5) (<= ?Combat 0.5) (<= ?Monde-ouvert 0.5) (> ?Realiste 0.5) (> ?Horreur 0.5)))
=>
  (assert (class Trackmania)))

(defrule Regle10
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Multijoueur ?Multijoueur) (Realiste ?Realiste) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5) (<= ?Multijoueur 0.5) (> ?Realiste 0.5) (<= ?FPS 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Goat)))

(defrule Regle11
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Simulation ?Simulation))
  (test (and (> ?Survie 0.5) (> ?Puzzle 0.5) (<= ?Simulation 0.5)))
=>
  (assert (class Fifa)))

(defrule Regle12
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Multijoueur ?Multijoueur) (Plateforme ?Plateforme) (Strategie ?Strategie) (Violence ?Violence))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (<= ?Puzzle 0.5) (<= ?Multijoueur 0.5) (<= ?Plateforme 0.5) (<= ?Strategie 0.5) (<= ?Violence 0.5)))
=>
  (assert (class Watch)))

(defrule Regle13
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Multijoueur ?Multijoueur) (Violence ?Violence) (Combat ?Combat))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (> ?Multijoueur 0.5) (<= ?Violence 0.5) (> ?Combat 0.5)))
=>
  (assert (class Fortnite)))

(defrule Regle14
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Realiste ?Realiste))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (> ?Strategie 0.5) (> ?Realiste 0.5)))
=>
  (assert (class League)))

(defrule Regle15
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Combat ?Combat) (Simulation ?Simulation) (Multijoueur ?Multijoueur))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Combat 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5)))
=>
  (assert (class 60)))

(defrule Regle16
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Violence ?Violence))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (> ?Combat 0.5) (<= ?Violence 0.5)))
=>
  (assert (class Far)))

(defrule Regle17
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Strategie ?Strategie))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (> ?Sport 0.5) (> ?Strategie 0.5)))
=>
  (assert (class Overwatch)))

(defrule Regle18
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Strategie ?Strategie) (Voiture ?Voiture))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (> ?Sport 0.5) (<= ?Strategie 0.5) (<= ?Voiture 0.5)))
=>
  (assert (class Marvel)))

(defrule Regle19
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Multijoueur ?Multijoueur) (Plateforme ?Plateforme))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (<= ?Puzzle 0.5) (<= ?Multijoueur 0.5) (> ?Plateforme 0.5)))
=>
  (assert (class Clash)))

(defrule Regle20
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Strategie ?Strategie))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (> ?Puzzle 0.5) (> ?Strategie 0.5)))
=>
  (assert (class Plato)))

(defrule Regle21
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Violence ?Violence) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (> ?Combat 0.5) (> ?Violence 0.5) (> ?FPS 0.5)))
=>
  (assert (class Sims)))

(defrule Regle22
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Combat ?Combat) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (FPS ?FPS) (Action ?Action))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Combat 0.5) (<= ?Simulation 0.5) (> ?Multijoueur 0.5) (<= ?FPS 0.5) (<= ?Action 0.5)))
=>
  (assert (class Star)))

(defrule Regle23
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Realiste ?Realiste) (Monde-ouvert ?Monde-ouvert))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (> ?Strategie 0.5) (<= ?Realiste 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Subway)))

(defrule Regle24
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Violence ?Violence) (FPS ?FPS) (Multijoueur ?Multijoueur))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (> ?Combat 0.5) (> ?Violence 0.5) (<= ?FPS 0.5) (<= ?Multijoueur 0.5)))
=>
  (assert (class F1)))

(defrule Regle25
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Strategie ?Strategie) (Voiture ?Voiture) (Action ?Action))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (> ?Sport 0.5) (<= ?Strategie 0.5) (> ?Voiture 0.5) (> ?Action 0.5)))
=>
  (assert (class PUBG)))

(defrule Regle26
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (<= ?Violence 0.5) (<= ?Combat 0.5) (> ?Monde-ouvert 0.5) (> ?FPS 0.5)))
=>
  (assert (class Plague)))

(defrule Regle27
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (> ?Battle-royale 0.5)))
=>
  (assert (class Flight)))

(defrule Regle28
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Multijoueur ?Multijoueur) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS) (Strategie ?Strategie))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (<= ?Sport 0.5) (<= ?Multijoueur 0.5) (<= ?Monde-ouvert 0.5) (<= ?FPS 0.5) (<= ?Strategie 0.5)))
=>
  (assert (class Diablo)))

(defrule Regle29
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Multijoueur ?Multijoueur) (Violence ?Violence) (Realiste ?Realiste) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (> ?Multijoueur 0.5) (> ?Violence 0.5) (> ?Realiste 0.5) (> ?FPS 0.5)))
=>
  (assert (class Crash)))

(defrule Regle30
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Strategie ?Strategie) (Voiture ?Voiture) (Action ?Action) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (> ?Sport 0.5) (<= ?Strategie 0.5) (> ?Voiture 0.5) (<= ?Action 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Overcooked)))

(defrule Regle31
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Multijoueur ?Multijoueur) (Action ?Action) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (<= ?Sport 0.5) (> ?Multijoueur 0.5) (<= ?Action 0.5) (<= ?FPS 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Roblox)))

(defrule Regle32
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Multijoueur ?Multijoueur) (Violence ?Violence) (Realiste ?Realiste) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (> ?Multijoueur 0.5) (> ?Violence 0.5) (<= ?Realiste 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class World)))

(defrule Regle33
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (<= ?Violence 0.5) (> ?Combat 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Farming)))

(defrule Regle34
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Combat ?Combat) (Simulation ?Simulation))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Combat 0.5) (> ?Simulation 0.5)))
=>
  (assert (class Lego)))

(defrule Regle35
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Combat ?Combat) (Plateforme ?Plateforme))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (<= ?Puzzle 0.5) (> ?Multijoueur 0.5) (> ?Strategie 0.5) (> ?Combat 0.5) (<= ?Plateforme 0.5)))
=>
  (assert (class Football)))

(defrule Regle36
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Multijoueur ?Multijoueur) (Combat ?Combat))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (<= ?Multijoueur 0.5) (> ?Combat 0.5)))
=>
  (assert (class Surviving)))

(defrule Regle37
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Plateforme ?Plateforme))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (<= ?Puzzle 0.5) (> ?Multijoueur 0.5) (<= ?Strategie 0.5) (> ?Plateforme 0.5)))
=>
  (assert (class Lego)))

(defrule Regle38
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (<= ?Sport 0.5) (> ?Multijoueur 0.5) (> ?Action 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Need)))

(defrule Regle39
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (> ?Battle-royale 0.5) (<= ?FPS 0.5)))
=>
  (assert (class GTA)))

(defrule Regle40
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (> ?Plateforme 0.5) (<= ?Sport 0.5)))
=>
  (assert (class Call)))

(defrule Regle41
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (> ?Battle-royale 0.5) (> ?FPS 0.5) (> ?Realiste 0.5)))
=>
  (assert (class Life)))

(defrule Regle42
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Realiste ?Realiste) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (> ?Strategie 0.5) (<= ?Realiste 0.5) (> ?Monde-ouvert 0.5) (> ?Combat 0.5)))
=>
  (assert (class Marvel)))

(defrule Regle43
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Multijoueur ?Multijoueur) (Combat ?Combat))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (<= ?Multijoueur 0.5) (<= ?Combat 0.5)))
=>
  (assert (class Jurassic)))

(defrule Regle44
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (> ?Plateforme 0.5) (> ?Sport 0.5) (<= ?FPS 0.5)))
=>
  (assert (class Monster)))

(defrule Regle45
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Realiste ?Realiste) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (> ?Strategie 0.5) (<= ?Realiste 0.5) (> ?Monde-ouvert 0.5) (<= ?Combat 0.5)))
=>
  (assert (class Mario)))

(defrule Regle46
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (> ?Sport 0.5)))
=>
  (assert (class Tennis)))

(defrule Regle47
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Plateforme ?Plateforme))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (<= ?Puzzle 0.5) (> ?Multijoueur 0.5) (<= ?Strategie 0.5) (<= ?Plateforme 0.5)))
=>
  (assert (class Tomb)))

(defrule Regle48
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Simulation ?Simulation))
  (test (and (> ?Survie 0.5) (> ?Puzzle 0.5) (> ?Simulation 0.5)))
=>
  (assert (class Paladins)))

(defrule Regle49
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (> ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Rocket)))

(defrule Regle50
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (<= ?Sport 0.5) (> ?Multijoueur 0.5) (> ?Action 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Just)))

(defrule Regle51
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Multijoueur ?Multijoueur) (Action ?Action) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (<= ?Sport 0.5) (> ?Multijoueur 0.5) (<= ?Action 0.5) (> ?FPS 0.5)))
=>
  (assert (class Clash)))

(defrule Regle52
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Multijoueur ?Multijoueur) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5) (> ?Multijoueur 0.5) (<= ?FPS 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Planet)))

(defrule Regle53
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (<= ?Violence 0.5) (> ?Combat 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Hearthstone)))

(defrule Regle54
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Strategie ?Strategie) (Plateforme ?Plateforme))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (> ?Puzzle 0.5) (<= ?Strategie 0.5) (> ?Plateforme 0.5)))
=>
  (assert (class Battlefield)))

(defrule Regle55
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Multijoueur ?Multijoueur) (Plateforme ?Plateforme) (Strategie ?Strategie) (Violence ?Violence))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (<= ?Puzzle 0.5) (<= ?Multijoueur 0.5) (<= ?Plateforme 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5)))
=>
  (assert (class StoryTeller)))

(defrule Regle56
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Multijoueur ?Multijoueur) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS) (Strategie ?Strategie))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (<= ?Sport 0.5) (<= ?Multijoueur 0.5) (<= ?Monde-ouvert 0.5) (<= ?FPS 0.5) (> ?Strategie 0.5)))
=>
  (assert (class Youtubers)))

(defrule Regle57
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Multijoueur ?Multijoueur) (Realiste ?Realiste) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5) (<= ?Multijoueur 0.5) (> ?Realiste 0.5) (> ?FPS 0.5)))
=>
  (assert (class Street)))

(defrule Regle58
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Multijoueur ?Multijoueur) (Violence ?Violence) (Realiste ?Realiste) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (> ?Multijoueur 0.5) (> ?Violence 0.5) (<= ?Realiste 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class World)))

(defrule Regle59
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (> ?Plateforme 0.5) (> ?Sport 0.5) (> ?FPS 0.5)))
=>
  (assert (class Final)))

(defrule Regle60
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Multijoueur ?Multijoueur) (Violence ?Violence) (Realiste ?Realiste) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (> ?Multijoueur 0.5) (> ?Violence 0.5) (> ?Realiste 0.5) (<= ?FPS 0.5)))
=>
  (assert (class World)))

(defrule Regle61
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Multijoueur ?Multijoueur) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (<= ?Sport 0.5) (<= ?Multijoueur 0.5) (<= ?Monde-ouvert 0.5) (> ?FPS 0.5)))
=>
  (assert (class Pac)))

(defrule Regle62
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (<= ?Violence 0.5) (<= ?Combat 0.5) (<= ?Monde-ouvert 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Tetris)))

(defrule Regle63
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Multijoueur ?Multijoueur) (Action ?Action) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (<= ?Sport 0.5) (> ?Multijoueur 0.5) (<= ?Action 0.5) (<= ?FPS 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class HayDay)))

(defrule Regle64
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Combat ?Combat) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (FPS ?FPS))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Combat 0.5) (<= ?Simulation 0.5) (> ?Multijoueur 0.5) (> ?FPS 0.5)))
=>
  (assert (class Slime)))

(defrule Regle65
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Battle-royale ?Battle-royale) (Puzzle ?Puzzle) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Combat ?Combat) (Plateforme ?Plateforme))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (<= ?Action 0.5) (<= ?Battle-royale 0.5) (<= ?Puzzle 0.5) (> ?Multijoueur 0.5) (> ?Strategie 0.5) (> ?Combat 0.5) (> ?Plateforme 0.5)))
=>
  (assert (class Geometry)))

(defrule Regle66
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Multijoueur ?Multijoueur) (FPS ?FPS) (Puzzle ?Puzzle))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5) (> ?Multijoueur 0.5) (> ?FPS 0.5) (> ?Puzzle 0.5)))
=>
  (assert (class Phasmophobia)))

(defrule Regle67
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Combat ?Combat) (Plateforme ?Plateforme))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (> ?Combat 0.5) (> ?Plateforme 0.5)))
=>
  (assert (class Mirror)))

(defrule Regle68
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Multijoueur ?Multijoueur) (Violence ?Violence) (Combat ?Combat))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (> ?Multijoueur 0.5) (<= ?Violence 0.5) (<= ?Combat 0.5)))
=>
  (assert (class Call)))

(defrule Regle69
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Sport ?Sport) (Strategie ?Strategie) (Voiture ?Voiture) (Action ?Action) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5) (> ?Sport 0.5) (<= ?Strategie 0.5) (> ?Voiture 0.5) (<= ?Action 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Satisfactory)))

(defrule Regle70
  (Data (Survie ?Survie) (Simulation ?Simulation) (Combat ?Combat) (Violence ?Violence) (FPS ?FPS) (Multijoueur ?Multijoueur))
  (test (and (<= ?Survie 0.5) (> ?Simulation 0.5) (> ?Combat 0.5) (> ?Violence 0.5) (<= ?FPS 0.5) (> ?Multijoueur 0.5)))
=>
  (assert (class Subnautica)))

(defrule Regle71
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste) (Horreur ?Horreur))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (<= ?Violence 0.5) (<= ?Combat 0.5) (<= ?Monde-ouvert 0.5) (> ?Realiste 0.5) (<= ?Horreur 0.5)))
=>
  (assert (class Hello)))

(defrule Regle72
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Multijoueur ?Multijoueur) (FPS ?FPS) (Puzzle ?Puzzle) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5) (> ?Multijoueur 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (> ?Monde-ouvert 0.5) (> ?Realiste 0.5)))
=>
  (assert (class Jedi)))

(defrule Regle73
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Multijoueur ?Multijoueur) (FPS ?FPS) (Puzzle ?Puzzle) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5) (> ?Multijoueur 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (> ?Monde-ouvert 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Red)))

(defrule Regle74
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Multijoueur ?Multijoueur) (FPS ?FPS) (Puzzle ?Puzzle) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5) (> ?Multijoueur 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class House)))

(defrule Regle75
  (Data (Survie ?Survie) (Puzzle ?Puzzle) (Strategie ?Strategie) (Combat ?Combat) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (FPS ?FPS) (Action ?Action))
  (test (and (> ?Survie 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Combat 0.5) (<= ?Simulation 0.5) (> ?Multijoueur 0.5) (<= ?FPS 0.5) (> ?Action 0.5)))
=>
  (assert (class Raft)))

(defrule Regle76
  (Data (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Plateforme ?Plateforme) (Sport ?Sport) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Violence ?Violence) (Multijoueur ?Multijoueur) (Realiste ?Realiste) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Survie 0.5) (<= ?Simulation 0.5) (> ?Action 0.5) (<= ?Plateforme 0.5) (<= ?Sport 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Violence 0.5) (<= ?Multijoueur 0.5) (> ?Realiste 0.5) (<= ?FPS 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Internet)))

