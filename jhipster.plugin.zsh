
alias jh='jhipster'
alias jhlink='yarn link generator-jhipster'
alias jhyarn='jhipster --yarn'
alias jhnpm='jhipster --npm'
alias jhskip='jhipster --skip-install --skip-checks'
alias jhf='jhipster --force'
alias jhfe='jhipster --force --with-entities'

alias jhupgrade='jhipster upgrade'
alias jhjdl='jhipster import-jdl'
alias jhe='jhipster entity'
alias jhs='jhipster service'
alias jhcontroller='jhipster spring-controller'
alias jhlang='jhipster languages'
alias jhinfo='jhipster info'
alias jhcompose='jhipster docker-compose'
alias jhrancher='jhipster rancher-compose'
alias jhcicd='jhipster ci-cd'

alias jhcf='jhipster cloudfoundry'
alias jhheroku='jhipster heroku'
alias jhkubernetes='jhipster kubernetes'
alias jhaws='jhipster aws'
alias jhopenshift='jhipster openshift'

jhinstall() {
    if [[ -a gulpfile.js ]]; then
        yarn install && bower install && gulp install
    elif [[ -a tsconfig.json ]]; then
        yarn install
    fi
}

jhclean() {
    if [[ -a mvnw ]]; then
        ./mvnw clean
    elif [[ -a gradlew ]]; then
        ./gradlew clean --no-daemon
    fi
}

jhrun() {
    if [[ -a mvnw ]]; then
        ./mvnw spring-boot:run
    elif [[ -a gradlew ]]; then
        ./gradlew bootRun --no-daemon
    fi
}

jhpack() {
    if [[ -a mvnw ]]; then
        ./mvnw -Pprod package
    elif [[ -a gradlew ]]; then
        ./gradlew -Pprod bootRepackage --no-daemon
    fi
}

jhdock() {
    if [[ -a mvnw ]]; then
        ./mvnw -Pprod package dockerfile:build
    elif [[ -a gradlew ]]; then
        ./gradlew -Pprod bootRepackage buildDocker --no-daemon
    fi
}

jhgatling() {
    if [[ -a mvnw ]]; then
        ./mvnw gatling:execute
    elif [[ -a gradlew ]]; then
        ./gradlew gatlingRun  --no-daemon
    fi
}

alias jhappup='docker-compose -f src/main/docker/app.yml up -d'
alias jhappdown='docker-compose -f src/main/docker/app.yml down'
alias jhappstop='docker-compose -f src/main/docker/app.yml stop'
alias jhapplogs='docker-compose -f src/main/docker/app.yml logs --follow'
alias jhmysqlup='docker-compose -f src/main/docker/mysql.yml up -d'
alias jhmysqldown='docker-compose -f src/main/docker/mysql.yml down'
alias jhmysqlstop='docker-compose -f src/main/docker/mysql.yml stop'
alias jhmysqllogs='docker-compose -f src/main/docker/mysql.yml logs --follow'
alias jhmariaup='docker-compose -f src/main/docker/mariadb.yml up -d'
alias jhmariadown='docker-compose -f src/main/docker/mariadb.yml down'
alias jhmariastop='docker-compose -f src/main/docker/mariadb.yml stop'
alias jhmarialogs='docker-compose -f src/main/docker/mariadb.yml logs --follow'
alias jhpostgresqlup='docker-compose -f src/main/docker/postgresql.yml up -d'
alias jhpostgresqldown='docker-compose -f src/main/docker/postgresql.yml down'
alias jhpostgresqlstop='docker-compose -f src/main/docker/postgresql.yml stop'
alias jhpostgresqllogs='docker-compose -f src/main/docker/postgresql.yml logs --follow'
alias jhmongoup='docker-compose -f src/main/docker/mongodb.yml up -d'
alias jhmongodown='docker-compose -f src/main/docker/mongodb.yml down'
alias jhmongostop='docker-compose -f src/main/docker/mongodb.yml stop'
alias jhmongologs='docker-compose -f src/main/docker/mongodb.yml logs --follow'
alias jhcassandraup='docker-compose -f src/main/docker/cassandra.yml up -d'
alias jhcassandradown='docker-compose -f src/main/docker/cassandra.yml down'
alias jhcassandrastop='docker-compose -f src/main/docker/cassandra.yml stop'
alias jhcassandralogs='docker-compose -f src/main/docker/cassandra.yml logs --follow'
alias jhesup='docker-compose -f src/main/docker/elasticsearch.yml up -d'
alias jhesdown='docker-compose -f src/main/docker/elasticsearch.yml down'
alias jhesstop='docker-compose -f src/main/docker/elasticsearch.yml stop'
alias jheslogs='docker-compose -f src/main/docker/elasticsearch.yml logs --follow'
alias jhregistryup='docker-compose -f src/main/docker/jhipster-registry.yml up -d'
alias jhregistrydown='docker-compose -f src/main/docker/jhipster-registry.yml down'
alias jhregistrystop='docker-compose -f src/main/docker/jhipster-registry.yml stop'
alias jhregistrylogs='docker-compose -f src/main/docker/jhipster-registry.yml logs --follow'
alias jhkafkaup='docker-compose -f src/main/docker/kafka.yml up -d'
alias jhkafkadown='docker-compose -f src/main/docker/kafka.yml down'
alias jhkafkastop='docker-compose -f src/main/docker/kafka.yml stop'
alias jhkafkalogs='docker-compose -f src/main/docker/kafka.yml logs --follow'
alias jhconsulup='docker-compose -f src/main/docker/consul.yml up -d'
alias jhconsuldown='docker-compose -f src/main/docker/consul.yml down'
alias jhconsulstop='docker-compose -f src/main/docker/consul.yml stop'
alias jhconsullogs='docker-compose -f src/main/docker/consul.yml logs --follow'
