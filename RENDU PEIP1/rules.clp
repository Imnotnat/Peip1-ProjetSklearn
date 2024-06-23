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
  (Data (Plateforme ?Plateforme) (Monde-ouvert ?Monde-ouvert) (Action ?Action) (Multijoueur ?Multijoueur))
  (test (and (> ?Plateforme 0.15) (<= ?Monde-ouvert 0.3) (> ?Plateforme 0.55) (> ?Plateforme 0.85) (<= ?Action 0.3) (<= ?Multijoueur 0.05)))
=>
  (assert (class Clash)))

(defrule Regle2
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Violence ?Violence) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (> ?Realiste 0.15) (<= ?Violence 0.1) (> ?Monde-ouvert 0.2) (<= ?Monde-ouvert 0.5)))
=>
  (assert (class Ark)))

(defrule Regle3
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Violence ?Violence) (Monde-ouvert ?Monde-ouvert) (Puzzle ?Puzzle))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (> ?Realiste 0.15) (<= ?Violence 0.1) (<= ?Monde-ouvert 0.2) (<= ?Puzzle 0.3) (> ?Realiste 0.6)))
=>
  (assert (class Youtubers)))

(defrule Regle4
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Simulation ?Simulation) (Puzzle ?Puzzle) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (<= ?Realiste 0.15) (<= ?Simulation 0.45) (> ?Puzzle 0.35) (<= ?Strategie 0.35)))
=>
  (assert (class Tennis)))

(defrule Regle5
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Simulation ?Simulation) (Puzzle ?Puzzle) (Monde-ouvert ?Monde-ouvert) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (<= ?Realiste 0.15) (<= ?Simulation 0.45) (<= ?Puzzle 0.35) (<= ?Monde-ouvert 0.4) (<= ?Strategie 0.35)))
=>
  (assert (class StoryTeller)))

(defrule Regle6
  (Data (Plateforme ?Plateforme) (Monde-ouvert ?Monde-ouvert) (Action ?Action))
  (test (and (> ?Plateforme 0.15) (> ?Monde-ouvert 0.3) (<= ?Action 0.75)))
=>
  (assert (class Goat)))

(defrule Regle7
  (Data (Plateforme ?Plateforme) (Monde-ouvert ?Monde-ouvert) (Action ?Action))
  (test (and (> ?Plateforme 0.15) (> ?Monde-ouvert 0.3) (> ?Action 0.75)))
=>
  (assert (class Final)))

(defrule Regle8
  (Data (Plateforme ?Plateforme) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat))
  (test (and (> ?Plateforme 0.15) (<= ?Monde-ouvert 0.3) (<= ?Plateforme 0.55) (<= ?Combat 0.4)))
=>
  (assert (class Surviving)))

(defrule Regle9
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (FPS ?FPS) (Realiste ?Realiste) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (> ?Horreur 0.35) (> ?FPS 0.05) (> ?Realiste 0.3) (> ?Strategie 0.1)))
=>
  (assert (class Minecraft)))

(defrule Regle10
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (FPS ?FPS) (Realiste ?Realiste) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (> ?Horreur 0.35) (> ?FPS 0.05) (> ?Realiste 0.3) (<= ?Strategie 0.1)))
=>
  (assert (class Trove)))

(defrule Regle11
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (FPS ?FPS) (Realiste ?Realiste) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (> ?Horreur 0.35) (> ?FPS 0.05) (<= ?Realiste 0.3) (> ?Violence 0.35)))
=>
  (assert (class Zelda)))

(defrule Regle12
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (FPS ?FPS) (Realiste ?Realiste) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (> ?Horreur 0.35) (> ?FPS 0.05) (<= ?Realiste 0.3) (<= ?Violence 0.35)))
=>
  (assert (class Tetris)))

(defrule Regle13
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (FPS ?FPS) (Action ?Action))
  (test (and (<= ?Plateforme 0.15) (> ?Horreur 0.35) (<= ?FPS 0.05) (> ?Action 0.4)))
=>
  (assert (class Far)))

