import os

PROBLEMS = [
    #"multi_labeling_cs_legal32k",
    "multi_labeling_de_legal32k",
    #"multi_labeling_en_legal32k",
    #"multi_labeling_es_legal32k",
    #"multi_labeling_fr_legal32k",
    #"multi_labeling_it_legal32k",
    #"multi_labeling_sv_legal32k"
]


def main():
    for problem in PROBLEMS:
        cmd = "python ./t2t-trainer --data_dir=$DATA_DIR --output_dir=$TRAIN_DIR/transformer/label-100k/"+problem+" --schedule=train --worker_gpu=4 --train_steps=100000 --model=transformer --hparams_set=transformer_base_v3 --save_checkpoints_secs=600 --problems="+problem
        os.system(cmd)

main()
