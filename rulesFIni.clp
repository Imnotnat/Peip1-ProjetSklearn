(deftemplate Data
   (slot Plateforme)
   (slot Voiture)
   (slot Sport)
   (slot Survie)
   (slot Battle-royale)
   (slot FPS)
   (slot Puzzle)
   (slot Strategie)
   (slot Simulation)
   (slot Monde-ouvert)
   (slot Action)
   (slot Multijoueur)
   (slot Realiste)
   (slot Violence)
   (slot Horreur)
   (slot Combat)
)

(defrule Regle1
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Action ?Action) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (> ?Simulation 0.5) (<= ?Action 0.5) (<= ?Multijoueur 0.5) (<= ?Strategie 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Super)))

(defrule Regle2
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Combat ?Combat) (Action ?Action))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (> ?Multijoueur 0.5) (<= ?Combat 0.5) (<= ?Action 0.5)))
=>
  (assert (class Outlast)))

(defrule Regle3
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Realiste ?Realiste) (Multijoueur ?Multijoueur))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (> ?Violence 0.5) (<= ?Realiste 0.5) (<= ?Multijoueur 0.5)))
=>
  (assert (class Among)))

(defrule Regle4
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Action ?Action) (Puzzle ?Puzzle))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (> ?Strategie 0.5) (<= ?Action 0.5) (<= ?Puzzle 0.5)))
=>
  (assert (class Fruit)))

(defrule Regle5
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Action ?Action))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (<= ?FPS 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?Action 0.5)))
=>
  (assert (class Pokemon)))

(defrule Regle6
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Puzzle ?Puzzle))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (<= ?Strategie 0.5) (> ?Puzzle 0.5)))
=>
  (assert (class Tomb)))

(defrule Regle7
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Realiste ?Realiste) (Strategie ?Strategie) (Monde-ouvert ?Monde-ouvert) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (> ?Violence 0.5) (> ?Realiste 0.5) (<= ?Strategie 0.5) (> ?Monde-ouvert 0.5) (<= ?Simulation 0.5)))
=>
  (assert (class Football)))

(defrule Regle8
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Puzzle ?Puzzle) (Action ?Action))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (<= ?Strategie 0.5) (<= ?Puzzle 0.5) (<= ?Action 0.5)))
=>
  (assert (class StoryTeller)))

(defrule Regle9
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Realiste ?Realiste) (Strategie ?Strategie) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (> ?Violence 0.5) (> ?Realiste 0.5) (<= ?Strategie 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Plato)))

(defrule Regle10
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Puzzle ?Puzzle) (Action ?Action) (Horreur ?Horreur) (Combat ?Combat) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (<= ?Strategie 0.5) (<= ?Puzzle 0.5) (> ?Action 0.5) (<= ?Horreur 0.5) (<= ?Combat 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Elden)))

(defrule Regle11
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Puzzle ?Puzzle) (Action ?Action) (Horreur ?Horreur))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (<= ?Strategie 0.5) (<= ?Puzzle 0.5) (> ?Action 0.5) (> ?Horreur 0.5)))
=>
  (assert (class The)))

(defrule Regle12
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Action ?Action))
  (test (and (<= ?Plateforme 0.5) (> ?Voiture 0.5) (> ?Action 0.5)))
=>
  (assert (class The)))

(defrule Regle13
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (> ?Sport 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Uncharted)))

(defrule Regle14
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Action ?Action) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (> ?Strategie 0.5) (> ?Action 0.5) (<= ?Combat 0.5)))
=>
  (assert (class Life)))

(defrule Regle15
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (> ?FPS 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Battlefield)))

(defrule Regle16
  (Data (Plateforme ?Plateforme) (Survie ?Survie) (Monde-ouvert ?Monde-ouvert))
  (test (and (> ?Plateforme 0.5) (<= ?Survie 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Subnautica)))

(defrule Regle17
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (> ?Strategie 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Trove)))

(defrule Regle18
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Action ?Action) (Multijoueur ?Multijoueur))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (<= ?FPS 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (<= ?Action 0.5) (<= ?Multijoueur 0.5)))
=>
  (assert (class Lords)))

(defrule Regle19
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (> ?Battle-royale 0.5) (> ?Strategie 0.5)))
=>
  (assert (class Flight)))

(defrule Regle20
  (Data (Plateforme ?Plateforme) (Survie ?Survie))
  (test (and (> ?Plateforme 0.5) (> ?Survie 0.5)))
=>
  (assert (class PUBG)))

(defrule Regle21
  (Data (Plateforme ?Plateforme) (Survie ?Survie) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat))
  (test (and (> ?Plateforme 0.5) (<= ?Survie 0.5) (<= ?Monde-ouvert 0.5) (> ?Combat 0.5)))
