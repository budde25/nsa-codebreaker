.class public Lorg/jivesoftware/smackx/pubsub/Affiliation;
.super Ljava/lang/Object;
.source "Affiliation.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;,
        Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ELEMENT:Ljava/lang/String; = "affiliation"


# instance fields
.field private final affiliation:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

.field private final jid:Lorg/jxmpp/jid/BareJid;

.field private final namespace:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

.field private final node:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "affiliation"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    .line 78
    if-nez p2, :cond_0

    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/pubsub/Affiliation;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "affiliation"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    .param p3, "namespace"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "node must not be null or empty"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->affiliation:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->jid:Lorg/jxmpp/jid/BareJid;

    .line 92
    invoke-static {p3}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->namespace:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "affiliation"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    .line 102
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/pubsub/Affiliation;-><init>(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "affiliation"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    .param p3, "namespace"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->jid:Lorg/jxmpp/jid/BareJid;

    .line 107
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->affiliation:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->namespace:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    .line 112
    return-void
.end method


# virtual methods
.method public getAffiliation()Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->affiliation:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 150
    const-string v0, "affiliation"

    return-object v0
.end method

.method public getJid()Lorg/jxmpp/jid/BareJid;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->jid:Lorg/jxmpp/jid/BareJid;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->getPubSubNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->getNode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPubSubNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->namespace:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    iget-object v0, v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->getAffiliation()Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    move-result-object v0

    return-object v0
.end method

.method public isAffiliationModification()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->jid:Lorg/jxmpp/jid/BareJid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->affiliation:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    if-eqz v0, :cond_0

    .line 170
    nop

    .line 171
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 178
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 179
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    const-string v2, "node"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 180
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->jid:Lorg/jxmpp/jid/BareJid;

    const-string v2, "jid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 181
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->affiliation:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    const-string v2, "affiliation"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 182
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 183
    return-object v0
.end method
