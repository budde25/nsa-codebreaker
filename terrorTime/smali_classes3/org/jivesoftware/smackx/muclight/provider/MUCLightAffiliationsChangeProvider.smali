.class public Lorg/jivesoftware/smackx/muclight/provider/MUCLightAffiliationsChangeProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "MUCLightAffiliationsChangeProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
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

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/muclight/provider/MUCLightAffiliationsChangeProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "affiliations":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    const/4 v1, 0x0

    .line 42
    .local v1, "prevVersion":Ljava/lang/String;
    const/4 v2, 0x0

    .line 45
    .local v2, "version":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 47
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 49
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "prev-version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 57
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    nop

    .line 59
    const-string v4, ""

    const-string v5, "affiliation"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    move-result-object v4

    .line 60
    .local v4, "mucLightAffiliation":Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v5

    .line 61
    .local v5, "jid":Lorg/jxmpp/jid/Jid;
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v4    # "mucLightAffiliation":Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;
    .end local v5    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_1

    .line 64
    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 65
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 66
    nop

    .line 71
    .end local v3    # "eventType":I
    new-instance v3, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;

    invoke-direct {v3, v0, v1, v2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;-><init>(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 69
    :cond_3
    :goto_1
    goto :goto_0
.end method
