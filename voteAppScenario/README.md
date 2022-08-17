Scenario : A simple distributed application running across multiple
Docker containers Details : voteApp \~ nodeJs redis worker \~ dotnet /
java postgres resultApp \~ python

services : - two nodePort service for voteApp and resultApp ( it can be
LoadBalancer too ) - two clusterIP service for redis and postgres \~
