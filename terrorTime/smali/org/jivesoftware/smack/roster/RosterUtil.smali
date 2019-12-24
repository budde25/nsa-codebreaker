.class public Lorg/jivesoftware/smack/roster/RosterUtil;
.super Ljava/lang/Object;
.source "RosterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static askForSubscriptionIfRequired(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;)V
    .locals 2
    .param p0, "roster"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->getEntry(Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smack/roster/RosterEntry;

    move-result-object v0

    .line 120
    .local v0, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/RosterEntry;->canSeeHisPresence()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/RosterEntry;->isSubscriptionPending()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->sendSubscriptionRequest(Lorg/jxmpp/jid/BareJid;)V

    .line 123
    :cond_1
    return-void
.end method

.method public static ensureNotSubscribed(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;)V
    .locals 2
    .param p0, "roster"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->getEntry(Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smack/roster/RosterEntry;

    move-result-object v0

    .line 139
    .local v0, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/RosterEntry;->canSeeMyPresence()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/RosterEntry;->cancelSubscription()V

    .line 142
    :cond_0
    return-void
.end method

.method public static ensureNotSubscribedToEachOther(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .param p0, "connectionOne"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "connectionTwo"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lorg/jivesoftware/smack/roster/Roster;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/roster/Roster;

    move-result-object v0

    .line 128
    .local v0, "rosterOne":Lorg/jivesoftware/smack/roster/Roster;
    invoke-interface {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    invoke-interface {v1}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    .line 129
    .local v1, "jidOne":Lorg/jxmpp/jid/BareJid;
    invoke-static {p1}, Lorg/jivesoftware/smack/roster/Roster;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/roster/Roster;

    move-result-object v2

    .line 130
    .local v2, "rosterTwo":Lorg/jivesoftware/smack/roster/Roster;
    invoke-interface {p1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    invoke-interface {v3}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    .line 132
    .local v3, "jidTwo":Lorg/jxmpp/jid/BareJid;
    invoke-static {v0, v3}, Lorg/jivesoftware/smack/roster/RosterUtil;->ensureNotSubscribed(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;)V

    .line 133
    invoke-static {v2, v1}, Lorg/jivesoftware/smack/roster/RosterUtil;->ensureNotSubscribed(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;)V

    .line 134
    return-void
.end method

.method public static ensureSubscribed(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/XMPPConnection;J)V
    .locals 0
    .param p0, "connectionOne"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "connectionTwo"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 146
    invoke-static {p0, p1, p2, p3}, Lorg/jivesoftware/smack/roster/RosterUtil;->ensureSubscribedTo(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/XMPPConnection;J)V

    .line 147
    invoke-static {p1, p0, p2, p3}, Lorg/jivesoftware/smack/roster/RosterUtil;->ensureSubscribedTo(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/XMPPConnection;J)V

    .line 148
    return-void
.end method

.method public static ensureSubscribedTo(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/XMPPConnection;J)V
    .locals 3
    .param p0, "connectionOne"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "connectionTwo"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 153
    .local v0, "deadline":Ljava/util/Date;
    invoke-static {p0, p1, v0}, Lorg/jivesoftware/smack/roster/RosterUtil;->ensureSubscribedTo(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/XMPPConnection;Ljava/util/Date;)V

    .line 154
    return-void
.end method

.method public static ensureSubscribedTo(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/XMPPConnection;Ljava/util/Date;)V
    .locals 6
    .param p0, "connectionOne"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "connectionTwo"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lorg/jivesoftware/smack/roster/Roster;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/roster/Roster;

    move-result-object v0

    .line 160
    .local v0, "rosterOne":Lorg/jivesoftware/smack/roster/Roster;
    invoke-interface {p1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    invoke-interface {v1}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    .line 162
    .local v1, "jidTwo":Lorg/jxmpp/jid/BareJid;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/roster/Roster;->iAmSubscribedTo(Lorg/jxmpp/jid/Jid;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-interface {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    .line 166
    .local v2, "jidOne":Lorg/jxmpp/jid/BareJid;
    new-instance v3, Lorg/jivesoftware/smack/roster/RosterUtil$2;

    invoke-direct {v3, v2}, Lorg/jivesoftware/smack/roster/RosterUtil$2;-><init>(Lorg/jxmpp/jid/BareJid;)V

    .line 175
    .local v3, "subscribeListener":Lorg/jivesoftware/smack/roster/SubscribeListener;
    invoke-static {p1}, Lorg/jivesoftware/smack/roster/Roster;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/roster/Roster;

    move-result-object v4

    .line 177
    .local v4, "rosterTwo":Lorg/jivesoftware/smack/roster/Roster;
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/roster/Roster;->addSubscribeListener(Lorg/jivesoftware/smack/roster/SubscribeListener;)Z

    .line 179
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/roster/Roster;->sendSubscriptionRequest(Lorg/jxmpp/jid/BareJid;)V

    .line 180
    invoke-static {v4, v2, p2}, Lorg/jivesoftware/smack/roster/RosterUtil;->waitUntilOtherEntityIsSubscribed(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/roster/Roster;->removeSubscribeListener(Lorg/jivesoftware/smack/roster/SubscribeListener;)Z

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v5

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/roster/Roster;->removeSubscribeListener(Lorg/jivesoftware/smack/roster/SubscribeListener;)Z

    throw v5
.end method

.method public static preApproveSubscriptionIfRequiredAndPossible(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;)V
    .locals 3
    .param p0, "roster"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->isSubscriptionPreApprovalSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->getEntry(Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smack/roster/RosterEntry;

    move-result-object v0

    .line 107
    .local v0, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/RosterEntry;->canSeeMyPresence()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/RosterEntry;->isApproved()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->preApprove(Lorg/jxmpp/jid/BareJid;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    nop

    .line 115
    :cond_2
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static waitUntilOtherEntityIsSubscribed(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;J)V
    .locals 3
    .param p0, "roster"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "otherEntity"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 40
    .local v0, "deadline":Ljava/util/Date;
    invoke-static {p0, p1, v0}, Lorg/jivesoftware/smack/roster/RosterUtil;->waitUntilOtherEntityIsSubscribed(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;Ljava/util/Date;)V

    .line 41
    return-void
.end method

.method public static waitUntilOtherEntityIsSubscribed(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;Ljava/util/Date;)V
    .locals 5
    .param p0, "roster"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "otherEntity"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 46
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    .line 47
    .local v1, "maybeSubscribed":Ljava/util/concurrent/locks/Condition;
    new-instance v2, Lorg/jivesoftware/smack/roster/RosterUtil$1;

    invoke-direct {v2, v0, v1}, Lorg/jivesoftware/smack/roster/RosterUtil$1;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)V

    .line 70
    .local v2, "rosterListener":Lorg/jivesoftware/smack/roster/RosterListener;
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/roster/Roster;->addRosterListener(Lorg/jivesoftware/smack/roster/RosterListener;)Z

    .line 72
    const/4 v3, 0x1

    .line 74
    .local v3, "stillWaiting":Z
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 76
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->isSubscribedToMyPresence(Lorg/jxmpp/jid/Jid;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 77
    if-eqz v3, :cond_0

    .line 80
    invoke-interface {v1, p2}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v4

    move v3, v4

    goto :goto_0

    .line 78
    :cond_0
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v1    # "maybeSubscribed":Ljava/util/concurrent/locks/Condition;
    .end local v2    # "rosterListener":Lorg/jivesoftware/smack/roster/RosterListener;
    .end local v3    # "stillWaiting":Z
    .end local p0    # "roster":Lorg/jivesoftware/smack/roster/Roster;
    .end local p1    # "otherEntity":Lorg/jxmpp/jid/BareJid;
    .end local p2    # "deadline":Ljava/util/Date;
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .restart local v0    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v1    # "maybeSubscribed":Ljava/util/concurrent/locks/Condition;
    .restart local v2    # "rosterListener":Lorg/jivesoftware/smack/roster/RosterListener;
    .restart local v3    # "stillWaiting":Z
    .restart local p0    # "roster":Lorg/jivesoftware/smack/roster/Roster;
    .restart local p1    # "otherEntity":Lorg/jxmpp/jid/BareJid;
    .restart local p2    # "deadline":Ljava/util/Date;
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 86
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/roster/Roster;->removeRosterListener(Lorg/jivesoftware/smack/roster/RosterListener;)Z

    .line 87
    nop

    .line 88
    return-void

    .line 84
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 86
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/roster/Roster;->removeRosterListener(Lorg/jivesoftware/smack/roster/RosterListener;)Z

    throw v4
.end method
