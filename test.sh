swift build
swift build -c release
swift test

docker run -it -v $PWD:/home rockywei/swift:3.1 /bin/bash -c "cd home && swift build --build-path=.build31 && swift build --build-path=.build31 -c release && swift test --build-path=.build31 "
docker run -it -v $PWD:/home rockywei/swift:4.0 /bin/bash -c "cd home && swift build --build-path=.build40 && swift build --build-path=.build40 -c release && swift test --build-path=.build40 "