=>
  (assert (class Geometry)))

(defrule Regle22
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.5) (> ?Voiture 0.5) (<= ?Action 0.5) (> ?FPS 0.5)))
=>
  (assert (class Clash)))

(defrule Regle23
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Puzzle ?Puzzle))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (<= ?FPS 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (<= ?Puzzle 0.5)))
=>
  (assert (class Subway)))

(defrule Regle24
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert) (Multijoueur ?Multijoueur))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (> ?FPS 0.5) (> ?Monde-ouvert 0.5) (<= ?Multijoueur 0.5)))
=>
  (assert (class Tennis)))

(defrule Regle25
  (Data (Plateforme ?Plateforme) (Survie ?Survie) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat) (Puzzle ?Puzzle))
  (test (and (> ?Plateforme 0.5) (<= ?Survie 0.5) (<= ?Monde-ouvert 0.5) (<= ?Combat 0.5) (> ?Puzzle 0.5)))
=>
  (assert (class Surviving)))

(defrule Regle26
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Combat ?Combat) (Action ?Action))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (> ?Multijoueur 0.5) (> ?Combat 0.5) (<= ?Action 0.5)))
=>
  (assert (class Watch)))

(defrule Regle27
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Realiste ?Realiste) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (> ?Strategie 0.5) (> ?Realiste 0.5) (> ?Combat 0.5)))
=>
  (assert (class Jedi)))

(defrule Regle28
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Action ?Action) (Multijoueur ?Multijoueur) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (> ?Simulation 0.5) (<= ?Action 0.5) (> ?Multijoueur 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class HayDay)))

(defrule Regle29
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Realiste ?Realiste) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (> ?Violence 0.5) (> ?Realiste 0.5) (> ?Strategie 0.5)))
=>
  (assert (class World)))

(defrule Regle30
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (> ?Battle-royale 0.5) (<= ?Strategie 0.5) (<= ?FPS 0.5)))
=>
  (assert (class GTA)))

(defrule Regle31
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (> ?Puzzle 0.5)))
=>
  (assert (class Phasmophobia)))

(defrule Regle32
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Simulation 0.5) (<= ?Monde-ouvert 0.5) (> ?Combat 0.5)))
=>
  (assert (class Jurassic)))

(defrule Regle33
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Simulation 0.5) (<= ?Monde-ouvert 0.5) (<= ?Combat 0.5)))
=>
  (assert (class Tetris)))

(defrule Regle34
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Battle-royale ?Battle-royale))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (<= ?FPS 0.5) (> ?Battle-royale 0.5)))
=>
  (assert (class Mario)))

(defrule Regle35
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Realiste ?Realiste) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (> ?Sport 0.5) (> ?Realiste 0.5) (> ?Strategie 0.5)))
=>
  (assert (class Raft)))

(defrule Regle36
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Realiste ?Realiste) (Strategie ?Strategie) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (> ?Sport 0.5) (> ?Realiste 0.5) (<= ?Strategie 0.5) (> ?Simulation 0.5)))
=>
  (assert (class Youtubers)))

(defrule Regle37
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert) (Action ?Action) (Multijoueur ?Multijoueur) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Simulation 0.5) (> ?Monde-ouvert 0.5) (> ?Action 0.5) (<= ?Multijoueur 0.5) (> ?Combat 0.5)))
=>
  (assert (class Street)))

(defrule Regle38
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Simulation ?Simulation) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (> ?Simulation 0.5) (<= ?Combat 0.5)))
=>
  (assert (class Pac)))

(defrule Regle39
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert) (Multijoueur ?Multijoueur) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (> ?FPS 0.5) (> ?Monde-ouvert 0.5) (> ?Multijoueur 0.5) (<= ?Violence 0.5)))
=>
  (assert (class League)))

(defrule Regle40
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Simulation ?Simulation) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (> ?Simulation 0.5) (> ?Combat 0.5)))
=>
  (assert (class Sims)))

(defrule Regle41
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (> ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?FPS 0.5) (> ?Realiste 0.5)))
=>
  (assert (class World)))

(defrule Regle42
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Realiste ?Realiste) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (> ?Strategie 0.5) (> ?Realiste 0.5) (<= ?Combat 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Raid)))

(defrule Regle43
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (> ?Voiture 0.5) (<= ?Action 0.5) (<= ?FPS 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Planet)))

(defrule Regle44
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert) (Multijoueur ?Multijoueur) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (> ?FPS 0.5) (> ?Monde-ouvert 0.5) (> ?Multijoueur 0.5) (> ?Violence 0.5)))
=>
  (assert (class 60)))

(defrule Regle45
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Action ?Action) (Multijoueur ?Multijoueur) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (> ?Simulation 0.5) (<= ?Action 0.5) (> ?Multijoueur 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Roblox)))

