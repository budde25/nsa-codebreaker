.class public Lorg/jivesoftware/smackx/muc/packet/MUCOwner;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCOwner.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/muc#owner"


# instance fields
.field private destroy:Lorg/jivesoftware/smackx/muc/packet/Destroy;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/packet/MUCItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/muc#owner"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->items:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public addItem(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V
    .locals 2
    .param p1, "item"    # Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->items:Ljava/util/List;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDestroy()Lorg/jivesoftware/smackx/muc/packet/Destroy;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->destroy:Lorg/jivesoftware/smackx/muc/packet/Destroy;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 4
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 92
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->items:Ljava/util/List;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    .line 96
    .local v2, "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 97
    nop

    .end local v2    # "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    goto :goto_0

    .line 98
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->getDestroy()Lorg/jivesoftware/smackx/muc/packet/Destroy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 101
    return-object p1

    .line 98
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/packet/MUCItem;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->items:Ljava/util/List;

    monitor-enter v0

    .line 53
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->items:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDestroy(Lorg/jivesoftware/smackx/muc/packet/Destroy;)V
    .locals 0
    .param p1, "destroy"    # Lorg/jivesoftware/smackx/muc/packet/Destroy;

    .line 76
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->destroy:Lorg/jivesoftware/smackx/muc/packet/Destroy;

    .line 77
    return-void
.end method
