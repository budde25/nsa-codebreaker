.class public Lorg/jivesoftware/smackx/iot/discovery/provider/IoTDisownProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "IoTDisownProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisown;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
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

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iot/discovery/provider/IoTDisownProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisown;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisown;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 34
    .local v0, "jid":Lorg/jxmpp/jid/Jid;
    invoke-static {p1}, Lorg/jivesoftware/smackx/iot/parser/NodeInfoParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v1

    .line 35
    .local v1, "nodeInfo":Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    new-instance v2, Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisown;

    invoke-direct {v2, v0, v1}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisown;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    return-object v2
.end method
