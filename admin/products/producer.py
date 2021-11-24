import pika, json

params = pika.URLParameters('amqps://zdmvkjvj:I9Vx5TZXS2JLxznWYFD1uNHwrCSHSsob@rattlesnake.rmq.cloudamqp.com/zdmvkjvj')

connection = pika.BlockingConnection(params)

channel = connection.channel()


def publish(method, body):
    properties = pika.BasicProperties(method)
    channel.basic_publish(exchange='', routing_key='main', body=json.dumps(body), properties=properties)
