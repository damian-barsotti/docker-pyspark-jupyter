from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("SimpleApp").config(
    'spark.jars.packages', 'graphframes:graphframes:0.8.3-spark3.4-s_2.13').getOrCreate()

from graphframes import *

v = spark.createDataFrame([
    ("a", "Alice", 34),
    ("b", "Bob", 36),
    ("c", "Charlie", 30),
], ["id", "name", "age"])
# Create an Edge DataFrame with "src" and "dst" columns
e = spark.createDataFrame([
    ("a", "b", "friend"),
    ("b", "c", "follow"),
    ("c", "b", "follow"),
], ["src", "dst", "relationship"])

# Create a GraphFrame
g = GraphFrame(v, e)

# Query: Get in-degree of each vertex.
g.inDegrees.show()

spark.stop()
