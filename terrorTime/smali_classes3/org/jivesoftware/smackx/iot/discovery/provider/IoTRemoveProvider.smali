.class public Lorg/jivesoftware/smackx/iot/discovery/provider/IoTRemoveProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "IoTRemoveProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
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

    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iot/discovery/provider/IoTRemoveProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 36
    .local v0, "jid":Lorg/jxmpp/jid/Jid;
    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->hasResource()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    .line 40
    .local v1, "bareJid":Lorg/jxmpp/jid/BareJid;
    invoke-static {p1}, Lorg/jivesoftware/smackx/iot/parser/NodeInfoParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v2

    .line 41
    .local v2, "nodeInfo":Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    new-instance v3, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;

    invoke-direct {v3, v1, v2}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;-><init>(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    return-object v3

    .line 37
    .end local v1    # "bareJid":Lorg/jxmpp/jid/BareJid;
    .end local v2    # "nodeInfo":Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "JID must be without resourcepart"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
