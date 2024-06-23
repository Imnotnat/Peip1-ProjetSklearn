(defrule Regle1
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (<= ?Strategie 0.75) (<= ?Action 0.75) (<= ?Strategie 0.3) (<= ?Plateforme 0.4) (<= ?Action 0.65)))
=>
  (assert (class StoryTeller)))

(defrule Regle2
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (> ?Strategie 0.75) (<= ?Action 0.3) (<= ?Action 0.1) (<= ?Battle-royale 0.3) (> ?Multijoueur 0.75)))
=>
  (assert (class Subway)))

(defrule Regle3
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (> ?Simulation 0.95) (<= ?Multijoueur 0.2) (<= ?FPS 0.05) (> ?Monde-ouvert 0.2) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Ark)))

(defrule Regle4
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Multijoueur ?Multijoueur) (Action ?Action))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (> ?Plateforme 0.85) (<= ?Multijoueur 0.05) (<= ?Action 0.3)))
=>
  (assert (class Clash)))

(defrule Regle5
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (> ?Simulation 0.95) (<= ?Multijoueur 0.2) (<= ?FPS 0.05) (<= ?Monde-ouvert 0.2)))
=>
  (assert (class Star)))

(defrule Regle6
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (> ?Puzzle 0.5) (<= ?Strategie 0.35) (<= ?Plateforme 0.4)))
=>
  (assert (class World)))

(defrule Regle7
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (<= ?Strategie 0.75) (<= ?Action 0.75) (> ?Strategie 0.3) (> ?Multijoueur 0.2) (> ?Strategie 0.65)))
=>
  (assert (class World)))

(defrule Regle8
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (> ?Simulation 0.6) (<= ?Strategie 0.2) (<= ?Realiste 0.35)))
=>
  (assert (class HayDay)))

(defrule Regle9
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Realiste ?Realiste) (Combat ?Combat))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (> ?Simulation 0.1) (<= ?Realiste 0.4) (<= ?Combat 0.35)))
=>
  (assert (class Lords)))

(defrule Regle10
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (> ?Simulation 0.1) (> ?Realiste 0.4)))
=>
  (assert (class Subnautica)))

(defrule Regle11
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (> ?Sport 0.15) (<= ?Multijoueur 0.35)))
=>
  (assert (class Uncharted)))

(defrule Regle12
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (> ?Sport 0.15) (> ?Multijoueur 0.35) (> ?Strategie 0.35)))
=>
  (assert (class Surviving)))

(defrule Regle13
  (Data (Violence ?Violence) (FPS ?FPS))
  (test (and (> ?Violence 0.95) (<= ?FPS 0.5)))
=>
  (assert (class Planet)))

(defrule Regle14
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (> ?Simulation 0.6) (> ?Strategie 0.2)))
=>
  (assert (class Eco)))

(defrule Regle15
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (> ?Violence 0.85) (<= ?Strategie 0.4) (> ?Monde-ouvert 0.9)))
=>
  (assert (class League)))

(defrule Regle16
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (> ?Simulation 0.8) (<= ?Strategie 0.4) (<= ?Monde-ouvert 0.8)))
=>
  (assert (class Plague)))

(defrule Regle17
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (> ?Simulation 0.8) (> ?Strategie 0.4)))
=>
  (assert (class Marvel)))

(defrule Regle18
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (FPS ?FPS))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (> ?Simulation 0.95) (<= ?Multijoueur 0.2) (> ?FPS 0.05)))
=>
  (assert (class Pac)))

(defrule Regle19
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (> ?Puzzle 0.5) (> ?Strategie 0.35)))
=>
  (assert (class The)))

(defrule Regle20
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (> ?FPS 0.8) (> ?Violence 0.2) (<= ?Strategie 0.55) (> ?Realiste 0.1)))
=>
  (assert (class Tomb)))

(defrule Regle21
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (> ?FPS 0.8) (> ?Violence 0.2) (> ?Strategie 0.55)))
=>
  (assert (class Escape)))

(defrule Regle22
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Combat ?Combat))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (> ?Action 0.95) (<= ?Combat 0.5) (<= ?Violence 0.85)))
=>
  (assert (class The)))

(defrule Regle23
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (> ?FPS 0.8) (<= ?Violence 0.2)))
=>
  (assert (class Jedi)))

