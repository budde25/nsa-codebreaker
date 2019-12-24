.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightAffiliationsIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCLightAffiliationsIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:muclight:0#affiliations"


# instance fields
.field private affiliations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;"
        }
    .end annotation
.end field

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p2, "affiliations":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    const-string v0, "query"

    const-string v1, "urn:xmpp:muclight:0#affiliations"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightAffiliationsIQ;->version:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightAffiliationsIQ;->affiliations:Ljava/util/HashMap;

    .line 55
    return-void
.end method


# virtual methods
.method public getAffiliations()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightAffiliationsIQ;->affiliations:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 5
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 59
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightAffiliationsIQ;->version:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightAffiliationsIQ;->affiliations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    new-instance v2, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jxmpp/jid/Jid;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;)V

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 66
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    goto :goto_0

    .line 68
    :cond_0
    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightAffiliationsIQ;->version:Ljava/lang/String;

    return-object v0
.end method
