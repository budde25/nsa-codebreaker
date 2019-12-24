.class public Lorg/jivesoftware/smackx/iot/discovery/provider/IoTDisownedProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "IoTDisownedProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisowned;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
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

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iot/discovery/provider/IoTDisownedProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisowned;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisowned;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lorg/jivesoftware/smackx/iot/parser/NodeInfoParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v0

    .line 32
    .local v0, "nodeInfo":Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    new-instance v1, Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisowned;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisowned;-><init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    return-object v1
.end method
