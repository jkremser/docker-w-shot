LOCAL_IMAGE=$(USER)/w-shot

.PHONY: build clean run show

build:
	docker build -t $(LOCAL_IMAGE) .

clean:
	-docker rmi -f $(LOCAL_IMAGE) || true
	-mkdir -p /tmp/cam-data || true
	-rm -rf /tmp/cam-data/* || true

run:
	-docker rm -f wp || true
	-mkdir -p /tmp/cam-data || true
	docker run --rm --name wp --device=/dev/video0 -v /tmp/cam-data:/tmp/cam-data:z $(LOCAL_IMAGE)

show:
	echo -e "\n\nshowing the last picture\n\n"
	eog `ls -td -1 /tmp/cam-data/* | head -1`