(defrule Regle46
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Action ?Action))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (> ?Simulation 0.5) (> ?Action 0.5)))
=>
  (assert (class Portal)))

(defrule Regle47
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Realiste ?Realiste) (Multijoueur ?Multijoueur) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (> ?Violence 0.5) (<= ?Realiste 0.5) (> ?Multijoueur 0.5) (<= ?Strategie 0.5)))
=>
  (assert (class Final)))

(defrule Regle48
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Combat ?Combat) (Action ?Action))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (> ?Multijoueur 0.5) (> ?Combat 0.5) (> ?Action 0.5)))
=>
  (assert (class Fortnite)))

(defrule Regle49
  (Data (Plateforme ?Plateforme) (Survie ?Survie) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat) (Puzzle ?Puzzle) (Realiste ?Realiste))
  (test (and (> ?Plateforme 0.5) (<= ?Survie 0.5) (<= ?Monde-ouvert 0.5) (<= ?Combat 0.5) (<= ?Puzzle 0.5) (> ?Realiste 0.5)))
=>
  (assert (class Mortal)))

(defrule Regle50
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Realiste ?Realiste) (Strategie ?Strategie) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (> ?Sport 0.5) (> ?Realiste 0.5) (<= ?Strategie 0.5) (<= ?Simulation 0.5)))
=>
  (assert (class Crash)))

(defrule Regle51
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Puzzle ?Puzzle) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (<= ?FPS 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (> ?Puzzle 0.5) (> ?Realiste 0.5)))
=>
  (assert (class Trackmania)))

(defrule Regle52
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Realiste ?Realiste) (Multijoueur ?Multijoueur) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (> ?Violence 0.5) (<= ?Realiste 0.5) (> ?Multijoueur 0.5) (> ?Strategie 0.5)))
=>
  (assert (class World)))

(defrule Regle53
  (Data (Plateforme ?Plateforme) (Survie ?Survie) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat) (Puzzle ?Puzzle) (Realiste ?Realiste) (Action ?Action) (Multijoueur ?Multijoueur))
  (test (and (> ?Plateforme 0.5) (<= ?Survie 0.5) (<= ?Monde-ouvert 0.5) (<= ?Combat 0.5) (<= ?Puzzle 0.5) (<= ?Realiste 0.5) (<= ?Action 0.5) (<= ?Multijoueur 0.5)))
=>
  (assert (class Clash)))

(defrule Regle54
  (Data (Plateforme ?Plateforme) (Survie ?Survie) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat) (Puzzle ?Puzzle) (Realiste ?Realiste) (Action ?Action))
  (test (and (> ?Plateforme 0.5) (<= ?Survie 0.5) (<= ?Monde-ouvert 0.5) (<= ?Combat 0.5) (<= ?Puzzle 0.5) (<= ?Realiste 0.5) (> ?Action 0.5)))
=>
  (assert (class Call)))

(defrule Regle55
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (> ?Voiture 0.5) (<= ?Action 0.5) (<= ?FPS 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class The)))

(defrule Regle56
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Action ?Action) (Multijoueur ?Multijoueur))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (<= ?FPS 0.5) (<= ?Battle-royale 0.5) (<= ?Strategie 0.5) (<= ?Action 0.5) (> ?Multijoueur 0.5)))
=>
  (assert (class House)))

(defrule Regle57
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Puzzle ?Puzzle) (Action ?Action) (Horreur ?Horreur) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (<= ?Strategie 0.5) (<= ?Puzzle 0.5) (> ?Action 0.5) (<= ?Horreur 0.5) (> ?Combat 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Euro)))

(defrule Regle58
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (FPS ?FPS) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (Puzzle ?Puzzle) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (> ?Survie 0.5) (<= ?FPS 0.5) (<= ?Battle-royale 0.5) (> ?Strategie 0.5) (> ?Puzzle 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Fifa)))

(defrule Regle59
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Combat ?Combat) (Action ?Action))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (> ?Multijoueur 0.5) (<= ?Combat 0.5) (> ?Action 0.5)))
=>
  (assert (class Call)))

(defrule Regle60
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Action ?Action) (Multijoueur ?Multijoueur) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (> ?Simulation 0.5) (<= ?Action 0.5) (<= ?Multijoueur 0.5) (> ?Strategie 0.5)))
=>
  (assert (class Rainbow)))

(defrule Regle61
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert) (Action ?Action) (Multijoueur ?Multijoueur) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Simulation 0.5) (> ?Monde-ouvert 0.5) (> ?Action 0.5) (> ?Multijoueur 0.5) (> ?Realiste 0.5)))
=>
  (assert (class Plague)))

(defrule Regle62
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert) (Action ?Action))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Simulation 0.5) (> ?Monde-ouvert 0.5) (<= ?Action 0.5)))
=>
  (assert (class Agar)))

