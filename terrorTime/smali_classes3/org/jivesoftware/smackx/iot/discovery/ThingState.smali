.class public Lorg/jivesoftware/smackx/iot/discovery/ThingState;
.super Ljava/lang/Object;
.source "ThingState.java"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/iot/discovery/ThingStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

.field private owner:Lorg/jxmpp/jid/BareJid;

.field private registry:Lorg/jxmpp/jid/BareJid;

.field private removed:Z


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 1
    .param p1, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->listeners:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/iot/discovery/ThingState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    .line 28
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->listeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    return-object v0
.end method

.method public getOwner()Lorg/jxmpp/jid/BareJid;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->owner:Lorg/jxmpp/jid/BareJid;

    return-object v0
.end method

.method public getRegistry()Lorg/jxmpp/jid/BareJid;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->registry:Lorg/jxmpp/jid/BareJid;

    return-object v0
.end method

.method public isOwned()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->owner:Lorg/jxmpp/jid/BareJid;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->removed:Z

    return v0
.end method

.method public removeThingStateChangeListener(Lorg/jivesoftware/smackx/iot/discovery/ThingStateChangeListener;)Z
    .locals 1
    .param p1, "thingStateChangeListener"    # Lorg/jivesoftware/smackx/iot/discovery/ThingStateChangeListener;

    .line 95
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setOwner(Lorg/jxmpp/jid/BareJid;)V
    .locals 1
    .param p1, "owner"    # Lorg/jxmpp/jid/BareJid;

    .line 51
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->owner:Lorg/jxmpp/jid/BareJid;

    .line 52
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/ThingState$1;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/iot/discovery/ThingState$1;-><init>(Lorg/jivesoftware/smackx/iot/discovery/ThingState;Lorg/jxmpp/jid/BareJid;)V

    invoke-static {v0}, Lorg/jivesoftware/smack/util/Async;->go(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 60
    return-void
.end method

.method setRegistry(Lorg/jxmpp/jid/BareJid;)V
    .locals 0
    .param p1, "registry"    # Lorg/jxmpp/jid/BareJid;

    .line 43
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->registry:Lorg/jxmpp/jid/BareJid;

    .line 44
    return-void
.end method

.method setRemoved()V
    .locals 1

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->removed:Z

    .line 68
    return-void
.end method

.method public setThingStateChangeListener(Lorg/jivesoftware/smackx/iot/discovery/ThingStateChangeListener;)Z
    .locals 1
    .param p1, "thingStateChangeListener"    # Lorg/jivesoftware/smackx/iot/discovery/ThingStateChangeListener;

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setUnowned()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->owner:Lorg/jxmpp/jid/BareJid;

    .line 64
    return-void
.end method

.method setUnregistered()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->registry:Lorg/jxmpp/jid/BareJid;

    .line 48
    return-void
.end method
