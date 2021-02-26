export CHECKERFRAMEWORK=/home/jhe16/Downloads/TaintAnalysis/checker-framework-2.5.7
export PATH=${CHECKERFRAMEWORK}/checker/bin:${PATH}
export HADOOP_HOME=/home/jhe16/Downloads/hadoop-2.7.0
export CLASSPATH=$($HADOOP_HOME/bin/hadoop classpath):$CLASSPATH

start = $SECONDS

#javac -processor org.checkerframework.checker.tainting.TaintingChecker hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient/src/test/java/org/apache/hadoop/mapred/TestYARNRunner.java
javac -processor org.checkerframework.checker.tainting.TaintingChecker hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-core/src/test/java/org/apache/hadoop/mapred/TestJobEndNotifier.java
#javac -processor org.checkerframework.checker.tainting.TaintingChecker hadoop-hdfs-project/hadoop-hdfs/src/test/java/org/apache/hadoop/hdfs/server/namenode/TestTransferFsImage.java 


duration=$((SECOND - start))
echo $duration
