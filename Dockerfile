FROM node:12

RUN npm i -g @angular/cli && \
    npm i -g webpack

WORKDIR /${NAME_PROJECT}
RUN export NAME_PROJECT=my-project && ng new ${NAME_PROJECT} --routing --style sass && \
    git config --global user.email ESSchtolts@yandex.ru && \
    git config --global user.name ESSch && \
    npm run test

CMD npm run start

EXPOSE 4200
EXPOSE 9876