.class Lorg/jivesoftware/smackx/caps/EntityCapsManager$2;
.super Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;
.source "EntityCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/caps/EntityCapsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 134
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getDiscoverInfoByUser(Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 4
    .param p1, "serviceDiscoveryManager"    # Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .param p2, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 137
    invoke-static {p2}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->getDiscoverInfoByUser(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    .line 138
    .local v0, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    if-eqz v0, :cond_0

    .line 139
    return-object v0

    .line 142
    :cond_0
    invoke-static {p2}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->getNodeVerHashByJid(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;

    move-result-object v1

    .line 143
    .local v1, "nodeVerHash":Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 144
    return-object v2

    .line 148
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->getNodeVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v2
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 152
    nop

    .line 154
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->verifyDiscoverInfoVersion(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->getNodeVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V

    .line 160
    :cond_2
    return-object v0

    .line 149
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/Exception;
    :goto_0
    return-object v2
.end method