(defrule Regle14
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (FPS ?FPS) (Action ?Action))
  (test (and (<= ?Plateforme 0.15) (> ?Horreur 0.35) (<= ?FPS 0.05) (<= ?Action 0.4)))
=>
  (assert (class Paladins)))

(defrule Regle15
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (> ?Sport 0.1) (> ?Violence 0.35)))
=>
  (assert (class Lego)))

(defrule Regle16
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Violence ?Violence) (Voiture ?Voiture) (Action ?Action))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (> ?Sport 0.1) (<= ?Violence 0.35) (> ?Voiture 0.5) (> ?Action 0.25)))
=>
  (assert (class Mirror)))

(defrule Regle17
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Violence ?Violence) (Voiture ?Voiture) (Action ?Action) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (> ?Sport 0.1) (<= ?Violence 0.35) (> ?Voiture 0.5) (<= ?Action 0.25) (> ?Simulation 0.65) (> ?Sport 0.85)))
=>
  (assert (class Plato)))

(defrule Regle18
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Violence ?Violence) (Voiture ?Voiture) (Action ?Action) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (> ?Sport 0.1) (<= ?Violence 0.35) (> ?Voiture 0.5) (<= ?Action 0.25) (> ?Simulation 0.65) (<= ?Sport 0.85)))
=>
  (assert (class Satisfactory)))

(defrule Regle19
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Violence ?Violence) (Voiture ?Voiture) (Action ?Action) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (> ?Sport 0.1) (<= ?Violence 0.35) (> ?Voiture 0.5) (<= ?Action 0.25) (<= ?Simulation 0.65)))
=>
  (assert (class Clash)))

(defrule Regle20
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Violence ?Violence) (Voiture ?Voiture) (Realiste ?Realiste) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (> ?Sport 0.1) (<= ?Violence 0.35) (<= ?Voiture 0.5) (> ?Realiste 0.9) (> ?Strategie 0.2) (> ?Multijoueur 0.4)))
=>
  (assert (class Eco)))

(defrule Regle21
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Violence ?Violence) (Voiture ?Voiture) (Realiste ?Realiste) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (> ?Sport 0.1) (<= ?Violence 0.35) (<= ?Voiture 0.5) (> ?Realiste 0.9) (> ?Strategie 0.2) (<= ?Multijoueur 0.4)))
=>
  (assert (class Overwatch)))

(defrule Regle22
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Violence ?Violence) (Voiture ?Voiture) (Realiste ?Realiste) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (> ?Sport 0.1) (<= ?Violence 0.35) (<= ?Voiture 0.5) (> ?Realiste 0.9) (<= ?Strategie 0.2)))
=>
  (assert (class Roblox)))

(defrule Regle23
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Violence ?Violence) (Voiture ?Voiture) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (> ?Sport 0.1) (<= ?Violence 0.35) (<= ?Voiture 0.5) (<= ?Realiste 0.9)))
=>
  (assert (class Uncharted)))

(defrule Regle24
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Realiste ?Realiste) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (> ?Battle-royale 0.1) (> ?Realiste 0.4) (> ?Combat 0.45)))
=>
  (assert (class Jurassic)))

(defrule Regle25
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Realiste ?Realiste) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (> ?Battle-royale 0.1) (> ?Realiste 0.4) (<= ?Combat 0.45)))
=>
  (assert (class NBA)))

(defrule Regle26
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Realiste ?Realiste) (Combat ?Combat) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (> ?Battle-royale 0.1) (<= ?Realiste 0.4) (> ?Combat 0.25) (> ?Violence 0.5)))
=>
  (assert (class Flight)))

(defrule Regle27
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Realiste ?Realiste) (Combat ?Combat) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (> ?Battle-royale 0.1) (<= ?Realiste 0.4) (> ?Combat 0.25) (<= ?Violence 0.5)))
=>
  (assert (class Just)))

(defrule Regle28
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Realiste ?Realiste) (Combat ?Combat) (Strategie ?Strategie) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (> ?Battle-royale 0.1) (<= ?Realiste 0.4) (<= ?Combat 0.25) (> ?Strategie 0.4) (> ?Monde-ouvert 0.1)))
=>
  (assert (class Fifa)))

