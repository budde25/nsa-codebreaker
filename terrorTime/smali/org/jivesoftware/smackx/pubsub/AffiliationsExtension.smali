.class public Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "AffiliationsExtension.java"


# instance fields
.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation;",
            ">;"
        }
    .end annotation
.end field

.field private final node:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;-><init>(Ljava/util/List;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "subList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Affiliation;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    .local p1, "subList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Affiliation;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    invoke-direct {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;Ljava/util/List;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;Ljava/util/List;)V
    .locals 1
    .param p1, "affiliationsNamespace"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p2, "subList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Affiliation;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;Ljava/util/List;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "affiliationsNamespace"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;
    .param p3, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    .local p2, "subList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Affiliation;>;"
    iget-object v0, p1, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->items:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->items:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->node:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getAffiliations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->items:Ljava/util/List;

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 71
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 72
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->node:Ljava/lang/String;

    const-string v2, "node"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 73
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 74
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 75
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 76
    return-object v0

    .line 66
    .end local v0    # "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
