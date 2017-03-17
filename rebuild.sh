# docker-compose run --rm ps_app rails d model PostClip
# docker-compose run --rm ps_app rails g model PostClip name:string description:string contentLink:text attachment:string board_id:integer
# docker-compose run --rm ps_app rails d scaffold_controller Api::V1::PostClip --model-name=PostClip
# docker-compose run --rm ps_app rails g scaffold_controller Api::V1::PostClip --model-name=PostClip
docker-compose run --rm ps_app rails g uploader Attachment
docker-compose run --rm ps_app bundle install
