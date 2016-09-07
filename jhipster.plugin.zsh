alias jh='yo jhipster'
alias jhskip='yo jhipster --skip-install'
alias jhinstall='npm install && bower install && gulp install'
alias jhf='yo jhipster --force'
alias jhfe='yo jhipster --force --with-entities'

alias jhjdl='yo jhipster:import-jdl'
alias jhe='yo jhipster:entity'
alias jhs='yo jhipster:service'
alias jhlang='yo jhipster:languages'
alias jhinfo='yo jhipster:info'
alias jhcompose='yo jhipster:docker-compose'

alias jhcf='yo jhipster:cloudfoundry'
alias jhheroku='yo jhipster:heroku'
alias jhkubernetes='yo jhipster:kubernetes'
alias jhaws='yo jhipster:aws'

jhclean() {
    if [[ -a mvnw ]]; then
        ./mvnw clean
    else
        ./gradlew clean
    fi
}
jhrun() {
    if [[ -a mvnw ]]; then
        ./mvnw spring-boot:run
    else
        ./gradlew bootRun
    fi
}
jhpack() {
    if [[ -a mvnw ]]; then
        ./mvnw -Pprod package
    else
        ./gradlew -Pprod bootRepackage
    fi
}
jhdock() {
    if [[ -a mvnw ]]; then
        ./mvnw -Pprod package docker:build
    else
        ./gradlew -Pprod bootRepackage buildDocker
    fi
}
jhgatling() {
    if [[ -a mvnw ]]; then
        ./mvnw gatling:execute
    else
        ./gradlew gatlingRun
    fi
}

alias jhmysqlup='docker-compose -f src/main/docker/mysql.yml up -d'
alias jhmysqldown='docker-compose -f src/main/docker/mysql.yml down'
alias jhmysqlstop='docker-compose -f src/main/docker/mysql.yml stop'
alias jhmariaup='docker-compose -f src/main/docker/mariadb.yml up -d'
alias jhmariadown='docker-compose -f src/main/docker/mariadb.yml down'
alias jhmariastop='docker-compose -f src/main/docker/mariadb.yml stop'
alias jhpostgresqlup='docker-compose -f src/main/docker/postgresql.yml up -d'
alias jhpostgresqldown='docker-compose -f src/main/docker/postgresql.yml down'
alias jhpostgresqlstop='docker-compose -f src/main/docker/postgresql.yml stop'
alias jhmongoup='docker-compose -f src/main/docker/mongodb.yml up -d'
alias jhmongodown='docker-compose -f src/main/docker/mongodb.yml down'
alias jhmongostop='docker-compose -f src/main/docker/mongodb.yml stop'
alias jhcassandraup='docker-compose -f src/main/docker/cassandra.yml up -d'
alias jhcassandradown='docker-compose -f src/main/docker/cassandra.yml down'
alias jhcassandrastop='docker-compose -f src/main/docker/cassandra.yml stop'
alias jhesup='docker-compose -f src/main/docker/elasticsearch.yml up -d'
alias jhesdown='docker-compose -f src/main/docker/elasticsearch.yml down'
alias jhesstop='docker-compose -f src/main/docker/elasticsearch.yml stop'
alias jhregistryup='docker-compose -f src/main/docker/jhipster-registry.yml up -d'
alias jhregistrydown='docker-compose -f src/main/docker/jhipster-registry.yml down'
alias jhregistrystop='docker-compose -f src/main/docker/jhipster-registry.yml stop'
