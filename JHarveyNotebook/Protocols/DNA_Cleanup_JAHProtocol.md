Challenge study protocol v1 · MD
# In-solution DNase treatment before Pan-Bird riboPOOL depletion
 
Harvey Lab | For Direct-zol eluates from the lysed blood challenge study- Following Niel B. Trial 1 and Trial 2 protocols
 
## Purpose
 
Remove residual genomic DNA from Direct-zol eluates before Pan-Bird riboPOOL rRNA depletion.

For the **pre-DNase** eluate, use 10 µL of Qubit input rather than 2. You have 100 µL there, and intact high molecular weight DNA does not sample evenly at 1 to 2 µL. That sampling error is what produced the impossible "DNA increased after treatment" results in the earlier batches.
 
This replaces the earlier 65 µL TURBO protocol, which removed 2 to 26% of input DNA. The changes here are a diluted reaction, roughly double the enzyme concentration, a split-dose incubation, verified temperature, and built-in controls.
 
## Why the reaction is built this way
 
| Design choice | Reason |
|---|---|
| 105 µL reaction from 50 µL input | Drops nucleic acid to ~23 µg/mL, far below TURBO's 200 µg/mL rigorous threshold. We have RNA to spare, so we can spend volume to buy digestion efficiency. |
| 8 U TURBO total, split 4 U + 4 U | 1.9× the routine enzyme concentration. Thermo's rigorous protocol adds enzyme rather than time, and the two-step spike is their optional enhancement (1907M Rev. J, p.3). |
| Use thermocycler, heated lid | 100 µL in a 2 mL tube or onn an open block reaches temperature poorly and condenses over an hour. |
| Column cleanup, no heat, no Inactivation Reagent | riboPOOL uses biotinylated **DNA** probes. Any residual DNase destroys them. KAPA also warns explicitly that residual DNase I compromises rRNA depletion. |
 
## Inputs and expectations
 
Typical Direct-zol eluate: 100 µL at ~35 ng/µL RNA and ~12 ng/µL dsDNA by Qubit (the average across our samples).
 
Using 50 µL of that: ~1.8 µg RNA, ~0.6 µg DNA. Reaction sits at 14% of TURBO's routine DNA capacity with nearly twice the specified enzyme.
 
Pan riboPOOL accepts 10 ng to 3 µg and wants RIN above 7, so a 30 to 40% RNA loss across this protocol is acceptable.
 
---
 
## Before you start
 
- [ ] Thaw 10X TURBO DNase Buffer on ice. Vortex until fully homogeneous.
- [ ] Keep TURBO DNase enzyme in a cold block. It is 50% glycerol, so pre-wet tips and aspirate slowly.
- [ ] Set thermocycler: 37°C block, lid 50°C.
- [ ] Prepare RNA Wash Buffer if not already done (96 mL 100% EtOH into the 24 mL concentrate).
- [ ] Label two tubes per sample: reaction tube (0.2 mL strip) and elution tube (1.5 mL RNase-free).
---
 
## Step 1. DNase master mix
 
Make enough for your batch plus 1 extra reaction. Spike the enzyme in last.
 
| Component | 1 rxn | 7 rxn (8 + 1) |
|---|---|---|
| 10X TURBO DNase Buffer | 10 µL | 70 µL |
| TURBO DNase (2 U/µL) | 2 µL | 14 µL |
| Nuclease-free H₂O | 38 µL | 266 µL |
| **Total** | **50 µL** | **350 µL** |
 
## Step 2. First digestion
 
1. Add 50 µL of RNA eluate to a 0.2 mL PCR tube.
2. Add 50 µL of master mix. Pipette-mix gently 5 times. Do not vortex.
3. Incubate 37°C for 30 minutes, lid at 50°C.
Final: 100 µL, 1X buffer, 4 U enzyme.
 
## Step 3. Enzyme spike and second digestion
 
Prepare the spike mix while step 2 runs.
 
| Component | 1 rxn | 7 rxn |
|---|---|---|
| TURBO DNase (2 U/µL) | 2 µL | 14 µL |
| 10X TURBO DNase Buffer | 0.5 µL | 3.5 µL |
| Nuclease-free H₂O | 2.5 µL | 17.5 µL |
| **Total** | **5 µL** | **35 µL** |
 
1. Add 5 µL of spike mix to each reaction. Pipette-mix gently.
2. Incubate 37°C for a further 15 or 30 minutes (15 is safest- most of the enzyme activity happens early but if our RIN drops then we want to definitely cut down to 15 minutes).
Final: 105 µL, 1X buffer, 8 U enzyme.
 
Proceed straight to cleanup. Do not heat inactivate. Do not add DNase Inactivation Reagent.
 
---
 
