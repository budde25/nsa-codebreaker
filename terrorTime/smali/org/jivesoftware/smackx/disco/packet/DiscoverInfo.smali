.class public Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "DiscoverInfo.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/TypedCloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;,
        Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/packet/IQ;",
        "Lorg/jivesoftware/smack/util/TypedCloneable<",
        "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/disco#info"


# instance fields
.field private containsDuplicateFeatures:Z

.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final featuresSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;",
            ">;"
        }
    .end annotation
.end field

.field private final identitiesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private node:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/disco#info"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->features:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->featuresSet:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identities:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identitiesSet:Ljava/util/Set;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V
    .locals 3
    .param p1, "d"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 65
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->features:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->featuresSet:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identities:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identitiesSet:Ljava/util/Set;

    .line 68
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 71
    iget-object v0, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;

    .line 72
    .local v1, "f":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;->clone()Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addFeature(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;)Z

    .line 73
    .end local v1    # "f":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;
    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 77
    .local v1, "i":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->clone()Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addIdentity(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)V

    .line 78
    .end local v1    # "i":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    goto :goto_1

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public addFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .line 88
    new-instance v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addFeature(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;)Z

    move-result v0

    return v0
.end method

.method public addFeature(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;)Z
    .locals 2
    .param p1, "feature"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;

    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->featuresSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    .local v0, "featureIsNew":Z
    if-nez v0, :cond_0

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsDuplicateFeatures:Z

    .line 109
    :cond_0
    return v0
.end method

.method public addFeatures(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "featuresToAdd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addFeature(Ljava/lang/String;)Z

    .line 100
    .end local v1    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public addIdentities(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "identitiesToAdd":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 139
    .local v1, "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addIdentity(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)V

    .line 140
    .end local v1    # "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method

.method public addIdentity(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)V
    .locals 2
    .param p1, "identity"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 127
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identitiesSet:Ljava/util/Set;

    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->access$000(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->clone()Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 1

    .line 259
    new-instance v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;-><init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V

    return-object v0
.end method

.method public containsDuplicateFeatures()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsDuplicateFeatures:Z

    return v0
.end method

.method public containsDuplicateIdentities()Z
    .locals 6

    .line 237
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 238
    .local v0, "checkedIdentities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 239
    .local v2, "i":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 240
    .local v4, "i2":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    const/4 v1, 0x1

    return v1

    .line 242
    .end local v4    # "i2":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    :cond_0
    goto :goto_1

    .line 243
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v2    # "i":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    goto :goto_0

    .line 245
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public containsFeature(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/CharSequence;

    .line 214
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->features:Ljava/util/List;

    new-instance v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->features:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 3
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 219
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "node"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 220
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 221
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 222
    .local v1, "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->toXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 223
    .end local v1    # "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;

    .line 225
    .local v1, "feature":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;->toXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 226
    .end local v1    # "feature":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;
    goto :goto_1

    .line 228
    :cond_1
    return-object p1
.end method

.method public getIdentities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdentities(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 174
    .local v2, "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v2    # "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    :cond_0
    goto :goto_0

    .line 178
    :cond_1
    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->node:Ljava/lang/String;

    return-object v0
.end method

.method public hasIdentity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 160
    invoke-static {p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->identitiesSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->node:Ljava/lang/String;

    .line 205
    return-void
.end method
