.class public final Lorg/jivesoftware/smack/chat2/Chat;
.super Lorg/jivesoftware/smack/Manager;
.source "Chat.java"


# instance fields
.field private final jid:Lorg/jxmpp/jid/EntityBareJid;

.field lastPresenceOfLockedResource:Lorg/jivesoftware/smack/packet/Presence;

.field volatile lockedResource:Lorg/jxmpp/jid/EntityFullJid;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/EntityBareJid;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "jid"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 38
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 39
    iput-object p2, p0, Lorg/jivesoftware/smack/chat2/Chat;->jid:Lorg/jxmpp/jid/EntityBareJid;

    .line 40
    return-void
.end method


# virtual methods
.method public getXmppAddressOfChatPartner()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smack/chat2/Chat;->jid:Lorg/jxmpp/jid/EntityBareJid;

    return-object v0
.end method

.method public send(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 44
    .local v0, "stanza":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/CharSequence;)V

    .line 45
    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 46
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/chat2/Chat;->send(Lorg/jivesoftware/smack/packet/Message;)V

    .line 47
    return-void
.end method

.method public send(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 2
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 50
    sget-object v0, Lorg/jivesoftware/smack/chat2/Chat$1;->$SwitchMap$org$jivesoftware$smack$packet$Message$Type:[I

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must be of type \'normal\' or \'chat\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    :goto_0
    nop

    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smack/chat2/Chat;->lockedResource:Lorg/jxmpp/jid/EntityFullJid;

    .line 59
    .local v0, "to":Lorg/jxmpp/jid/Jid;
    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smack/chat2/Chat;->jid:Lorg/jxmpp/jid/EntityBareJid;

    .line 62
    :cond_2
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 64
    invoke-virtual {p0}, Lorg/jivesoftware/smack/chat2/Chat;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 65
    return-void
.end method

.method unlockResource()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/chat2/Chat;->lockedResource:Lorg/jxmpp/jid/EntityFullJid;

    .line 73
    iput-object v0, p0, Lorg/jivesoftware/smack/chat2/Chat;->lastPresenceOfLockedResource:Lorg/jivesoftware/smack/packet/Presence;

    .line 74
    return-void
.end method