(defrule Regle24
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Combat ?Combat))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (> ?Action 0.85) (<= ?Combat 0.8)))
=>
  (assert (class Steep)))

(defrule Regle25
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (> ?Violence 0.75) (<= ?Strategie 0.35)))
=>
  (assert (class Cities)))

(defrule Regle26
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Combat ?Combat))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (> ?Realiste 0.15) (> ?Combat 0.7)))
=>
  (assert (class PUBG)))

(defrule Regle27
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (> ?Realiste 0.15) (<= ?Combat 0.7) (> ?Monde-ouvert 0.15) (> ?Violence 0.6) (> ?Realiste 0.9)))
=>
  (assert (class Portal)))

(defrule Regle28
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (> ?Realiste 0.15) (<= ?Combat 0.7) (<= ?Monde-ouvert 0.15)))
=>
  (assert (class Hello)))

(defrule Regle29
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (> ?Strategie 0.75) (> ?Action 0.3)))
=>
  (assert (class Super)))

(defrule Regle30
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (> ?Strategie 0.75) (<= ?Action 0.3) (> ?Action 0.1)))
=>
  (assert (class House)))

(defrule Regle31
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (> ?Strategie 0.75) (<= ?Action 0.3) (<= ?Action 0.1) (> ?Battle-royale 0.3)))
=>
  (assert (class Mario)))

(defrule Regle32
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (> ?Strategie 0.75) (<= ?Action 0.3) (<= ?Action 0.1) (<= ?Battle-royale 0.3) (<= ?Multijoueur 0.75)))
=>
  (assert (class Red)))

(defrule Regle33
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Combat ?Combat))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (<= ?Strategie 0.75) (> ?Action 0.75) (<= ?Combat 0.45)))
=>
  (assert (class Elden)))

(defrule Regle34
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (<= ?Strategie 0.75) (<= ?Action 0.75) (> ?Strategie 0.3) (> ?Multijoueur 0.2) (<= ?Strategie 0.65)))
=>
  (assert (class Football)))

(defrule Regle35
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (<= ?Strategie 0.75) (<= ?Action 0.75) (> ?Strategie 0.3) (<= ?Multijoueur 0.2) (> ?Action 0.2)))
=>
  (assert (class Battlefield)))

(defrule Regle36
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (> ?Simulation 0.95) (> ?Multijoueur 0.2)))
=>
  (assert (class Street)))

(defrule Regle37
  (Data (Violence ?Violence) (FPS ?FPS))
  (test (and (> ?Violence 0.95) (> ?FPS 0.5)))
=>
  (assert (class Minecraft)))

(defrule Regle38
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (> ?Violence 0.85) (> ?Strategie 0.4)))
=>
  (assert (class Diablo)))

(defrule Regle39
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Action ?Action))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (> ?Battle-royale 0.85) (<= ?Action 0.7)))
=>
  (assert (class Raft)))

(defrule Regle40
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (> ?Plateforme 0.85) (> ?Multijoueur 0.05)))
=>
  (assert (class Rainbow)))

(defrule Regle41
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Multijoueur ?Multijoueur) (Action ?Action))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (> ?Plateforme 0.85) (<= ?Multijoueur 0.05) (> ?Action 0.3) (<= ?Action 0.7)))
=>
  (assert (class Call)))

(defrule Regle42
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (> ?Voiture 0.95) (> ?Sport 0.85)))
=>
  (assert (class Plato)))

(defrule Regle43
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Combat ?Combat))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (> ?Action 0.95) (> ?Combat 0.5)))
=>
  (assert (class Lego)))

(defrule Regle44
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Sport ?Sport) (Battle-royale ?Battle-royale) (Action ?Action))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (> ?Strategie 0.95) (<= ?Violence 0.35) (<= ?Sport 0.5) (<= ?Battle-royale 0.1) (> ?Action 0.15)))
=>
  (assert (class Fortnite)))

(defrule Regle45
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Simulation ?Simulation) (Realiste ?Realiste) (Action ?Action))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (> ?Voiture 0.95) (<= ?Sport 0.85) (> ?Simulation 0.65) (> ?Realiste 0.4) (> ?Action 0.25)))
=>
  (assert (class Mirror)))

