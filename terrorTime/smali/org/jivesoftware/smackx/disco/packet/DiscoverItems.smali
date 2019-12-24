.class public Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "DiscoverItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/disco#items"


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;",
            ">;"
        }
    .end annotation
.end field

.field private node:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/disco#items"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->items:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public addItem(Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;)V
    .locals 1
    .param p1, "item"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addItems(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "itemsToAdd":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;>;"
    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 67
    .local v1, "i":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->addItem(Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;)V

    .line 68
    .end local v1    # "i":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 3
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 109
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "node"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 110
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 112
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 113
    .local v1, "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->toXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 114
    .end local v1    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    goto :goto_0

    .line 116
    :cond_0
    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->items:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->node:Ljava/lang/String;

    return-object v0
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->node:Ljava/lang/String;

    .line 105
    return-void
.end method