## Step 4. Cleanup on RNA Clean & Concentrator-5
 
All steps at room temperature unless noted. All spins 12,000 to 16,000 × g for 30 seconds unless noted.
 
1. Add 210 µL RNA Binding Buffer to the 105 µL reaction. Mix.
2. Add 315 µL 100% ethanol. Mix. **This is equal to the combined sample plus buffer volume, not to the sample volume.** Total is now 630 µL.
3. Transfer the full 630 µL to a Zymo-Spin IC Column in a collection tube. Spin. Discard flow-through.
4. Add 400 µL RNA Prep Buffer. Spin. Discard flow-through.
5. Add 700 µL RNA Wash Buffer. Spin. Discard flow-through.
6. Add 400 µL RNA Wash Buffer. Spin 1 minute. Discard flow-through.
7. Transfer the column to a labelled RNase-free 1.5 mL tube.
8. Add 26 µL of 55°C nuclease-free water directly to the matrix. Hold 5 minutes at room temperature. Spin 30 seconds.
9. Re-apply the 26µL eluate to the same matrix. Hold 1 minute. Spin 30 seconds.
Expected: 1.2 to 1.6 µg RNA in 26 µL, roughly 60 to 80 ng/µL. Column capacity is 10 µg, so you have wide margin.
 
We can at this point elute into smaller volumes.
The 25 µL is set by riboPOOL. Hybridization takes exactly 14 µL of sample (riboPOOL Kit User Guide, step 2a), so this elution gives you 14 µL for depletion plus 10 µL for QC and 2 µL for slop.
---
 
## Step 5. QC
 
Take 10 µL from the eluate for QC (This should help resolve the variability in the DNA qubits- DNA is highly viscous).
 
| Assay | Input | Purpose |
|---|---|---|
| Qubit RNA HS | 2 µL | Yield|
| Qubit dsDNA HS | 5 µL | Residual DNA. High MW DNA does not sample evenly at 1 to 2 µL. |
| TapeStation RNA | 2 µL | RIN. Pan-Bird riboPOOL wants RIN above 7. |


### No-RT qPCR
If we had access to a No-RT qPCR we could measure DNA and nothing else (this is something to think about. We have access to them in INBRE and Murdoch or Sorenson's lab might have one.
 
Run a bird GAPDH or 18S primer set with **no reverse transcriptase** in any reaction:
 
- Pre-DNase eluate at matched input mass
- Post-DNase eluate at matched input mass
- No-template control
Fold removal = 2^(Ct_post − Ct_pre).
 
---
 
## Controls (Do we have any samples we extracted early that we are planning to exclude from sequencing? Or could we use turkey PCR products we don't need?)
 
### Every batch: no-enzyme arm
 
One sample carried through identically with nuclease-free water substituted for TURBO DNase in both the master mix and the spike mix.
 
This would allow us to determine how much the enzyme actually removed, because the column alone changes both readings.
 
### Every new enzyme lot: activity check
 
| Component | Volume |
|---|---|
| 10X TURBO DNase Buffer | 2 µL |
| TURBO DNase (2 U/µL) | 2 µL |
| PCR product or gDNA, ~200 ng | x µL |
| Nuclease-free H₂O | dilute extract to 20 µL |
 
37°C for 30 minutes. Run on a gel beside an unincubated aliquot of the same DNA.
 
No disappearance means the enzyme or buffer is dead, and nothing downstream will work. This costs one lane and rules out the most likely single point of failure.


---
 
## Notes
 
- Do not run this protocol twice on the same RNA. Salt accumulates and Thermo warns against sequential TURBO treatments for downstream enzymatic work.
- Batch size of 7-8 fits one thermocycler row and keeps hands-on time under 90 minutes including cleanup.
- Make master mix for one extra reaction beyond your batch (slop). Glycerol carryover costs more than one reaction's worth of enzyme.
- **Record enzyme lot, buffer lot, and date for every batch**.
## Sources
 
- TURBO DNA-free Kit User Guide, Pub. No. 1907M Rev. J — https://assets.thermofisher.com/TFS-Assets/LSG/manuals/1907M_turbodnafree_UG.pdf
- RNA Clean & Concentrator-5 Instruction Manual Ver. 3.1.3 — https://files.zymoresearch.com/protocols/_r1013_r1014_r1015_r1016_rna_clean_concentrator-5.pdf
- Qubit dsDNA HS Assay Kit User Guide, Pub. No. MAN0002326 Rev. C — https://documents.thermofisher.com/TFS-Assets/LSG/manuals/Qubit_dsDNA_HS_Assay_UG.pdf
- Pan-Bird riboPOOL — https://www.sitoolsbiotech.com/products/ribopools/rrna-depletion/available-ribopools/pan-bird
 

