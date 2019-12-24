.class public interface abstract Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
.super Ljava/lang/Object;
.source "ParticipantStatusListener.java"


# virtual methods
.method public abstract adminGranted(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract adminRevoked(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract banned(Lorg/jxmpp/jid/EntityFullJid;Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
.end method

.method public abstract joined(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract kicked(Lorg/jxmpp/jid/EntityFullJid;Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
.end method

.method public abstract left(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract membershipGranted(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract membershipRevoked(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract moderatorGranted(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract moderatorRevoked(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract nicknameChanged(Lorg/jxmpp/jid/EntityFullJid;Lorg/jxmpp/jid/parts/Resourcepart;)V
.end method

.method public abstract ownershipGranted(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract ownershipRevoked(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract voiceGranted(Lorg/jxmpp/jid/EntityFullJid;)V
.end method

.method public abstract voiceRevoked(Lorg/jxmpp/jid/EntityFullJid;)V
.end method
