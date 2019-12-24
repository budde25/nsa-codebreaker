.class public abstract Lorg/jivesoftware/smackx/jingle/JingleSession;
.super Ljava/lang/Object;
.source "JingleSession.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;


# instance fields
.field protected final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContent;",
            ">;"
        }
    .end annotation
.end field

.field protected failedTransportMethods:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final local:Lorg/jxmpp/jid/FullJid;

.field protected queued:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final remote:Lorg/jxmpp/jid/FullJid;

.field protected final role:Lorg/jivesoftware/smackx/jingle/Role;

.field protected final sid:Ljava/lang/String;

.field protected transportSession:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smackx/jingle/Role;Ljava/lang/String;)V
    .locals 6
    .param p1, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "responder"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "role"    # Lorg/jivesoftware/smackx/jingle/Role;
    .param p4, "sid"    # Ljava/lang/String;

    .line 49
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/jingle/JingleSession;-><init>(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smackx/jingle/Role;Ljava/lang/String;Ljava/util/List;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smackx/jingle/Role;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "responder"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "role"    # Lorg/jivesoftware/smackx/jingle/Role;
    .param p4, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/FullJid;",
            "Lorg/jxmpp/jid/FullJid;",
            "Lorg/jivesoftware/smackx/jingle/Role;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContent;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p5, "contents":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/jingle/element/JingleContent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->failedTransportMethods:Ljava/util/HashSet;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contents:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->queued:Ljava/util/ArrayList;

    .line 53
    sget-object v0, Lorg/jivesoftware/smackx/jingle/Role;->initiator:Lorg/jivesoftware/smackx/jingle/Role;

    if-ne p3, v0, :cond_0

    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->local:Lorg/jxmpp/jid/FullJid;

    .line 55
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->remote:Lorg/jxmpp/jid/FullJid;

    goto :goto_0

    .line 57
    :cond_0
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->local:Lorg/jxmpp/jid/FullJid;

    .line 58
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->remote:Lorg/jxmpp/jid/FullJid;

    .line 60
    :goto_0
    iput-object p4, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->role:Lorg/jivesoftware/smackx/jingle/Role;

    .line 63
    if-eqz p5, :cond_1

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contents:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 122
    instance-of v0, p1, Lorg/jivesoftware/smackx/jingle/JingleSession;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    return v1

    .line 126
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 127
    .local v0, "otherJingleSession":Lorg/jivesoftware/smackx/jingle/JingleSession;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Lorg/jxmpp/jid/FullJid;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Lorg/jxmpp/jid/FullJid;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jxmpp/jid/FullJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getResponder()Lorg/jxmpp/jid/FullJid;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getResponder()Lorg/jxmpp/jid/FullJid;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jxmpp/jid/FullJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 127
    :goto_0
    return v1
.end method

.method public abstract getConnection()Lorg/jivesoftware/smack/XMPPConnection;
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContent;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contents:Ljava/util/List;

    return-object v0
.end method

.method public getFullJidAndSessionId()Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;
    .locals 3

    .line 97
    new-instance v0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->remote:Lorg/jxmpp/jid/FullJid;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;-><init>(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInitiator()Lorg/jxmpp/jid/FullJid;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->isInitiator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->local:Lorg/jxmpp/jid/FullJid;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->remote:Lorg/jxmpp/jid/FullJid;

    :goto_0
    return-object v0
.end method

.method public getLocal()Lorg/jxmpp/jid/FullJid;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->local:Lorg/jxmpp/jid/FullJid;

    return-object v0
.end method

.method public getRemote()Lorg/jxmpp/jid/FullJid;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->remote:Lorg/jxmpp/jid/FullJid;

    return-object v0
.end method

.method public getResponder()Lorg/jxmpp/jid/FullJid;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->isResponder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->local:Lorg/jxmpp/jid/FullJid;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->remote:Lorg/jxmpp/jid/FullJid;

    :goto_0
    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportSession()Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<",
            "*>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->transportSession:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;

    return-object v0
.end method

.method protected handleContentAccept(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "contentAccept"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 191
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleContentAdd(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "contentAdd"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 187
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleContentModify(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "contentModify"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 195
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleContentReject(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "contentReject"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 199
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleContentRemove(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "contentRemove"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 203
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleDescriptionInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "descriptionInfo"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 207
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method public handleJingleSessionRequest(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "jingle"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 134
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession$1;->$SwitchMap$org$jivesoftware$smackx$jingle$element$JingleAction:[I

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getAction()Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 164
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleTransportReplace(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 162
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleSessionTerminate(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 160
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleTransportReject(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 158
    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleSessionInitiate(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 156
    :pswitch_4
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->transportSession:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;->handleTransportInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 154
    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleTransportAccept(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 152
    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleSessionAccept(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 150
    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleSecurityInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 148
    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleSessionInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 146
    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleDescriptionInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 144
    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleContentRemove(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 142
    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleContentReject(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 140
    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleContentModify(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 138
    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleContentAdd(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    .line 136
    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->handleContentAccept(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSecurityInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "securityInfo"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 211
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleSessionAccept(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "sessionAccept"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 183
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleSessionInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "sessionInfo"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 179
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleSessionInitiate(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "sessionInitiate"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 171
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleSessionTerminate(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "sessionTerminate"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 175
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleTransportAccept(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "transportAccept"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 215
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleTransportReject(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "transportReject"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 223
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected handleTransportReplace(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "transportReplace"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 219
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 114
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Lorg/jxmpp/jid/FullJid;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 115
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getResponder()Lorg/jxmpp/jid/FullJid;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 116
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 117
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    return v0
.end method

.method public isInitiator()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->role:Lorg/jivesoftware/smackx/jingle/Role;

    sget-object v1, Lorg/jivesoftware/smackx/jingle/Role;->initiator:Lorg/jivesoftware/smackx/jingle/Role;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResponder()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->role:Lorg/jivesoftware/smackx/jingle/Role;

    sget-object v1, Lorg/jivesoftware/smackx/jingle/Role;->responder:Lorg/jivesoftware/smackx/jingle/Role;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onTransportMethodFailed(Ljava/lang/String;)V
.end method

.method protected setTransportSession(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<",
            "*>;)V"
        }
    .end annotation

    .line 109
    .local p1, "transportSession":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<*>;"
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->transportSession:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;

    .line 110
    return-void
.end method
