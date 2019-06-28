# FlowCAr
Flow Network Construction and Assessment in R

Network modelling requires a cogent, standardised methodology for the vital construction phase
to facilitate appropriate interpretation of outcomes from the final analysis. Different approaches to
network construction or single solutions have been commonplace in network modelling over the
past decades and could be improved with multi-solution analysis of a single system to account for
the inherent variability of input data. Linear inverse modelling (LIM) can be used to quantify complex
flow networks by calculating network link values from under sampled data, typical for ecological
networks. The resultant networks can be analysed using Ecological Network Analysis (ENA), a branch
of network ecology used to holistically analyse the structure and dynamics of interactions in
networks. The FlowCAr package provides a standardised methodology for the construction phase of
network modelling, producing a range of mathematically and ecologically sound flow networks from
given input data, solved using LIM. These networks can be visually assessed, to ensure the LIM
solution space has been adequately sampled. FlowCAr restructures and packs the list of LIM solved
networks, enabling ENA to be performed on the flow networks in R package enaR.