(defrule Regle29
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Realiste ?Realiste) (Combat ?Combat) (Strategie ?Strategie) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (> ?Battle-royale 0.1) (<= ?Realiste 0.4) (<= ?Combat 0.25) (> ?Strategie 0.4) (<= ?Monde-ouvert 0.1)))
=>
  (assert (class Mario)))

(defrule Regle30
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Realiste ?Realiste) (Combat ?Combat) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (> ?Battle-royale 0.1) (<= ?Realiste 0.4) (<= ?Combat 0.25) (<= ?Strategie 0.4)))
=>
  (assert (class Raft)))

(defrule Regle31
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste) (Action ?Action))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (> ?Monde-ouvert 0.1) (> ?Realiste 0.1) (> ?Action 0.7)))
=>
  (assert (class Horizon)))

(defrule Regle32
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste) (Action ?Action))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (> ?Monde-ouvert 0.1) (> ?Realiste 0.1) (<= ?Action 0.7)))
=>
  (assert (class Crash)))

(defrule Regle33
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste) (FPS ?FPS) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (> ?Monde-ouvert 0.1) (<= ?Realiste 0.1) (> ?Combat 0.35) (> ?FPS 0.2) (> ?Combat 0.6) (> ?Violence 0.5)))
=>
  (assert (class Call)))

(defrule Regle34
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste) (FPS ?FPS) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (> ?Monde-ouvert 0.1) (<= ?Realiste 0.1) (> ?Combat 0.35) (> ?FPS 0.2) (> ?Combat 0.6) (<= ?Violence 0.5)))
=>
  (assert (class Destiny)))

(defrule Regle35
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (> ?Monde-ouvert 0.1) (<= ?Realiste 0.1) (> ?Combat 0.35) (> ?FPS 0.2) (<= ?Combat 0.6)))
=>
  (assert (class Sims)))

(defrule Regle36
  (Data (Plateforme ?Plateforme) (Monde-ouvert ?Monde-ouvert) (Action ?Action))
  (test (and (> ?Plateforme 0.15) (<= ?Monde-ouvert 0.3) (> ?Plateforme 0.55) (> ?Plateforme 0.85) (> ?Action 0.3)))
=>
  (assert (class Call)))

(defrule Regle37
  (Data (Plateforme ?Plateforme) (Monde-ouvert ?Monde-ouvert) (Action ?Action) (Multijoueur ?Multijoueur))
  (test (and (> ?Plateforme 0.15) (<= ?Monde-ouvert 0.3) (> ?Plateforme 0.55) (> ?Plateforme 0.85) (<= ?Action 0.3) (> ?Multijoueur 0.05)))
=>
  (assert (class Rainbow)))

(defrule Regle38
  (Data (Plateforme ?Plateforme) (Monde-ouvert ?Monde-ouvert))
  (test (and (> ?Plateforme 0.15) (<= ?Monde-ouvert 0.3) (> ?Plateforme 0.55) (<= ?Plateforme 0.85)))
=>
  (assert (class Slime)))

(defrule Regle39
  (Data (Plateforme ?Plateforme) (Monde-ouvert ?Monde-ouvert) (Combat ?Combat))
  (test (and (> ?Plateforme 0.15) (<= ?Monde-ouvert 0.3) (<= ?Plateforme 0.55) (> ?Combat 0.4)))
=>
  (assert (class Geometry)))

(defrule Regle40
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS) (Action ?Action))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (<= ?Monde-ouvert 0.1) (> ?Multijoueur 0.6) (> ?FPS 0.25) (> ?Combat 0.35) (> ?Action 0.75) (<= ?FPS 0.75)))
=>
  (assert (class Star)))

(defrule Regle41
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS) (Action ?Action))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (<= ?Monde-ouvert 0.1) (> ?Multijoueur 0.6) (> ?FPS 0.25) (> ?Combat 0.35) (> ?Action 0.75) (> ?FPS 0.75)))
=>
  (assert (class Tomb)))

(defrule Regle42
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (> ?Monde-ouvert 0.1) (<= ?Realiste 0.1) (<= ?Combat 0.35)))
=>
  (assert (class Lords)))

