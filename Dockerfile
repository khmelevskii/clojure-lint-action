FROM cljkondo/clj-kondo:2022.12.09-SNAPSHOT AS binary

FROM node:16.18-buster

COPY lib /action/lib
COPY --from=binary /usr/local/bin/clj-kondo /usr/local/bin/clj-kondo
ENTRYPOINT ["/action/lib/entrypoint.sh"]
