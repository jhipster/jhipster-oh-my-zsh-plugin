alias jh='yo jhipster'
alias jhyarn='yo jhipster --yarn'
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
