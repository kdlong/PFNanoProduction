dir=$(dirname "$0")
 cmsDriver.py NANO \
    -s PFNANO \
    --conditions auto:phase2_realistic_T21 \
    --datatier NANOAODSIM \
    --eventcontent NANOAODSIM \
    --geometry Extended2026D77 \
    --era Phase2C11I13M9 \
    --python_filename ${dir}/../configs/Dijet_PFNano_cff.py \
    --filein file:dijet_RECO.root \
    --fileout dijet_PFNano.root 

