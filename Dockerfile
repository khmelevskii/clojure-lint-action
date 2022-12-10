FROM cljkondo/clj-kondo:latest AS binary

FROM node:16.18-buster

COPY lib /action/lib
COPY --from=binary /usr/local/bin/clj-kondo /usr/local/bin/clj-kondo
ENTRYPOINT ["/action/lib/entrypoint.sh"]
