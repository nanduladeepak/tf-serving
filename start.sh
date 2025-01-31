export TESTDATA="$(pwd)/serving/tensorflow_serving/servables/tensorflow/testdata"

echo $TESTDATA

# docker run -t --rm -p 8501:8501 \
#     -v "$TESTDATA/saved_model_half_plus_two_cpu:/models/half_plus_two" \
#     -e MODEL_NAME=half_plus_two \
#     emacski/tensorflow-serving:latest

docker run -t --rm -p 8501:8501 \
    -v "$TESTDATA/AttU_Net:/models/AttU_Net" \
    -e MODEL_NAME=AttU_Net \
    emacski/tensorflow-serving:latest