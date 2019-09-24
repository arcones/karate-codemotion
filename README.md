# Karate :martial_arts_uniform: Codemotion Madrid 2019 :rocket:

Repo with assets that will be used in a talk about [Karate testing framework](https://intuit.github.io/karate/) that will be held in [Codemotion 2019 Madrid Conference](https://events.codemotion.com/conferences/madrid/2019/)

You can find the slides [here](https://docs.google.com/presentation/d/147Mg1PqqmEVXNWDV8kLu8QdID0z1sLbxdsPGc7FCLQQ/edit?usp=sharing).

## Requirements
 - [Docker](https://docs.docker.com/install/) :whale2:
 - [Gradle](https://gradle.org/install/) :elephant:

### Run the test suite :gear:
Once inside the cloned repo, you can use *gradle* and the *docker engine* to:

```
## Run the HTTP API
cd cats-as-a-service && ./gradlew clean shadowJar run ; cd -
```

This will block your terminal, so open a new one to run the tests against the HTTP service with:

```
## Run the test suite
docker build . -t karate-dsl && docker run -v "$PWD/target:/target" --network=host  karate-dsl:latest
```

### Reports :bar_chart:
The execution should generate a Cucumber HTML report that could be opened with your favourite browser at `target/cucumber-html-reports/overview-features.html`

## Want some more? :up:
I did a more extensive talk about Karate in the following [meetup](http://bit.ly/karate-meetup-swcraft).

## Any feedback? :innocent:
Send me anything but viruses to marta.arcones@gmail.com :woman_technologist: