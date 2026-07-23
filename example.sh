
#prepare data
mkdir data
cd data
wget https://grail.cs.washington.edu/projects/bal/data/ladybug/problem-49-7776-pre.txt.bz2 --no-check-certificate
bzip2 -d problem-49-7776-pre.txt.bz2
cd ..

#global lm solver
TORCH_USE_RTLD_GLOBAL=YES python3 -m examples.BundleAdjuster.bundle_adjuster --balFile ./data/problem-49-7776-pre.txt --device cuda