(defrule Regle43
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (Realiste ?Realiste) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (> ?Monde-ouvert 0.1) (<= ?Realiste 0.1) (> ?Combat 0.35) (<= ?FPS 0.2)))
=>
  (assert (class Hearthstone)))

(defrule Regle44
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS) (Action ?Action))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (<= ?Monde-ouvert 0.1) (> ?Multijoueur 0.6) (> ?FPS 0.25) (> ?Combat 0.35) (<= ?Action 0.75)))
=>
  (assert (class Life)))

(defrule Regle45
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (<= ?Monde-ouvert 0.1) (> ?Multijoueur 0.6) (> ?FPS 0.25) (<= ?Combat 0.35)))
=>
  (assert (class Escape)))

(defrule Regle46
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (<= ?Monde-ouvert 0.1) (> ?Multijoueur 0.6) (<= ?FPS 0.25) (> ?Combat 0.3) (> ?Combat 0.55) (> ?Violence 0.95)))
=>
  (assert (class Planet)))

(defrule Regle47
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (<= ?Monde-ouvert 0.1) (> ?Multijoueur 0.6) (<= ?FPS 0.25) (> ?Combat 0.3) (> ?Combat 0.55) (<= ?Violence 0.95)))
=>
  (assert (class Diablo)))

(defrule Regle48
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (> ?Voiture 0.45) (<= ?Realiste 0.5)))
=>
  (assert (class 60)))

(defrule Regle49
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (> ?Action 0.15) (> ?Multijoueur 0.8) (> ?Monde-ouvert 0.35)))
=>
  (assert (class F1)))

(defrule Regle50
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (> ?Action 0.15) (> ?Multijoueur 0.8) (<= ?Monde-ouvert 0.35) (> ?Simulation 0.4)))
=>
  (assert (class The)))

(defrule Regle51
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (> ?Action 0.15) (> ?Multijoueur 0.8) (<= ?Monde-ouvert 0.35) (<= ?Simulation 0.4)))
=>
  (assert (class Fortnite)))

(defrule Regle52
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (<= ?Monde-ouvert 0.1) (> ?Multijoueur 0.6) (<= ?FPS 0.25) (> ?Combat 0.3) (<= ?Combat 0.55)))
=>
  (assert (class Super)))

(defrule Regle53
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (<= ?Monde-ouvert 0.1) (> ?Multijoueur 0.6) (<= ?FPS 0.25) (<= ?Combat 0.3)))
=>
  (assert (class GTA)))

(defrule Regle54
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (> ?Combat 0.1) (<= ?Monde-ouvert 0.1) (<= ?Multijoueur 0.6)))
=>
  (assert (class Football)))

(defrule Regle55
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (> ?Voiture 0.45) (> ?Realiste 0.5)))
=>
  (assert (class Phasmophobia)))

(defrule Regle56
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Simulation ?Simulation) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (<= ?Action 0.15) (<= ?FPS 0.1) (<= ?Simulation 0.5) (> ?Multijoueur 0.65) (> ?Multijoueur 0.75) (> ?Multijoueur 0.85) (> ?Strategie 0.75) (> ?Strategie 0.85)))
=>
  (assert (class Apex)))

(defrule Regle57
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Simulation ?Simulation) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (<= ?Action 0.15) (<= ?FPS 0.1) (<= ?Simulation 0.5) (> ?Multijoueur 0.65) (> ?Multijoueur 0.75) (> ?Multijoueur 0.85) (> ?Strategie 0.75) (<= ?Strategie 0.85)))
=>
  (assert (class Subway)))

(defrule Regle58
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Simulation ?Simulation) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (<= ?Action 0.15) (<= ?FPS 0.1) (<= ?Simulation 0.5) (> ?Multijoueur 0.65) (> ?Multijoueur 0.75) (> ?Multijoueur 0.85) (<= ?Strategie 0.75)))
=>
  (assert (class World)))

(defrule Regle59
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (<= ?Action 0.15) (<= ?FPS 0.1) (<= ?Simulation 0.5) (> ?Multijoueur 0.65) (> ?Multijoueur 0.75) (<= ?Multijoueur 0.85)))
=>
  (assert (class Need)))

