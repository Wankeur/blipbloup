#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
from tf2_ros import TransformBroadcaster
from geometry_msgs.msg import TransformStamped
from nav_msgs.msg import Odometry

class OdomFramePublisher(Node):

    def __init__(self):
        super().__init__('odom_frame_publisher')
        
        # Initialiser le transform broadcaster
        self.tf_broadcaster = TransformBroadcaster(self)

        # Créer un subscriber pour le topic /odom
        self.subscription = self.create_subscription(
            Odometry,
            '/odom',
            self.handle_odom,
            10)
        self.subscription  # prevent unused variable warning

    def handle_odom(self, msg: Odometry):
        # Créer et remplir le message de transformation basé sur les données d'odométrie
        t = TransformStamped()

        # En-tête
        t.header.stamp = msg.header.stamp
        t.header.frame_id = 'odom'
        t.child_frame_id = 'base_link'

        # Transformation basée sur la pose de l'odométrie
        t.transform.translation.x = msg.pose.pose.position.x
        t.transform.translation.y = msg.pose.pose.position.y
        t.transform.translation.z = msg.pose.pose.position.z

        # Orientation
        t.transform.rotation = msg.pose.pose.orientation

        # Publier la transformation
        self.tf_broadcaster.sendTransform(t)

def main(args=None):
    rclpy.init(args=args)
    node = OdomFramePublisher()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass
    finally:
        node.destroy_node()
        rclpy.shutdown()

if __name__ == '__main__':
    main()