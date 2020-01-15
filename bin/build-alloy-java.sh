#!/usr/bin/env zsh

docker build -t build-alloy-java .
docker run --mount src="$(pwd)",target=/work,type=bind build-alloy-java cp /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.241.x86_64/jre/lib/rt.jar /work
javac -target 7 -source 7 -bootclasspath rt.jar -cp org.alloytools.alloy.dist.jar RunAlloy.java -d .
#printf '\x33' | dd of=alloy/RunAlloy.class bs=1 seek=7 count=3 conv=notrunc
