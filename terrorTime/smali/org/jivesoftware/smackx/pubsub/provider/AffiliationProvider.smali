.class public Lorg/jivesoftware/smackx/pubsub/provider/AffiliationProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "AffiliationProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/pubsub/Affiliation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/provider/AffiliationProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/pubsub/Affiliation;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/pubsub/Affiliation;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    const-string v1, "node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "node":Ljava/lang/String;
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getBareJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v2

    .line 42
    .local v2, "jid":Lorg/jxmpp/jid/BareJid;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "namespaceString":Ljava/lang/String;
    invoke-static {v3}, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->fromXmlns(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    move-result-object v4

    .line 45
    .local v4, "namespace":Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;
    const-string v5, "affiliation"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "affiliationString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 47
    .local v5, "affiliationType":Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    if-eqz v0, :cond_0

    .line 48
    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    move-result-object v5

    .line 51
    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 53
    new-instance v6, Lorg/jivesoftware/smackx/pubsub/Affiliation;

    invoke-direct {v6, v1, v5, v4}, Lorg/jivesoftware/smackx/pubsub/Affiliation;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;)V

    .local v6, "affiliation":Lorg/jivesoftware/smackx/pubsub/Affiliation;
    goto :goto_0

    .line 55
    .end local v6    # "affiliation":Lorg/jivesoftware/smackx/pubsub/Affiliation;
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 56
    new-instance v6, Lorg/jivesoftware/smackx/pubsub/Affiliation;

    invoke-direct {v6, v2, v5, v4}, Lorg/jivesoftware/smackx/pubsub/Affiliation;-><init>(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;)V

    .line 64
    .restart local v6    # "affiliation":Lorg/jivesoftware/smackx/pubsub/Affiliation;
    :goto_0
    return-object v6

    .line 59
    .end local v6    # "affiliation":Lorg/jivesoftware/smackx/pubsub/Affiliation;
    :cond_2
    new-instance v6, Lorg/jivesoftware/smack/SmackException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid affililation. Either one of \'node\' or \'jid\' must be set. Node: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Jid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
