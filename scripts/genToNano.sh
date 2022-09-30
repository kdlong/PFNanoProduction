dir=$(dirname "$0")
nPart=10
cmsDriver.py PFNanoProduction/Configuration/dijet_cff.py \
    -s GEN,SIM,DIGI:pdigi_valid,L1TrackTrigger,L1,DIGI2RAW,HLT:@fake2,RAW2DIGI,RECO,RECOSIM,PFNANO \
    --conditions auto:phase2_realistic_T21 \
    --datatier NANOAODSIM \
    --eventcontent NANOAODSIM \
    --geometry Extended2026D77 \
    --era Phase2C11I13M9 \
    --python_filename ${dir}/../configs/Dijet_GenToPFNano_cff.py \
    --fileout dijet_PFNano.root \
    -n 8 \
    --nThreads 8
