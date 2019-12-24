.class public Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "SubscriptionsExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;
    }
.end annotation


# instance fields
.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p2, "subList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Subscription;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    invoke-direct {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;Ljava/lang/String;Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "subList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Subscription;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;Ljava/lang/String;Ljava/util/List;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "subscriptionsNamespace"    # Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;
    .param p2, "nodeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p3, "subList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Subscription;>;"
    iget-object v0, p1, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->items:Ljava/util/List;

    .line 80
    if-eqz p3, :cond_0

    .line 81
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->items:Ljava/util/List;

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public getSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Subscription;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->items:Ljava/util/List;

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->items:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->getNode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, " node=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/pubsub/Subscription;

    .line 110
    .local v3, "item":Lorg/jivesoftware/smackx/pubsub/Subscription;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/pubsub/Subscription;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 111
    .end local v3    # "item":Lorg/jivesoftware/smackx/pubsub/Subscription;
    goto :goto_0

    .line 113
    :cond_2
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 96
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
