FROM alpine:latest
MAINTAINER Mayank Tahilramani github: @mayanktahil

RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python py-pip bash && \
	pip install awscli && \
	echo 'complete -C aws_completer aws' >> ~/.bashrc && \
    echo 'alias init-aws-cli=/examples/init-aws-cli.sh' >> ~/.bashrc && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*    

ENV PS1="AWS> "
WORKDIR /aws
#ENTRYPOINT ["aws"]
CMD bash


