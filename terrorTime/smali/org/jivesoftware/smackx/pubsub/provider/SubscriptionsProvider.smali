.class public Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionsProvider;
.super Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider;
.source "SubscriptionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider<",
        "Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createReturnExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionsProvider;->createReturnExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;

    move-result-object p1

    return-object p1
.end method

.method protected createReturnExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;
    .locals 3
    .param p1, "currentElement"    # Ljava/lang/String;
    .param p2, "currentNamespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)",
            "Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;"
        }
    .end annotation

    .line 39
    .local p3, "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "content":Ljava/util/List;, "Ljava/util/List<+Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    invoke-static {p2}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->fromXmlns(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    move-result-object v0

    .line 40
    .local v0, "subscriptionsNamespace":Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;
    const-string v1, "node"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    .local v1, "nodeId":Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;

    invoke-direct {v2, v0, v1, p4}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method