(defrule Regle46
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Sport ?Sport) (Battle-royale ?Battle-royale))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (> ?Strategie 0.95) (<= ?Violence 0.35) (<= ?Sport 0.5) (> ?Battle-royale 0.1)))
=>
  (assert (class Fifa)))

(defrule Regle47
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Simulation ?Simulation) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (> ?Voiture 0.95) (<= ?Sport 0.85) (> ?Simulation 0.65) (<= ?Realiste 0.4)))
=>
  (assert (class Satisfactory)))

(defrule Regle48
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Sport ?Sport))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (> ?Strategie 0.95) (<= ?Violence 0.35) (> ?Sport 0.5)))
=>
  (assert (class Overwatch)))

(defrule Regle49
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Simulation ?Simulation))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (> ?Voiture 0.95) (<= ?Sport 0.85) (<= ?Simulation 0.65)))
=>
  (assert (class Clash)))

(defrule Regle50
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Action ?Action) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (> ?Battle-royale 0.85) (> ?Action 0.7) (> ?Monde-ouvert 0.4)))
=>
  (assert (class Flight)))

(defrule Regle51
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (> ?Strategie 0.95) (> ?Violence 0.35)))
=>
  (assert (class Hearthstone)))

(defrule Regle52
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Action ?Action) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (> ?Battle-royale 0.85) (> ?Action 0.7) (<= ?Monde-ouvert 0.4) (> ?Action 0.9)))
=>
  (assert (class NBA)))

(defrule Regle53
  (Data (Violence ?Violence) (Horreur ?Horreur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (> ?Horreur 0.35)))
=>
  (assert (class Tetris)))

(defrule Regle54
  (Data (Violence ?Violence) (Horreur ?Horreur) (Action ?Action) (FPS ?FPS))
  (test (and (<= ?Violence 0.95) (> ?Horreur 0.85) (> ?Action 0.55) (<= ?FPS 0.55)))
=>
  (assert (class Trove)))

(defrule Regle55
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Simulation ?Simulation) (Action ?Action))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (> ?Survie 0.7) (<= ?Simulation 0.3) (<= ?Action 0.55) (> ?Action 0.3)))
=>
  (assert (class Euro)))

(defrule Regle56
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Multijoueur ?Multijoueur) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (> ?Survie 0.7) (<= ?Simulation 0.3) (<= ?Action 0.55) (<= ?Action 0.3) (<= ?Multijoueur 0.7) (<= ?Realiste 0.35) (<= ?Survie 0.95)))
=>
  (assert (class Marvel)))

(defrule Regle57
  (Data (Violence ?Violence) (Horreur ?Horreur) (Action ?Action) (FPS ?FPS))
  (test (and (<= ?Violence 0.95) (> ?Horreur 0.85) (> ?Action 0.55) (> ?FPS 0.55)))
=>
  (assert (class Zelda)))

(defrule Regle58
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Multijoueur ?Multijoueur) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (> ?Survie 0.7) (<= ?Simulation 0.3) (<= ?Action 0.55) (<= ?Action 0.3) (<= ?Multijoueur 0.7) (> ?Realiste 0.35)))
=>
  (assert (class Raid)))

(defrule Regle59
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (> ?Survie 0.7) (<= ?Simulation 0.3) (<= ?Action 0.55) (<= ?Action 0.3) (> ?Multijoueur 0.7)))
=>
  (assert (class Outlast)))

(defrule Regle60
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Sport ?Sport) (Battle-royale ?Battle-royale) (Action ?Action) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (> ?Strategie 0.95) (<= ?Violence 0.35) (<= ?Sport 0.5) (<= ?Battle-royale 0.1) (<= ?Action 0.15) (<= ?Realiste 0.35)))
=>
  (assert (class The)))

(defrule Regle61
  (Data (Violence ?Violence) (Horreur ?Horreur) (Action ?Action))
  (test (and (<= ?Violence 0.95) (> ?Horreur 0.85) (<= ?Action 0.55) (> ?Action 0.4)))
=>
  (assert (class Far)))

(defrule Regle62
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Simulation ?Simulation) (Action ?Action))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (> ?Survie 0.7) (<= ?Simulation 0.3) (> ?Action 0.55)))
=>
  (assert (class Pokemon)))

