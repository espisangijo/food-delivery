rasa run --model models --enable-api --cors “*” --debug \
        --endpoints endpoints.yml \
        --credentials credentials.yml \
        -p $PORT
