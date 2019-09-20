# Karate :martial_arts_uniform: Codemotion Madrid 2019 :rocket:

Repo with assets that will be used in a talk about [Karate testing framework](https://intuit.github.io/karate/) that will be held in [Codemotion 2019 Madrid Conference](https://events.codemotion.com/conferences/madrid/2019/)

You can find the slides [here](https://bit.ly/karate-slides-codemotion).//TODOOOOOOO!!! Set the link with the PDF version!

## Requirement
 - [Docker](https://docs.docker.com/install/) :whale2:
 - [Gradle](https://docs.docker.com/install/) :whale2:

### Run the test suite :gear:
Once inside the cloned repo, you can use your *docker engine* to:

```
## Run the HTTP API

docker build . -t karate-dsl

docker run -v "$PWD/target:/target" karate-dsl:latest
```


```
## Run the test suite

docker build . -t karate-dsl

docker run -v "$PWD/target:/target" karate-dsl:latest
```

### Reports :bar_chart:
The execution should generate a Cucumber HTML report that could be opened with your favourite browser at `target/cucumber-html-reports/overview-features.html`

## Want some more? :up:
I did a more extensive talk about Karate in the following [meetup](http://bit.ly/karate-meetup-swcraft).

## Any feedback? :innocent:
Send me anything but viruses to marta.arcones@gmail.com :woman_technologist:

