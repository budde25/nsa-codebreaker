.class public Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;
.super Ljava/lang/Object;
.source "OfflineMessageHeader.java"


# instance fields
.field private jid:Ljava/lang/String;

.field private stamp:Ljava/lang/String;

.field private user:Lorg/jxmpp/jid/Jid;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;)V
    .locals 1
    .param p1, "item"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;->user:Lorg/jxmpp/jid/Jid;

    .line 52
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;->jid:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getNode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;->stamp:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getJid()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getStamp()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;->stamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;->user:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method
