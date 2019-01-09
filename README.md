# tool_script

### copy_mv_file.py
应用brant预处理功能影像，产生了若干中间文件。将以'co'开头同时以'.nii'结尾的文件拷贝并重命名为以'_cot1.nii'结尾的文件, 'coxxxxxx.nii'文件是已经对齐到标准空间的结构像。

### tar_gz_dirs.sh
原始的功能像和结构像都是以文件夹存储在服务器上的，按照每个文件夹进行打包压缩并删除原文件夹，节省空间，方便备份。解压命令tar -xzvf xxx.tar.gz

### rm_file_fmri.sh
应用brant预处理功能影像，产生了若干中间文件。只保留以下几个文件, 并用gzip压缩这些文件。
1. fdGSRwrabrant_4D.nii, 回归全脑均值
2. fdnoGSRwrabrant_4D.nii, 未回归全脑均值
3. s6fdGSRwrabrant_4D.nii, 回归全脑均值, 用6mm高斯核平滑
4. s6fdnoGSRwrabrant_4D.nii, 未回归全脑均值, 用6mm高斯核平滑
5. wrabrant_4D.nii, 配准后的功能像

### workon
方便快捷地登录服务器