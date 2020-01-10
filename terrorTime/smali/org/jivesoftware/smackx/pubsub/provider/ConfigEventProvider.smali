.class public Lorg/jivesoftware/smackx/pubsub/provider/ConfigEventProvider;
.super Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider;
.source "ConfigEventProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider<",
        "Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;",
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/pubsub/provider/ConfigEventProvider;->createReturnExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;

    move-result-object p1

    return-object p1
.end method

.method protected createReturnExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;
    .locals 4
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
            "Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;"
        }
    .end annotation

    .line 38
    .local p3, "attMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "content":Ljava/util/List;, "Ljava/util/List<+Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "node"

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/ConfigureForm;)V

    return-object v0
.end method
