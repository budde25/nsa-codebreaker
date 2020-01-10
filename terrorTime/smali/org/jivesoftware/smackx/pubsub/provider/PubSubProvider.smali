.class public Lorg/jivesoftware/smackx/pubsub/provider/PubSubProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "PubSubProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/pubsub/packet/PubSub;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/provider/PubSubProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "namespace":Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->valueOfFromXmlns(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v1

    .line 40
    .local v1, "pubSubNamespace":Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;-><init>(Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    .line 43
    .local v2, "pubsub":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 44
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 50
    nop

    .line 55
    .end local v3    # "eventType":I
    return-object v2

    .line 46
    .restart local v3    # "eventType":I
    :cond_1
    invoke-static {v2, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->addExtensionElement(Lorg/jivesoftware/smack/packet/Stanza;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 47
    nop

    .line 54
    .end local v3    # "eventType":I
    :cond_2
    :goto_1
    goto :goto_0
.end method
