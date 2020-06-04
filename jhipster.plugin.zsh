alias jh='jhipster'
alias jhlink='npm link generator-jhipster'
alias jhyarn='jhipster --yarn'
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
alias jhcicd='jhipster ci-cd'

alias jhcf='jhipster cloudfoundry'
alias jhheroku='jhipster heroku'
alias jhkubernetes='jhipster kubernetes'
alias jhaws='jhipster aws'
alias jhopenshift='jhipster openshift'

alias jhkot='jhipster --blueprints kotlin'
alias jhvue='jhipster --blueprints vuejs'

jhinstall() {
    if [[ -a gulpfile.js ]]; then
        npm install && bower install && gulp install
    elif [[ -a tsconfig.json ]]; then
        npm install
    fi
}

jhclean() {
    if [[ -a mvnw ]]; then
        ./mvnw clean
    elif [[ -a gradlew ]]; then
        ./gradlew clean --no-daemon
    fi
}

jhsonar() {
    if [[ -a mvnw ]]; then
        ./mvnw clean verify sonar:sonar
    elif [[ -a gradlew ]]; then
        ./gradlew clean check sonarqube
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
        ./mvnw -Pprod verify
    elif [[ -a gradlew ]]; then
        ./gradlew -Pprod bootJar --no-daemon
    fi
}

jhdock() {
    if [[ -a mvnw ]]; then
        ./mvnw verify -Pprod jib:dockerBuild
    elif [[ -a gradlew ]]; then
        ./gradlew bootJar -Pprod jibDockerBuild --no-daemon
    fi
}

jhgatling() {
    gatling -sf src/test/gatling/user-files/simulations
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

alias jhmssqlup='docker-compose -f src/main/docker/mssql.yml up -d'
alias jhmssqldown='docker-compose -f src/main/docker/mssql.yml down'
alias jhmssqlstop='docker-compose -f src/main/docker/mssql.yml stop'
alias jhmssqllogs='docker-compose -f src/main/docker/mssql.yml logs --follow'

alias jhmongoup='docker-compose -f src/main/docker/mongodb.yml up -d'
alias jhmongodown='docker-compose -f src/main/docker/mongodb.yml down'
alias jhmongostop='docker-compose -f src/main/docker/mongodb.yml stop'
alias jhmongologs='docker-compose -f src/main/docker/mongodb.yml logs --follow'

alias jhcouchbaseup='docker-compose -f src/main/docker/couchbase.yml up -d'
alias jhcouchbasedown='docker-compose -f src/main/docker/couchbase.yml down'
alias jhcouchbasestop='docker-compose -f src/main/docker/couchbase.yml stop'
alias jhcouchbaselogs='docker-compose -f src/main/docker/couchbase.yml logs --follow'

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

alias jhkeycloakup='docker-compose -f src/main/docker/keycloak.yml up -d'
alias jhkeycloakdown='docker-compose -f src/main/docker/keycloak.yml down'
alias jhkeycloakstop='docker-compose -f src/main/docker/keycloak.yml stop'
alias jhkeycloaklogs='docker-compose -f src/main/docker/keycloak.yml logs --follow'

alias jhsonarup='docker-compose -f src/main/docker/sonar.yml up -d'
alias jhsonardown='docker-compose -f src/main/docker/sonar.yml down'
alias jhsonarstop='docker-compose -f src/main/docker/sonar.yml stop'
alias jhsonarlogs='docker-compose -f src/main/docker/sonar.yml logs --follow'

alias jhredisup='docker-compose -f src/main/docker/redis.yml up -d'
alias jhredisdown='docker-compose -f src/main/docker/redis.yml down'
alias jhredisstop='docker-compose -f src/main/docker/redis.yml stop'
alias jhredislogs='docker-compose -f src/main/docker/redis.yml logs --follow'

alias jhmemcachedup='docker-compose -f src/main/docker/memcached.yml up -d'
alias jhmemcacheddown='docker-compose -f src/main/docker/memcached.yml down'
alias jhmemcachedstop='docker-compose -f src/main/docker/memcached.yml stop'
alias jhmemcachedlogs='docker-compose -f src/main/docker/memcached.yml logs --follow'

alias jhneo4jup='docker-compose -f src/main/docker/neo4j.yml up -d'
alias jhneo4jdown='docker-compose -f src/main/docker/neo4j.yml down'
alias jhneo4jstop='docker-compose -f src/main/docker/neo4j.yml stop'
alias jhneo4jlogs='docker-compose -f src/main/docker/neo4j.yml logs --follow'
