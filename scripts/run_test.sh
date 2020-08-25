## using an example dataset to test TUM RGB-D named rgbd_dataset_freiburg1_desk

## generate associations
python associate.py ../datasets/rgbd_dataset_freiburg1_desk/rgb.txt ../datasets/rgbd_dataset_freiburg1_desk/depth.txt > associations.txt

## run example
./../ORB_SLAM2/Examples/RGB-D/rgbd_tum ../ORB_SLAM2/Vocabulary/ORBvoc.txt ../ORB_SLAM2/Examples/RGB-D/TUM1.yaml ../datasets/rgbd_dataset_freiburg1_desk associations.txt