(defrule Regle63
  (Data (Violence ?Violence) (Horreur ?Horreur) (Action ?Action))
  (test (and (<= ?Violence 0.95) (> ?Horreur 0.85) (<= ?Action 0.55) (<= ?Action 0.4)))
=>
  (assert (class Paladins)))

(defrule Regle64
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Simulation ?Simulation))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (> ?Survie 0.7) (> ?Simulation 0.3)))
=>
  (assert (class Lego)))

(defrule Regle65
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (> ?Realiste 0.15) (<= ?Combat 0.7) (> ?Monde-ouvert 0.15) (<= ?Violence 0.6) (> ?Violence 0.3) (> ?Multijoueur 0.65)))
=>
  (assert (class Crash)))

(defrule Regle66
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (<= ?Strategie 0.75) (<= ?Action 0.75) (> ?Strategie 0.3) (<= ?Multijoueur 0.2) (<= ?Action 0.2)))
=>
  (assert (class Fruit)))

(defrule Regle67
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Sport ?Sport) (Battle-royale ?Battle-royale) (Action ?Action) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (> ?Strategie 0.95) (<= ?Violence 0.35) (<= ?Sport 0.5) (<= ?Battle-royale 0.1) (<= ?Action 0.15) (> ?Realiste 0.35)))
=>
  (assert (class Mortal)))

(defrule Regle68
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (<= ?Strategie 0.75) (<= ?Action 0.75) (<= ?Strategie 0.3) (> ?Plateforme 0.4)))
=>
  (assert (class Goat)))

(defrule Regle69
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (> ?Realiste 0.15) (<= ?Combat 0.7) (> ?Monde-ouvert 0.15) (<= ?Violence 0.6) (<= ?Violence 0.3)))
=>
  (assert (class Agar)))

(defrule Regle70
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (> ?Realiste 0.15) (<= ?Combat 0.7) (> ?Monde-ouvert 0.15) (<= ?Violence 0.6) (> ?Violence 0.3) (<= ?Multijoueur 0.65)))
=>
  (assert (class World)))

(defrule Regle71
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (<= ?Strategie 0.75) (<= ?Action 0.75) (<= ?Strategie 0.3) (<= ?Plateforme 0.4) (> ?Action 0.65)))
=>
  (assert (class Garry)))

(defrule Regle72
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (<= ?Strategie 0.75) (> ?Action 0.75) (> ?Combat 0.45) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Star)))

(defrule Regle73
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Combat ?Combat))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (> ?Action 0.95) (<= ?Combat 0.5) (> ?Violence 0.85)))
=>
  (assert (class F1)))

(defrule Regle74
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (> ?Realiste 0.15) (<= ?Combat 0.7) (> ?Monde-ouvert 0.15) (> ?Violence 0.6) (<= ?Realiste 0.9)))
=>
  (assert (class Internet)))

(defrule Regle75
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Multijoueur ?Multijoueur) (Action ?Action))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (> ?Plateforme 0.85) (<= ?Multijoueur 0.05) (> ?Action 0.3) (> ?Action 0.7)))
=>
  (assert (class Final)))

(defrule Regle76
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Multijoueur ?Multijoueur) (Realiste ?Realiste) (FPS ?FPS))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (> ?Survie 0.7) (<= ?Simulation 0.3) (<= ?Action 0.55) (<= ?Action 0.3) (<= ?Multijoueur 0.7) (<= ?Realiste 0.35) (> ?Survie 0.95) (<= ?FPS 0.05)))
=>
  (assert (class Valorant)))

(defrule Regle77
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Simulation ?Simulation) (Action ?Action) (Multijoueur ?Multijoueur) (Realiste ?Realiste) (FPS ?FPS))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (> ?Survie 0.7) (<= ?Simulation 0.3) (<= ?Action 0.55) (<= ?Action 0.3) (<= ?Multijoueur 0.7) (<= ?Realiste 0.35) (> ?Survie 0.95) (> ?FPS 0.05)))
=>
  (assert (class Rocket)))

(defrule Regle78
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (> ?Simulation 0.8) (<= ?Strategie 0.4) (> ?Monde-ouvert 0.8)))
=>
  (assert (class CSGO)))

