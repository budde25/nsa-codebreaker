.class public Lorg/jivesoftware/smackx/muc/DefaultParticipantStatusListener;
.super Ljava/lang/Object;
.source "DefaultParticipantStatusListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adminGranted(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 85
    return-void
.end method

.method public adminRevoked(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 89
    return-void
.end method

.method public banned(Lorg/jxmpp/jid/EntityFullJid;Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;
    .param p2, "actor"    # Lorg/jxmpp/jid/Jid;
    .param p3, "reason"    # Ljava/lang/String;

    .line 57
    return-void
.end method

.method public joined(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 37
    return-void
.end method

.method public kicked(Lorg/jxmpp/jid/EntityFullJid;Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;
    .param p2, "actor"    # Lorg/jxmpp/jid/Jid;
    .param p3, "reason"    # Ljava/lang/String;

    .line 45
    return-void
.end method

.method public left(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 41
    return-void
.end method

.method public membershipGranted(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 61
    return-void
.end method

.method public membershipRevoked(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 65
    return-void
.end method

.method public moderatorGranted(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 69
    return-void
.end method

.method public moderatorRevoked(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 73
    return-void
.end method

.method public nicknameChanged(Lorg/jxmpp/jid/EntityFullJid;Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;
    .param p2, "newNickname"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 93
    return-void
.end method

.method public ownershipGranted(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 77
    return-void
.end method

.method public ownershipRevoked(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 81
    return-void
.end method

.method public voiceGranted(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 49
    return-void
.end method

.method public voiceRevoked(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "participant"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 53
    return-void
.end method
