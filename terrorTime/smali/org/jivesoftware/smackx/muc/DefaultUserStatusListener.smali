.class public Lorg/jivesoftware/smackx/muc/DefaultUserStatusListener;
.super Ljava/lang/Object;
.source "DefaultUserStatusListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/muc/UserStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adminGranted()V
    .locals 0

    .line 75
    return-void
.end method

.method public adminRevoked()V
    .locals 0

    .line 79
    return-void
.end method

.method public banned(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
    .locals 0
    .param p1, "actor"    # Lorg/jxmpp/jid/Jid;
    .param p2, "reason"    # Ljava/lang/String;

    .line 47
    return-void
.end method

.method public kicked(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
    .locals 0
    .param p1, "actor"    # Lorg/jxmpp/jid/Jid;
    .param p2, "reason"    # Ljava/lang/String;

    .line 35
    return-void
.end method

.method public membershipGranted()V
    .locals 0

    .line 51
    return-void
.end method

.method public membershipRevoked()V
    .locals 0

    .line 55
    return-void
.end method

.method public moderatorGranted()V
    .locals 0

    .line 59
    return-void
.end method

.method public moderatorRevoked()V
    .locals 0

    .line 63
    return-void
.end method

.method public ownershipGranted()V
    .locals 0

    .line 67
    return-void
.end method

.method public ownershipRevoked()V
    .locals 0

    .line 71
    return-void
.end method

.method public roomDestroyed(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;)V
    .locals 0
    .param p1, "alternateMUC"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .param p2, "reason"    # Ljava/lang/String;

    .line 83
    return-void
.end method

.method public voiceGranted()V
    .locals 0

    .line 39
    return-void
.end method

.method public voiceRevoked()V
    .locals 0

    .line 43
    return-void
.end method
