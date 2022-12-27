import cv2
from pathlib import Path
import argparse
import time
from src.lp_recognition import E2E
from tensorflow.python.util import deprecation
deprecation._PRINT_DEPRECATION_WARNINGS = False

def get_arguments():
    arg = argparse.ArgumentParser()
    arg.add_argument('-i', '--image_path', help='link to image', default='nhandien/samples/1.jpg')
    return arg.parse_args()
args = get_arguments()
img_path = Path(args.image_path)
img = cv2.imread(str(img_path))
model = E2E()
image = model.predict(img)

