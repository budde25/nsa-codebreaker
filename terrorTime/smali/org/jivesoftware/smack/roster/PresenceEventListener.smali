.class public interface abstract Lorg/jivesoftware/smack/roster/PresenceEventListener;
.super Ljava/lang/Object;
.source "PresenceEventListener.java"


# virtual methods
.method public abstract presenceAvailable(Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smack/packet/Presence;)V
.end method

.method public abstract presenceError(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Presence;)V
.end method

.method public abstract presenceSubscribed(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smack/packet/Presence;)V
.end method

.method public abstract presenceUnavailable(Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smack/packet/Presence;)V
.end method

.method public abstract presenceUnsubscribed(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smack/packet/Presence;)V
.end method
