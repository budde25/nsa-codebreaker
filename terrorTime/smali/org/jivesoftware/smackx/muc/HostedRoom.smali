.class public Lorg/jivesoftware/smackx/muc/HostedRoom;
.super Ljava/lang/Object;
.source "HostedRoom.java"


# instance fields
.field private final jid:Lorg/jxmpp/jid/EntityBareJid;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;)V
    .locals 2
    .param p1, "item"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    const-string v1, "The discovered item must be an entity bare JID"

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/EntityBareJid;

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/HostedRoom;->jid:Lorg/jxmpp/jid/EntityBareJid;

    .line 45
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/HostedRoom;->name:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getJid()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/HostedRoom;->jid:Lorg/jxmpp/jid/EntityBareJid;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/HostedRoom;->name:Ljava/lang/String;

    return-object v0
.end method
