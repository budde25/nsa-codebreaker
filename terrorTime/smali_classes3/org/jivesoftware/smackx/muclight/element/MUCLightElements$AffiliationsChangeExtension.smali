.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;
.super Ljava/lang/Object;
.source "MUCLightElements.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muclight/element/MUCLightElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AffiliationsChangeExtension"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "x"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:muclight:0#affiliations"


# instance fields
.field private final affiliations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;"
        }
    .end annotation
.end field

.field private final prevVersion:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "prevVersion"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    .local p1, "affiliations":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;->affiliations:Ljava/util/HashMap;

    .line 55
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;->prevVersion:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;->version:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 115
    const-string v0, "x"

    const-string v1, "urn:xmpp:muclight:0#affiliations"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;

    return-object v0
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

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;->affiliations:Ljava/util/HashMap;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "x"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "urn:xmpp:muclight:0#affiliations"

    return-object v0
.end method

.method public getPrevVersion()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;->prevVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;->version:Ljava/lang/String;

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 98
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 99
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 101
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;->prevVersion:Ljava/lang/String;

    const-string v2, "prev-version"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 102
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 104
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$AffiliationsChangeExtension;->affiliations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 107
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    new-instance v3, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jxmpp/jid/Jid;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;)V

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 108
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 111
    return-object v0
.end method