(defrule Regle60
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (<= ?Action 0.15) (<= ?FPS 0.1) (<= ?Simulation 0.5) (> ?Multijoueur 0.65) (<= ?Multijoueur 0.75)))
=>
  (assert (class Red)))

(defrule Regle61
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (<= ?Action 0.15) (<= ?FPS 0.1) (<= ?Simulation 0.5) (<= ?Multijoueur 0.65)))
=>
  (assert (class Trackmania)))

(defrule Regle62
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Voiture ?Voiture))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (<= ?Multijoueur 0.35) (> ?Voiture 0.3)))
=>
  (assert (class Cities)))

(defrule Regle63
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Voiture ?Voiture))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (<= ?Multijoueur 0.35) (<= ?Voiture 0.3)))
=>
  (assert (class World)))

(defrule Regle64
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (<= ?Multijoueur 0.25) (> ?Violence 0.15)))
=>
  (assert (class Subnautica)))

(defrule Regle65
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Violence ?Violence) (Sport ?Sport))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (<= ?Multijoueur 0.25) (<= ?Violence 0.15) (> ?Sport 0.5)))
=>
  (assert (class Sea)))

(defrule Regle66
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Violence ?Violence) (Sport ?Sport))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (<= ?Multijoueur 0.25) (<= ?Violence 0.15) (<= ?Sport 0.5)))
=>
  (assert (class HayDay)))

(defrule Regle67
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Survie ?Survie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (> ?Violence 0.25) (> ?Survie 0.1) (> ?Action 0.6)))
=>
  (assert (class Pokemon)))

(defrule Regle68
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (> ?Action 0.15) (<= ?Multijoueur 0.8)))
=>
  (assert (class Euro)))

(defrule Regle69
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (<= ?Action 0.15) (> ?FPS 0.1) (> ?Strategie 0.4)))
=>
  (assert (class Outlast)))

(defrule Regle70
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (<= ?Action 0.15) (> ?FPS 0.1) (<= ?Strategie 0.4)))
=>
  (assert (class Raid)))

(defrule Regle71
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Sport ?Sport) (Battle-royale ?Battle-royale) (Combat ?Combat) (Voiture ?Voiture) (Action ?Action) (FPS ?FPS) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (> ?Multijoueur 0.1) (> ?Multijoueur 0.25) (<= ?Sport 0.1) (> ?Multijoueur 0.35) (<= ?Battle-royale 0.1) (<= ?Combat 0.1) (<= ?Voiture 0.45) (<= ?Action 0.15) (<= ?FPS 0.1) (> ?Simulation 0.5)))
=>
  (assert (class Street)))

(defrule Regle72
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Survie ?Survie) (FPS ?FPS) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (> ?Violence 0.25) (<= ?Survie 0.1) (<= ?FPS 0.5) (> ?Action 0.45) (> ?Action 0.55) (> ?Violence 0.8) (<= ?Combat 0.85)))
=>
  (assert (class CSGO)))

(defrule Regle73
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Survie ?Survie) (FPS ?FPS) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (> ?Violence 0.25) (<= ?Survie 0.1) (<= ?FPS 0.5) (> ?Action 0.45) (> ?Action 0.55) (> ?Violence 0.8) (> ?Combat 0.85)))
=>
  (assert (class League)))

(defrule Regle74
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Survie ?Survie) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (> ?Violence 0.25) (<= ?Survie 0.1) (> ?FPS 0.5)))
=>
  (assert (class Resident)))

(defrule Regle75
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Survie ?Survie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (> ?Violence 0.25) (> ?Survie 0.1) (<= ?Action 0.6)))
=>
  (assert (class Infinite)))

(defrule Regle76
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Survie ?Survie) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (> ?Violence 0.25) (<= ?Survie 0.1) (<= ?FPS 0.5) (> ?Action 0.45) (> ?Action 0.55) (<= ?Violence 0.8) (> ?Monde-ouvert 0.9)))
=>
  (assert (class Internet)))

