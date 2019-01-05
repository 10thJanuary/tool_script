#! /bin/bash

parent_path='/data/liugroup/home/mwang/301_KUXIN/out'

file_name_keep=(
'fdGSRwrabrant_4D.nii'
'fdnoGSRwrabrant_4D.nii'
's6fdGSRwrabrant_4D.nii'
's6fdnoGSRwrabrant_4D.nii'
'wrabrant_4D.nii'
)

function file_to_delete()
{
    local file_name=$1
    local delete_flag="1"
    for name in "${file_name_keep[@]}"; do
	if [ "$file_name" == "$name" ]; then
	    delete_flag="0"
	    break
	fi
    done

    echo $delete_flag
}

for sub_path in $parent_path/*; 
do
    for name_path in $sub_path/*; do 
        file_name=$(echo "$name_path" | rev | cut -d '/' -f 1 | rev)    
        delete_flag=$(file_to_delete $file_name)
    
    	if [ "$delete_flag" == "1" ]; then
	    rm $name_path
        else
	    gzip -v $name_path	
        fi
    done
done
