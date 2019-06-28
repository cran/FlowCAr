### STOCKS

phy = 507.07 !phyto
mpb = 442.70

bac = 4121.00 !bacteria

zhe = 15.44789782 !herbivorous.zoop
zca = 5.023793498 !carnivorous.zoop
zom = 4.678738658 !omnivorous.zoop

mehe = 0.647616667 !herbivorous.meio
meom = 442.2200027 !omnivorous.meio


mac = 404.5131968


susNLNODE = 261.1174268
sedNLNODE = 60444.44

### END STOCKS

### EXTERNALS

co2

susNLNODEInput
susNLNODEExport
sedNLNODEExport


### END EXTERNALS

### FLOWS

!who.goes.to.who

co2 -> phy
co2 -> mpb

susNLNODEInput -> susNLNODE
susNLNODE -> susNLNODEExport
sedNLNODE -> sedNLNODEExport

phy -> zhe
phy -> zom
phy -> mac
phy -> susNLNODE
phy -> co2

mpb -> mehe
mpb -> meom
mpb -> mac
mpb -> sedNLNODE
mpb -> co2

bac -> mac
bac -> susNLNODE
bac -> co2

zhe -> zom
zhe -> zca
zom -> mac
zca -> zom
zhe -> susNLNODE
zca -> susNLNODE
zom -> susNLNODE
zhe -> co2
zca -> co2
zom -> co2

mehe -> meom
mehe -> mac
meom -> meom
meom -> mac
mehe -> sedNLNODE
meom -> sedNLNODE
mehe -> co2
meom -> co2


mac -> mac
mac -> sedNLNODE
mac -> co2

susNLNODE -> bac
susNLNODE -> zhe
susNLNODE -> zom
susNLNODE -> mac

sedNLNODE -> mehe
sedNLNODE -> meom
sedNLNODE -> mac

### END FLOWS

### PARAMETERS

phyNPPratioBmin = 0.135
phyNPPratioBmax = 2.35+1
phyRratioNPPmin = 0.05925
phyRratioNPPmax = 1.5925+1

mpbNPPratioBmin = 0.01166
mpbNPPratioBmax = 1.1166+1
mpbRratioNPPmin = 0.05925
mpbRratioNPPmax = 1.5925+1

bacPratioBmin = 0.014365964
bacPratioBmax = 1.143659637+1
bacRratioBmin = 0.010967656
bacRratioBmax = 1.109676557+1
bacCratioPmin = 0.163291139
bacCratioPmax = 2.632911392+1

zhePrationBmin = 0.058448704
zhePratioBmax = 1.584487038+1
zheRratioBmin = 0.057112776
zheRratioBmax = 1.571127755+1
zheCratioPmin = 0.683307103
zheCratioPmax = 7.833071025+1

zcaPratioBmin = 0.011
zcaPratioBmax = 1.11+1
zcaRratioBmin = 0.015490776
zcaRratioBmax = 1.154907759+1
zcaCratioPmin = 0.323310702
zcaCratioPmax = 4.233107016+1

zomPratioBmin = 0.008069225
zomPratioBmax = 1.080692245+1
zomRratioBmin = 0.011510827
zomRratioBmax = 1.115108271+1
zomCratioPmin = 0.324531802
zomCratioPmax = 4.245318017+1

mehePratioBmin = 0.02739726
mehePratioBmax =	1.273972603+1
meheRratioBmin = 0.058918839
meheRratioBmax = 1.589188393+1
meheCratioPmin = 0.19199
meheCratioPmax =	2.9199+1

meomPratioBmin = 0.003696943
meomPratioBmax = 	1.036969428+1
meomRratioBmin = 0.0079337
meomRratioBmax =	1.079336996+1
meomCratioPmin = 0.350344873
meomCratioPmax =	4.503448733+1


