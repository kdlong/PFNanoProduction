#cmsDriver.py Configuration/PFNano/python/dijet_cff.py \
#  --conditions auto:phase1_2021_realistic \
#  -n 12 \
#  --era Run3 \
#  --eventcontent FEVTDEBUGHLT \
#  -s GEN,SIM,DIGI,L1,DIGI2RAW,HLT \
#  --datatier GEN-SIM \
#  --geometry DB:Extended \
#  --pileup NoPileUp \
#  --no_exec \
#  --fileout step2_phase1_new.root \
#  --nThreads 12 \
#  --customise Validation/RecoParticleFlow/customize_pfanalysis.customize_step2 \
#  --python_filename=step2_phase1_new.py
#
#cmsDriver.py step3 \
#  --conditions auto:phase1_2021_realistic \
#  --era Run3 \
#  -n -1 \
#  --eventcontent FEVTDEBUGHLT \
#  --runUnscheduled \
#  -s RAW2DIGI,L1Reco,RECO,RECOSIM \
#  --datatier GEN-SIM-RECO \
#  --geometry DB:Extended \
#  --no_exec \
#  --filein file:step2_phase1_new.root \
#  --fileout step3_phase1_new.root \
#  --customise Validation/RecoParticleFlow/customize_pfanalysis.customize_step3 \
#  --python_filename=step3_phase1_new.py

cmsDriver.py step4 \
    --conditions auto:phase1_2021_realistic \
    --datatier NANOAOD \
    --era Run3 \
    --eventcontent NANOAODSIM \
    --data \
    --nThreads 12 \
    --filein file:step3_phase1_new.root \
    --fileout pfNano_phase1_new.root \
    --step NANO
