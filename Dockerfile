FROM tensorflow/serving:2.8.0
# FROM emacski/tensorflow-serving

WORKDIR /app

COPY ./saved_model_half_plus_two_cpu /models/half_plus_two


# EXPOSE 8501
EXPOSE 80:8501

ENV MODEL_NAME=half_plus_two
