.class public Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "ItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/pubsub/Item;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

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

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/pubsub/Item;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/pubsub/Item;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "id":Ljava/lang/String;
    const-string v2, "node"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "node":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "xmlns":Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->fromXmlns(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    move-result-object v3

    .line 49
    .local v3, "itemNamespace":Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 51
    .local v4, "tag":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 52
    new-instance v5, Lorg/jivesoftware/smackx/pubsub/Item;

    invoke-direct {v5, v3, v1, v0}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 55
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "payloadElemName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "payloadNS":Ljava/lang/String;
    invoke-static {v5, v6}, Lorg/jivesoftware/smack/provider/ProviderManager;->getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/provider/ExtensionElementProvider;

    move-result-object v7

    .line 59
    .local v7, "extensionProvider":Lorg/jivesoftware/smack/provider/ExtensionElementProvider;, "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    if-nez v7, :cond_1

    .line 61
    const/4 v8, 0x1

    invoke-static {p1, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseElement(Lorg/xmlpull/v1/XmlPullParser;Z)Ljava/lang/CharSequence;

    move-result-object v8

    .line 62
    .local v8, "payloadText":Ljava/lang/CharSequence;
    new-instance v9, Lorg/jivesoftware/smackx/pubsub/PayloadItem;

    new-instance v10, Lorg/jivesoftware/smackx/pubsub/SimplePayload;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/jivesoftware/smackx/pubsub/SimplePayload;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v3, v1, v0, v10}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;-><init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    return-object v9

    .line 65
    .end local v8    # "payloadText":Ljava/lang/CharSequence;
    :cond_1
    new-instance v8, Lorg/jivesoftware/smackx/pubsub/PayloadItem;

    invoke-virtual {v7, p1}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v9

    check-cast v9, Lorg/jivesoftware/smack/packet/ExtensionElement;

    invoke-direct {v8, v3, v1, v0, v9}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;-><init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    return-object v8
.end method