(defrule Regle77
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Survie ?Survie) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (> ?Violence 0.25) (<= ?Survie 0.1) (<= ?FPS 0.5) (> ?Action 0.45) (> ?Action 0.55) (<= ?Violence 0.8) (<= ?Monde-ouvert 0.9)))
=>
  (assert (class Garry)))

(defrule Regle78
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Survie ?Survie) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (> ?Violence 0.25) (<= ?Survie 0.1) (<= ?FPS 0.5) (> ?Action 0.45) (<= ?Action 0.55)))
=>
  (assert (class Overcooked)))

(defrule Regle79
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Survie ?Survie) (FPS ?FPS))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (> ?Violence 0.25) (<= ?Survie 0.1) (<= ?FPS 0.5) (<= ?Action 0.45)))
=>
  (assert (class Portal)))

(defrule Regle80
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (<= ?Violence 0.25) (<= ?Monde-ouvert 0.75)))
=>
  (assert (class Elden)))

(defrule Regle81
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (<= ?Monde-ouvert 0.65)))
=>
  (assert (class Assassin)))

(defrule Regle82
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Survie ?Survie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (<= ?Monde-ouvert 0.3) (> ?Survie 0.5)))
=>
  (assert (class Rocket)))

(defrule Regle83
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Survie ?Survie) (Violence ?Violence) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (<= ?Monde-ouvert 0.3) (<= ?Survie 0.5) (> ?Violence 0.2) (> ?Realiste 0.55)))
=>
  (assert (class Steep)))

(defrule Regle84
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (<= ?Violence 0.25) (> ?Monde-ouvert 0.75) (> ?Strategie 0.3)))
=>
  (assert (class Battlefield)))

(defrule Regle85
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Strategie ?Strategie) (Combat ?Combat))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (<= ?Violence 0.25) (> ?Monde-ouvert 0.75) (<= ?Strategie 0.3) (> ?Combat 0.5)))
=>
  (assert (class Farming)))

(defrule Regle86
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Strategie ?Strategie) (Combat ?Combat) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (<= ?Violence 0.25) (> ?Monde-ouvert 0.75) (<= ?Strategie 0.3) (<= ?Combat 0.5) (> ?Simulation 0.3)))
=>
  (assert (class Lego)))

(defrule Regle87
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Violence ?Violence) (Strategie ?Strategie) (Combat ?Combat) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (> ?Monde-ouvert 0.3) (> ?Monde-ouvert 0.65) (<= ?Violence 0.25) (> ?Monde-ouvert 0.75) (<= ?Strategie 0.3) (<= ?Combat 0.5) (<= ?Simulation 0.3)))
=>
  (assert (class Jedi)))

(defrule Regle88
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Survie ?Survie) (Violence ?Violence) (Realiste ?Realiste) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (<= ?Monde-ouvert 0.3) (<= ?Survie 0.5) (<= ?Violence 0.2) (<= ?Realiste 0.15) (<= ?Strategie 0.4)))
=>
  (assert (class Heroes)))

(defrule Regle89
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Survie ?Survie) (Violence ?Violence) (Realiste ?Realiste) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (<= ?Monde-ouvert 0.3) (<= ?Survie 0.5) (<= ?Violence 0.2) (<= ?Realiste 0.15) (> ?Strategie 0.4)))
=>
  (assert (class House)))

(defrule Regle90
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Survie ?Survie) (Violence ?Violence) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (<= ?Monde-ouvert 0.3) (<= ?Survie 0.5) (<= ?Violence 0.2) (> ?Realiste 0.15)))
=>
  (assert (class Hello)))

(defrule Regle91
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Monde-ouvert ?Monde-ouvert) (Survie ?Survie) (Violence ?Violence) (Realiste ?Realiste))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (> ?Action 0.1) (<= ?Monde-ouvert 0.3) (<= ?Survie 0.5) (> ?Violence 0.2) (<= ?Realiste 0.55)))
=>
  (assert (class PUBG)))

(defrule Regle92
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Violence ?Violence) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (> ?Realiste 0.15) (<= ?Violence 0.1) (> ?Monde-ouvert 0.2) (> ?Monde-ouvert 0.5) (<= ?Monde-ouvert 0.7) (<= ?Realiste 0.5)))
=>
  (assert (class Brawls)))

