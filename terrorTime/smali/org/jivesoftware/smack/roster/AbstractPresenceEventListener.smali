.class public abstract Lorg/jivesoftware/smack/roster/AbstractPresenceEventListener;
.super Ljava/lang/Object;
.source "AbstractPresenceEventListener.java"

# interfaces
.implements Lorg/jivesoftware/smack/roster/PresenceEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public presenceAvailable(Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .param p1, "address"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "availablePresence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 29
    return-void
.end method

.method public presenceError(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .param p1, "address"    # Lorg/jxmpp/jid/Jid;
    .param p2, "errorPresence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 37
    return-void
.end method

.method public presenceSubscribed(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .param p1, "address"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "subscribedPresence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 41
    return-void
.end method

.method public presenceUnavailable(Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .param p1, "address"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "presence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 33
    return-void
.end method

.method public presenceUnsubscribed(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .param p1, "address"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "unsubscribedPresence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 45
    return-void
.end method