macPratioBmin = 0.009231245
macPratioBmax =	1.092312447+1
macRratioBmin = 0.026201124
macRratioBmax = 1.262011241+1
macCratioPmin = 0.009231245
macCratioPmax = 15.68060611+1

### END PARAMETERS

### VARIABLES

phyGPP = co2 -> phy
phyR = phy -> co2
phyNPP = phyGPP - phyR

mpbGPP = co2 -> mpb
mpbR = mpb -> co2
mpbNPP = mpbGPP - mpbR

bacC = susNLNODE -> bac
bacR = bac -> co2
bacP = bacC - bacR - bac -> susNLNODE

zheC = phy -> zhe + susNLNODE -> zhe
zheR = zhe -> co2
zheP = zheC - zheR - zhe -> susNLNODE

zcaC =  zhe -> zca
zcaR = zca -> co2
zcaP = zcaC - zcaR - zca -> susNLNODE

zomC = phy -> zom + zca -> zom
zomR = zom -> co2
zomP = zomC - zomR - zom -> susNLNODE


meheC = mpb -> mehe + sedNLNODE -> mehe
meheR = mehe -> co2
meheP = meheC - meheR - mehe -> sedNLNODE

meomC = mpb -> mehe + mehe -> meom + meom -> meom + sedNLNODE ->meom
meomR = meom -> co2
meomP = meomC - meomR - meom -> sedNLNODE

macC = phy -> mac + mpb -> mac + bac -> mac + mehe -> mac + meom -> mac + mac -> mac + susNLNODE -> mac + sedNLNODE -> mac
macR = mac -> co2
macP = macC - macR - mac -> sedNLNODE

### END VARIABLES

### EQUALITIES

### END EQUALITIES

### INEQUALITIES

phyNPP = phy * [phyNPPratioBmin, phyRratioNPPmax]
phyR = phyNPP * [phyRratioNPPmin, phyRratioNPPmax]

mpbNPP = mpb * [mpbNPPratioBmin, mpbNPPratioBmax]
mpbR = mpbNPP * [mpbRratioNPPmin, mpbRratioNPPmax]

bacP = bac * [bacPratioBmin, bacPratioBmax]
bacR = bac * [bacRratioBmin, bacRratioBmax]
bacC = bacP * [bacCratioPmin, bacCratioPmax]

zheP = zhe * [zhePrationBmin, zhePratioBmax]
zheR = zhe * [zheRratioBmin, zheRratioBmax]
zheC = zheP * [zheCratioPmin, zheCratioPmax]

zcaP = zca * [zcaPratioBmin, zcaPratioBmax]
zcaR = zca * [zcaRratioBmin, zcaRratioBmax]
zcaC = zcaP * [zcaCratioPmin, zcaCratioPmax]

zomP = zom * [zomPratioBmin, zomPratioBmax]
zomR = zom * [zomRratioBmin, zomRratioBmax]
zomC = zomP * [zomCratioPmin, zomCratioPmax]

meheP = mehe * [mehePratioBmin, mehePratioBmax]
meheR = mehe * [meheRratioBmin, meheRratioBmax]
meheC = meheP * [meheCratioPmin, meheCratioPmax]

meomP = meom * [meomPratioBmin, meomPratioBmin]
meomR = meom * [meomRratioBmin, meomRratioBmax]
meomC = meomP * [meomCratioPmin, meomCratioPmax]

macP = mac * [macPratioBmin, macPratioBmax]
macR = mac * [macRratioBmin, macRratioBmax]
macP = macP * [macCratioPmin, macCratioPmax]

susNLNODEInput -> susNLNODE < 391.6755 !50% more than ori
susNLNODEInput -> susNLNODE > 235.00566 !10% less than ori
susNLNODE -> susNLNODEExport < 13.055
susNLNODE -> susNLNODEExport > 8.73


sedNLNODE -> sedNLNODEExport < 3022.2 !5% of stock value
sedNLNODE -> sedNLNODEExport > 1813.3332  !3% of stock value



### END INEQUALITIES




