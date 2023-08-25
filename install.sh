# git clone https://kgithub.com/JJplane/torch-rechub.git
conda create -n pt python=3.9
source activate pt
python setup.py install
conda install pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 cudatoolkit=10.2 -c pytorch
# pip install pytz,scikit_learn -i https://pypi.douban.com/simple
#pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
cd examples/ranking/data
# wget 'https://download.cowcs.com/cowtransfer/cowtransfer/77114/1d88e360-7e16-493a-9506-24274e62df892986670.zip?auth_key=1686914783-3d13e7f0f0324bf6a8aeed14da65b4be-0-2b460f1d4d2d48faea38ffc4ac2ce23f&biz_type=1&business_code=COW_TRANSFER&channel_code=COW_CN_WEB&response-content-disposition=attachment%3B%20filename%3Dali_ccp.zip%3Bfilename*%3Dutf-8%27%27ali_ccp.zip&user_id=1020279000120577114&x-verify=1' --output-document ali-cpp.zip
# mv ali-cpp.zip ali-ccp/
# cd ali-ccp/
# unzip ali-cpp.zip
# cd .. /..
# conda install -c conda-forge htop
python run_ali_ccp_multi_task.py --save_dir esmm_fix --epoch 10 --model_name ESMM_fix
./ossutil cp -r oss://search-guide/id/alicpp_prepocess/ali_ccp/ ali_ccp_full/
# head -n 100000 ali_ccp_train.csv > ali_ccp_train_10W.csv
# head -n 100000 ali_ccp_test.csv > ali_ccp_test_10W.csv
# head -n 100000 ali_ccp_val.csv > ali_ccp_val_10W.csv