(defrule Regle93
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Violence ?Violence) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (> ?Realiste 0.15) (<= ?Violence 0.1) (> ?Monde-ouvert 0.2) (> ?Monde-ouvert 0.5) (<= ?Monde-ouvert 0.7) (> ?Realiste 0.5)))
=>
  (assert (class Plague)))

(defrule Regle94
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Violence ?Violence))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (> ?Realiste 0.15) (> ?Violence 0.1)))
=>
  (assert (class Agar)))

(defrule Regle95
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Violence ?Violence) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (> ?Realiste 0.15) (<= ?Violence 0.1) (> ?Monde-ouvert 0.2) (> ?Monde-ouvert 0.5) (> ?Monde-ouvert 0.7)))
=>
  (assert (class Among)))

(defrule Regle96
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Violence ?Violence) (Monde-ouvert ?Monde-ouvert) (Puzzle ?Puzzle))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (> ?Realiste 0.15) (<= ?Violence 0.1) (<= ?Monde-ouvert 0.2) (<= ?Puzzle 0.3) (<= ?Realiste 0.6)))
=>
  (assert (class Pac)))

(defrule Regle97
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Violence ?Violence) (Monde-ouvert ?Monde-ouvert) (Puzzle ?Puzzle))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (> ?Realiste 0.15) (<= ?Violence 0.1) (<= ?Monde-ouvert 0.2) (> ?Puzzle 0.3)))
=>
  (assert (class Mortal)))

(defrule Regle98
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Simulation ?Simulation) (Puzzle ?Puzzle) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (<= ?Realiste 0.15) (<= ?Simulation 0.45) (> ?Puzzle 0.35) (> ?Strategie 0.35) (> ?Puzzle 0.85)))
=>
  (assert (class The)))

(defrule Regle99
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Simulation ?Simulation))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (<= ?Realiste 0.15) (> ?Simulation 0.45)))
=>
  (assert (class Marvel)))

(defrule Regle100
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Simulation ?Simulation) (Puzzle ?Puzzle) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (<= ?Realiste 0.15) (<= ?Simulation 0.45) (> ?Puzzle 0.35) (> ?Strategie 0.35) (<= ?Puzzle 0.85)))
=>
  (assert (class Valorant)))

(defrule Regle101
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Simulation ?Simulation) (Puzzle ?Puzzle) (Monde-ouvert ?Monde-ouvert))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (<= ?Realiste 0.15) (<= ?Simulation 0.45) (<= ?Puzzle 0.35) (> ?Monde-ouvert 0.4)))
=>
  (assert (class Marvel)))

(defrule Regle102
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Simulation ?Simulation) (Puzzle ?Puzzle) (Monde-ouvert ?Monde-ouvert) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (<= ?Realiste 0.15) (<= ?Simulation 0.45) (<= ?Puzzle 0.35) (<= ?Monde-ouvert 0.4) (> ?Strategie 0.35) (> ?Strategie 0.85)))
=>
  (assert (class The)))

(defrule Regle103
  (Data (Plateforme ?Plateforme) (Horreur ?Horreur) (Multijoueur ?Multijoueur) (Action ?Action) (Realiste ?Realiste) (Simulation ?Simulation) (Puzzle ?Puzzle) (Monde-ouvert ?Monde-ouvert) (Strategie ?Strategie))
  (test (and (<= ?Plateforme 0.15) (<= ?Horreur 0.35) (<= ?Multijoueur 0.1) (<= ?Action 0.1) (<= ?Realiste 0.15) (<= ?Simulation 0.45) (<= ?Puzzle 0.35) (<= ?Monde-ouvert 0.4) (> ?Strategie 0.35) (<= ?Strategie 0.85)))
=>
  (assert (class Fruit)))

(deffacts df1
  (Data (Plateforme 0.1) (Voiture 0.8) (Sport 0.4) (Survie 0) (Battle-royale 0) (FPS 0) (Puzzle 0.7) (Strategie 0) (Simulation 0) (Monde-ouvert 0) (Action 0) (Multijoueur 0.6) (Realiste 1))
)