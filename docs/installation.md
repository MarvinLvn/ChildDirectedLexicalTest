## 1) CHILDES & Wordbank

1) Create conda env, and install package `childespy`:

```bash
conda env create -f env.yml
conda activate cdlex
```

2) Make sure R>=4.0.0 is installed on your system, then, in a R session, run: 

```R
devtools::install_github("langcog/childesr", "0.2.1")
devtools::install_github("langcog/wordbankr")
```

Install `childespy` python package:

```bash
pip install childespy
```

## 2) Spot-the-work task generation 

1) Create another conda env for `paraphone`
   
```bash
git clone https://github.com/MarvinLvn/paraphone.git
cd paraphone

conda create -n paraphone python=3.8
conda activate paraphone
pip install -e .
```
