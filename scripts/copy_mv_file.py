import os
import shutil

base = os.path.join(os.path.expanduser('~'), '301_KUXIN', 'out')

if __name__ == '__main__':
    new_path = os.path.join(os.path.expanduser('~'), '301_KUXIN', 'subj_COT1')
    if not os.path.exists(new_path):
        os.makedirs(new_path)

    move_no = 0
    for subj_name in os.listdir(base):
        subj_path = os.path.join(base, subj_name)

        if not os.path.isdir(subj_path):
            continue

        for file_name in os.listdir(subj_path):
            if file_name.startswith('co') and file_name.endswith('.nii'):
                move_no += 1
                print('%s %s: %s. ' % (move_no, subj_name, file_name))

                new_file_name = subj_name + '_cot1.nii'
                shutil.copy2(os.path.join(subj_path, file_name), os.path.join(new_path, new_file_name))
