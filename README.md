# mesos
mesos-master and mesos-slave
ENTRYPOINT: /usr/sbin/mesos-master
eg: docker run -it --net host vrviumichael/mesos:latest  --zk=zk://10.86.0.106:2181/mesostest --port=5050 --log_dir=/var/log/mesos --cluster=michael --hostname=10.86.0.102 --ip=10.86.0.102 --quorum=1 --work_dir=/var/lib/mesos --advertise_ip=10.86.0.102
