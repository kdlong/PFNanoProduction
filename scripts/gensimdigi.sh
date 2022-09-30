dir=$(dirname "$0")
nPart=10
cmsDriver.py PFNanoProduction/Configuration/dijet_cff.py \
    -s GEN,SIM,DIGI:pdigi_valid,L1TrackTrigger,L1,DIGI2RAW,HLT:@fake2 \
    --beamspot HLLHC14TeV \
    --conditions auto:phase2_realistic_T21 \
    --datatier GEN-SIM-DIGI-RAW \
    --eventcontent FEVTDEBUGHLT \
    --geometry Extended2026D77 \
    --era Phase2C11I13M9 \
    --fileout file:dijet.root \
    --python_filename ${dir}/../configs/dijet_cff.py \
    --customise DPGAnalysis/PFNanoAOD/pfNano_cff.customizeOutputForPF \
    -n 8 \
    --nThreads 8