(defrule Regle79
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (> ?Violence 0.85) (<= ?Strategie 0.4) (<= ?Monde-ouvert 0.9)))
=>
  (assert (class Resident)))

(defrule Regle80
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (> ?Simulation 0.6) (<= ?Strategie 0.2) (> ?Realiste 0.35)))
=>
  (assert (class Sea)))

(defrule Regle81
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Multijoueur ?Multijoueur))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (> ?Sport 0.15) (> ?Multijoueur 0.35) (<= ?Strategie 0.35)))
=>
  (assert (class Roblox)))

(defrule Regle82
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Action ?Action) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (> ?Battle-royale 0.85) (> ?Action 0.7) (<= ?Monde-ouvert 0.4) (<= ?Action 0.9)))
=>
  (assert (class Jurassic)))

(defrule Regle83
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (> ?Simulation 0.95) (<= ?Multijoueur 0.2) (<= ?FPS 0.05) (> ?Monde-ouvert 0.2) (> ?Monde-ouvert 0.5) (> ?Monde-ouvert 0.7)))
=>
  (assert (class Among)))

(defrule Regle84
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Realiste ?Realiste) (Combat ?Combat))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (> ?Simulation 0.1) (<= ?Realiste 0.4) (> ?Combat 0.35)))
=>
  (assert (class Sims)))

(defrule Regle85
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (> ?Puzzle 0.5) (<= ?Strategie 0.35) (> ?Plateforme 0.4)))
=>
  (assert (class Slime)))

(defrule Regle86
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Sport ?Sport) (Simulation ?Simulation) (Realiste ?Realiste) (Action ?Action))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (> ?Voiture 0.95) (<= ?Sport 0.85) (> ?Simulation 0.65) (> ?Realiste 0.4) (<= ?Action 0.25)))
=>
  (assert (class Phasmophobia)))

(defrule Regle87
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (> ?FPS 0.8) (> ?Violence 0.2) (<= ?Strategie 0.55) (<= ?Realiste 0.1) (> ?Action 0.8)))
=>
  (assert (class Call)))

(defrule Regle88
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Combat ?Combat))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (> ?Action 0.85) (> ?Combat 0.8)))
=>
  (assert (class Horizon)))

(defrule Regle89
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (> ?Violence 0.75) (> ?Strategie 0.35)))
=>
  (assert (class GTA)))

(defrule Regle90
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Multijoueur ?Multijoueur) (FPS ?FPS) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (> ?Simulation 0.95) (<= ?Multijoueur 0.2) (<= ?FPS 0.05) (> ?Monde-ouvert 0.2) (> ?Monde-ouvert 0.5) (<= ?Monde-ouvert 0.7)))
=>
  (assert (class Brawls)))

(defrule Regle91
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (<= ?FPS 0.8) (<= ?Action 0.85) (<= ?Violence 0.75) (<= ?Realiste 0.15) (<= ?Strategie 0.75) (> ?Action 0.75) (> ?Combat 0.45) (> ?Monde-ouvert 0.5)))
=>
  (assert (class Farming)))

(defrule Regle92
  (Data (Violence ?Violence) (Horreur ?Horreur) (Strategie ?Strategie) (Plateforme ?Plateforme) (Voiture ?Voiture) (Battle-royale ?Battle-royale) (Survie ?Survie) (Action ?Action) (Simulation ?Simulation) (Sport ?Sport) (Puzzle ?Puzzle) (FPS ?FPS) (Realiste ?Realiste))
  (test (and (<= ?Violence 0.95) (<= ?Horreur 0.85) (<= ?Horreur 0.35) (<= ?Strategie 0.95) (<= ?Plateforme 0.85) (<= ?Voiture 0.95) (<= ?Battle-royale 0.85) (<= ?Survie 0.7) (<= ?Action 0.95) (<= ?Simulation 0.95) (<= ?Simulation 0.8) (<= ?Violence 0.85) (<= ?Simulation 0.6) (<= ?Sport 0.15) (<= ?Simulation 0.1) (<= ?Puzzle 0.5) (> ?FPS 0.8) (> ?Violence 0.2) (<= ?Strategie 0.55) (<= ?Realiste 0.1) (<= ?Action 0.8)))
=>
  (assert (class Life)))

