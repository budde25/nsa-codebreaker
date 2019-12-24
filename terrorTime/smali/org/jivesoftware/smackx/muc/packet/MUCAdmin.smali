.class public Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCAdmin.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/muc#admin"


# instance fields
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

    const-string v1, "http://jabber.org/protocol/muc#admin"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->items:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public addItem(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V
    .locals 2
    .param p1, "item"    # Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->items:Ljava/util/List;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 4
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 70
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->items:Ljava/util/List;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    .line 74
    .local v2, "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 75
    nop

    .end local v2    # "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    goto :goto_0

    .line 76
    :cond_0
    monitor-exit v0

    .line 78
    return-object p1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->items:Ljava/util/List;

    monitor-enter v0

    .line 53
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->items:Ljava/util/List;

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
