###Example four node network

###Stocks

pp = 800

invertebrate = 2000

vertebrate = 500

detNLNode = 10000

###End stocks

###Externals

CO2

ppInput
ppExport
detNLNodeInput

vertebrateExport

detNLNodeExport

###End Externals

###Variables

!Priamry producers
ppGPP = GPP
ppR = PR
ppNPP = ppGPP - ppR

!Organisms
invertebrateC = Pgraz + InvCon
invertebrateR = InvR
invertebrateP = invertebrateC - invertebrateR - InvMort

vertebrateC = VerCon
vertebrateR = VerR
vertebrateP = vertebrateC - vertebrateR - VerMort

###End Variables

###Flows

Pgraz : pp -> invertebrate
Pmort : pp -> detNLNode

VerCon : invertebrate -> vertebrate
InvMort : invertebrate -> detNLNode

VerMort : vertebrate -> detNLNode

InvCon : detNLNode -> invertebrate

GPP : CO2 -> pp

PR : pp -> CO2
InvR : invertebrate -> CO2
VerR : vertebrate -> CO2

ppIn : ppInput -> pp
detIn : detNLNodeInput -> detNLNode

ppEx : pp -> ppExport
VerEx : vertebrate -> vertebrateExport
detEx : detNLNode -> detNLNodeExport

###End Flows

###Parameters

ppNPPratioBmin = 0.6
ppNPPratioBmax = 1.1

ppRratioNPPmin = 0.4
ppRratioNPPmax = 0.7

invertebratePratioBmin = 0.004
invertebratePratioBmax = 0.06

invertebrateRratioPmin = 1
invertebrateRratioPmax = 4

vertebratePratioBmin = 0.0003
vertebratePratioBmax = 0.005

vertebrateRratioPmin = 1.5
vertebrateRratioPmax = 4

###End parameters

###Inequalities

ppNPP = pp * [ppNPPratioBmin, ppNPPratioBmax]
ppR = ppNPP * [ppRratioNPPmin, ppRratioNPPmax]

invertebrateP = invertebrate * [invertebratePratioBmin, invertebratePratioBmax]
invertebrateR = invertebrateP * [invertebrateRratioPmin, invertebrateRratioPmax]

vertebrateP = vertebrate * [vertebratePratioBmin, vertebratePratioBmax]
vertebrateR = vertebrateP * [vertebrateRratioPmin, vertebrateRratioPmax]

invertebrateC - InvMort > 0.4*invertebrateC
invertebrateC - InvMort < 0.75*invertebrateC

ppIn < 1600
ppIn > 1000

detIn < 1500
detIn > 500

ppEx < 1600
ppEx > 1000

verEx < 0.36
verEx > 0.21

detEx < 400
detEx > 200


###End Inequalities