(defrule Regle63
  (Data (Plateforme ?Plateforme) (Survie ?Survie) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat) (Puzzle ?Puzzle) (Realiste ?Realiste) (Action ?Action) (Multijoueur ?Multijoueur))
  (test (and (> ?Plateforme 0.5) (<= ?Survie 0.5) (<= ?Monde-ouvert 0.5) (<= ?Combat 0.5) (<= ?Puzzle 0.5) (<= ?Realiste 0.5) (<= ?Action 0.5) (> ?Multijoueur 0.5)))
=>
  (assert (class Lego)))

(defrule Regle64
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (Strategie ?Strategie) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (> ?Battle-royale 0.5) (<= ?Strategie 0.5) (> ?FPS 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Rocket)))

(defrule Regle65
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Realiste ?Realiste) (Strategie ?Strategie) (Monde-ouvert ?Monde-ouvert) (Simulation ?Simulation) (Multijoueur ?Multijoueur))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (> ?Violence 0.5) (> ?Realiste 0.5) (<= ?Strategie 0.5) (> ?Monde-ouvert 0.5) (> ?Simulation 0.5) (> ?Multijoueur 0.5)))
=>
  (assert (class Palworld)))

(defrule Regle66
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Realiste ?Realiste) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (> ?Strategie 0.5) (> ?Realiste 0.5) (<= ?Combat 0.5) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Just)))

(defrule Regle67
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert) (Action ?Action) (Multijoueur ?Multijoueur) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Simulation 0.5) (> ?Monde-ouvert 0.5) (> ?Action 0.5) (<= ?Multijoueur 0.5) (<= ?Combat 0.5)))
=>
  (assert (class Destiny)))

(defrule Regle68
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Realiste ?Realiste) (Strategie ?Strategie) (Monde-ouvert ?Monde-ouvert) (Simulation ?Simulation) (Multijoueur ?Multijoueur))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (> ?Violence 0.5) (> ?Realiste 0.5) (<= ?Strategie 0.5) (> ?Monde-ouvert 0.5) (> ?Simulation 0.5) (<= ?Multijoueur 0.5)))
=>
  (assert (class F1)))

(defrule Regle69
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Puzzle ?Puzzle) (Strategie ?Strategie) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert) (Action ?Action) (Multijoueur ?Multijoueur) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (> ?FPS 0.5) (<= ?Puzzle 0.5) (<= ?Strategie 0.5) (<= ?Simulation 0.5) (> ?Monde-ouvert 0.5) (> ?Action 0.5) (> ?Multijoueur 0.5) (<= ?Realiste 0.5)))
=>
  (assert (class Red)))

(defrule Regle70
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Puzzle ?Puzzle) (Action ?Action) (Horreur ?Horreur) (Combat ?Combat) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (<= ?Strategie 0.5) (<= ?Puzzle 0.5) (> ?Action 0.5) (<= ?Horreur 0.5) (<= ?Combat 0.5) (> ?Realiste 0.5)))
=>
  (assert (class Hello)))

(defrule Regle71
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Action ?Action) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (> ?Simulation 0.5) (<= ?Action 0.5) (<= ?Multijoueur 0.5) (<= ?Strategie 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Diablo)))

(defrule Regle72
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Action ?Action) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (> ?Strategie 0.5) (> ?Action 0.5) (> ?Combat 0.5)))
=>
  (assert (class Monster)))

(defrule Regle73
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Action ?Action) (Puzzle ?Puzzle))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (> ?Strategie 0.5) (<= ?Action 0.5) (> ?Puzzle 0.5)))
=>
  (assert (class Overcooked)))

(defrule Regle74
  (Data (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Survie ?Survie) (Battle-royale ?Battle-royale) (FPS ?FPS) (Violence ?Violence) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (Strategie ?Strategie) (Puzzle ?Puzzle) (Action ?Action) (Horreur ?Horreur) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.5) (<= ?Voiture 0.5) (<= ?Sport 0.5) (<= ?Survie 0.5) (<= ?Battle-royale 0.5) (<= ?FPS 0.5) (<= ?Violence 0.5) (<= ?Simulation 0.5) (<= ?Multijoueur 0.5) (<= ?Strategie 0.5) (<= ?Puzzle 0.5) (> ?Action 0.5) (<= ?Horreur 0.5) (> ?Combat 0.5) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Hearthstone)))

(deffacts df1

  (Data (Plateforme 0) (Voiture 1) (Sport 1) (Survie 0) (Battle-royale 0) (FPS 0) (Puzzle 1) (Strategie 0) (Simulation 0) (Monde-ouvert 0) (Action 0) (Multijoueur 1) (Realiste 1))
)