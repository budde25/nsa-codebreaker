.class public Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "OfflineMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Provider;,
        Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "offline"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/offline"


# instance fields
.field private fetch:Z

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;",
            ">;"
        }
    .end annotation
.end field

.field private purge:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    const-string v0, "offline"

    const-string v1, "http://jabber.org/protocol/offline"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->items:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->purge:Z

    .line 44
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->fetch:Z

    .line 48
    return-void
.end method


# virtual methods
.method public addItem(Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;)V
    .locals 2
    .param p1, "item"    # Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;

    .line 69
    iget-object v0, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->items:Ljava/util/List;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 4
    .param p1, "buf"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 112
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->items:Ljava/util/List;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;

    .line 116
    .local v2, "item":Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 117
    nop

    .end local v2    # "item":Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;
    goto :goto_0

    .line 118
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->purge:Z

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "<purge/>"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 122
    :cond_1
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->fetch:Z

    if-eqz v0, :cond_2

    .line 123
    const-string v0, "<fetch/>"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 126
    :cond_2
    return-object p1

    .line 118
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
            "Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->items:Ljava/util/List;

    monitor-enter v0

    .line 59
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->items:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFetch()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->fetch:Z

    return v0
.end method

.method public isPurge()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->purge:Z

    return v0
.end method

.method public setFetch(Z)V
    .locals 0
    .param p1, "fetch"    # Z

    .line 107
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->fetch:Z

    .line 108
    return-void
.end method

.method public setPurge(Z)V
    .locals 0
    .param p1, "purge"    # Z

    .line 89
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->purge:Z

    .line 90
    return-void
.end method
