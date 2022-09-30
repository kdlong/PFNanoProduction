# PFNanoProduction


## Setup
```sh
cmssw_version=CMSSW_12_6_0_pre2 # CMSSW_12_1_1 also supported
cmsrel $cmssw_version
cd ${cmssw_version}/src
cmsenv
git cms-merge-topic kdlong:pfNano_CMSSW_${$cmssw_version}
git clone git@github.com:kdlong/PFNanoProduction.git Configuration/PFNanoProduction
scram b -j8

cd Configuration/PFNanoProduction
```

## Production

Current example is for dijet production without pileup. All configurations are build from cmsDriver with minimal modification, which are in the scripts folder. Can either run one-shot GEN --> Nano or GENSIMDIGI, RECO, and PFNANO steps separately.
