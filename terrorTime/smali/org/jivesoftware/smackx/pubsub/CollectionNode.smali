.class public Lorg/jivesoftware/smackx/pubsub/CollectionNode;
.super Lorg/jivesoftware/smackx/pubsub/Node;
.source "CollectionNode.java"


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/pubsub/PubSubManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "pubSubManager"    # Lorg/jivesoftware/smackx/pubsub/PubSubManager;
    .param p2, "nodeId"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/Node;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubManager;Ljava/lang/String;)V

    .line 23
    return-void
.end method
