###mdloti small March 2002 Groups

##Stocks

phyt = 209.444 !Phytoplankton
mpb = 524 !Macrophytobenthos

bac = 2172.223 !Bacteria
plk = 0.0923 !Zooplankton
mei = 13.782 !Meiofauna
mac = 1907.003 !Macrozoobenthos
fsh = 491.8013 !Fish

susNLNode = 3545.5 !suspended organic content
sedNLNode = 83555.56 !sedimentary organic content

##End stocks

##Externals

CO2

phytInput

mpbInput

bacInput
bacExport

macExport

fshExport

susNLNodeInput
susNLNodeExport

##End Externals

##Variables

!Primaryproducers

phytGPP = CO2 -> phyt
phytR = phyt -> CO2
phytNPP = phytGPP - phytR

mpbGPP = CO2 -> mpb
mpbR = mpb -> CO2
mpbNPP = mpbGPP - mpbR

!Bacteria

bacC = susNLNode -> bac !Consumption
bacR = bac -> CO2 !Respiration
bacP = bacC - bacR - bac -> susNLNode

!Zooplankton

plkC = phyt -> plk + bac -> plk + plk -> plk + susNLNode -> plk
plkR = plk -> CO2
plkP = plkC - plkR - plk -> susNLNode

!Meiofauna

meiC = phyt -> mei + mpb -> mei + mei -> mei + susNLNode -> mei + sedNLNode -> mei
meiR = mei -> CO2
meiP = meiC - meiR - mei -> sedNLNode

!Macrozoobenthos

macC = mpb -> mac
macR = mac -> CO2
macP = macC - macR - mac -> sedNLNode

!Fish

fshC = mpb -> fsh + plk -> fsh + mei -> fsh + mac -> fsh + fsh -> fsh + susNLNode -> fsh + sedNLNode -> fsh
fshR = fsh -> CO2
fshP = fshC - fshR - fsh -> susNLNode

##End variables

##Flows

phyt -> plk
phyt -> mei
phyt -> susNLNode

mpb -> mei
mpb -> mac
mpb -> fsh
mpb -> susNLNode
mpb -> sedNLNode

bac -> plk
bac -> susNLNode

plk -> plk
plk -> fsh
plk -> susNLNode

mei -> mei
mei -> fsh
mei -> sedNLNode

mac -> fsh
mac -> sedNLNode

fsh -> fsh
fsh -> susNLNode

susNLNode -> bac
susNLNode -> plk
susNLNode -> mei
susNLNode -> fsh
susNLNode -> sedNLNode

sedNLNode -> mei
sedNLNode -> mac
sedNLNode -> fsh
sedNLNode -> susNLNode

CO2 -> phyt
CO2 -> mpb

phyt -> CO2
mpb -> CO2
bac -> CO2
plk -> CO2
mei -> CO2
mac -> CO2
fsh -> CO2

phytInput -> phyt
mpbInput -> mpb
bacInput -> bac
susNLNodeInput -> susNLNode

bac -> bacExport
mac -> macExport
fsh -> fshExport
susNLNode -> susNLNodeExport

##End flows

##Parameters

!Priamryproducers

phytNPPratioBmin = 0.083
phytNPPratioBmax = 0.138

phytRratioNPPmin = 0.444
phytRratioNPPmax = 0.741

mpbNPPratioBmin = 0.04192
mpbNPPratioBmax = 0.06987

mpbRratioPmin = 0.444
mpbRratioPmax = 0.741

!Bacteria

bacPratioBmin = 0.188
bacPratioBmax = 3

bacRratioPmin = 0.357
bacRratioPmax = 0.594

!Zooplankton

plkPratioBmin = 0.0001
plkPratioBmax = 0.01

plkRratioPmin = 0.536
plkRratioPmax = 2

!Meiofauna

meiPratioBmin = 0.73
meiPratioBmax = 3.191

meiRratioPmin = 1.613
meiRratioPmax = 2.688

!Macrozoobenthos

macPratioBmin = 0.003
macPratioBmax = 0.017

macRratioPmin = 0.837
macRratioPmax = 5.538

!Fish

fshPratioBmin = 0.003
fshPratioBmax = 0.008

fshRratioPmin = 1.648
fshRratioPmax = 3.925

##End Parameters

##Inequalities

!Primaryproducers

phytNPP = phyt * [phytNPPratioBmin, phytNPPratioBmax]
phytR = phytNPP * [phytRratioNPPmin, phytRratioNPPmax]

mpbNPP = mpb * [mpbNPPratioBmin, mpbNPPratioBmax]
mpbR = mpbNPP * [mpbRratioPmin, mpbRratioPmax]

!Bacteria

bacP = bac * [bacPratioBmin, bacPratioBmax]
bacR = bacP * [bacPratioBmin, bacRratioPmax]
bacC - bac -> susNLNode > 0.4*bacC
bacC - bac -> susNLNode < 0.75*bacC

!Zooplankton

plkP = plk * [plkPratioBmin, plkPratioBmax]
plkR = plkP * [plkRratioPmin, plkRratioPmax]
!plkC - plk -> susNLNode > 0.01*plkC !plk min is zero and cant be changed
plkC - plk -> susNLNode < 0.75*plkC

!Meiofauna

meiP = mei * [meiPratioBmin, meiPratioBmax]
meiR = meiP * [meiRratioPmin, meiRratioPmax]
meiC - mei -> sedNLNode > 0.4*meiC
meiC - mei -> sedNLNode < 0.75*meiC

!Macrozoobenthos

macP = mac * [macPratioBmin, macPratioBmax]
macR = macP * [macRratioPmin, macRratioPmax]

!Fish

fshP = fsh * [fshPratioBmin, fshPratioBmax]
fshR = fshP * [fshRratioPmin, fshRratioPmax]
fshC - fsh -> susNLNode > 0.4*fshC
fshC - fsh -> susNLNode < 0.8*fshC

phytInput -> phyt < 6491.53
phytInput -> phyt > 38.92

mpbInput -> mpb < 101.68
mpbInput -> mpb > 61.01

bacInput -> bac < 5258.97
bacInput -> bac > 31.38

bac -> bacExport < 3913.47
bac -> bacExport > 2348.78

mac -> macExport < 0.11
mac -> macExport > 0.06

fsh -> fshExport < 0.13
fsh -> fshExport > 0.08

susNLNodeInput -> susNLNode < 8583.69
susNLNodeInput -> susNLNode > 5150.21

susNLNode -> susNLNodeExport < 6387.56
susNLNode -> susNLNodeExport > 3832.54

susNLNode -> plk < 8000
susNLNode -> bac < 8000
susNLNode -> sedNLNode < 8000
 
sedNLNode -> susNLNode < 8000

plk -> susNLNode < 6000

##End Inequalities
