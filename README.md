# PFNanoProduction


## Setup
```sh
cmsrel CMSSW_12_1_1
cd CMSSW_12_1_1/src
cmsenv
git cms-merge-topic kdlong:pfNano_CMSSW_12_1_1
git clone git@github.com:kdlong/PFNanoProduction.git Configuration/PFNanoProduction
scram b -j8

cd Configuration/PFNanoProduction
```

## Production

Current example is for dijet production without pileup. All configurations are build from cmsDriver with minimal modification, will update the scripts to have cmsDriver commands instead shortly

Example full production is (will run 12 events on 12 threads by default)

```sh
cmsRun test/dijet_cff_py_GEN_SIM_DIGI_L1_DIGI2RAW_HLT.py
cmsRun test/step2_phase1_new.py
cmsRun test/step3_phase1_new.py
cmsRun test/step4_NANO.py
```
