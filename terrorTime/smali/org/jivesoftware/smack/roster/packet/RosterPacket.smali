.class public Lorg/jivesoftware/smack/roster/packet/RosterPacket;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;,
        Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:iq:roster"


# instance fields
.field private final rosterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;",
            ">;"
        }
    .end annotation
.end field

.field private rosterVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    const-string v0, "query"

    const-string v1, "jabber:iq:roster"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterItems:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public addRosterItem(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)V
    .locals 2
    .param p1, "item"    # Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterItems:Ljava/util/List;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 62
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

    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterVersion:Ljava/lang/String;

    const-string v1, "ver"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 90
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterItems:Ljava/util/List;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 94
    .local v2, "entry":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 95
    nop

    .end local v2    # "entry":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    goto :goto_0

    .line 96
    :cond_0
    monitor-exit v0

    .line 97
    return-object p1

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRosterItemCount()I
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterItems:Ljava/util/List;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRosterItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterItems:Ljava/util/List;

    monitor-enter v0

    .line 83
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterItems:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->rosterVersion:Ljava/lang/String;

    .line 106
    return-void
.end method
