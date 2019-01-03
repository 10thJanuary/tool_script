#! /bin/bash

#parent_dir_path="/data/liugroup/home/mwang/301_KUXIN/fun_raw"
parent_dir_path="/data/liugroup/home/mwang/301_KUXIN/T1_raw"

for sub_dir_path in $parent_dir_path/*;
do
    sub_name=$(echo "$sub_dir_path" | rev | cut -d '/' -f 1 | rev)
    
    cd $parent_dir_path
    tar -zcvf $sub_name.tar.gz $sub_name 
    rm -r $sub_name  
done
