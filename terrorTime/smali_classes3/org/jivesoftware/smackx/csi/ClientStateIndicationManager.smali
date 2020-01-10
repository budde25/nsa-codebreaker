.class public Lorg/jivesoftware/smackx/csi/ClientStateIndicationManager;
.super Ljava/lang/Object;
.source "ClientStateIndicationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static active(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lorg/jivesoftware/smackx/csi/ClientStateIndicationManager;->throwIaeIfNotSupported(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 34
    sget-object v0, Lorg/jivesoftware/smackx/csi/packet/ClientStateIndication$Active;->INSTANCE:Lorg/jivesoftware/smackx/csi/packet/ClientStateIndication$Active;

    invoke-interface {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendNonza(Lorg/jivesoftware/smack/packet/Nonza;)V

    .line 35
    return-void
.end method

.method public static inactive(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lorg/jivesoftware/smackx/csi/ClientStateIndicationManager;->throwIaeIfNotSupported(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 39
    sget-object v0, Lorg/jivesoftware/smackx/csi/packet/ClientStateIndication$Inactive;->INSTANCE:Lorg/jivesoftware/smackx/csi/packet/ClientStateIndication$Inactive;

    invoke-interface {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendNonza(Lorg/jivesoftware/smack/packet/Nonza;)V

    .line 40
    return-void
.end method

.method public static isSupported(Lorg/jivesoftware/smack/XMPPConnection;)Z
    .locals 2
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 43
    const-string v0, "csi"

    const-string v1, "urn:xmpp:csi:0"

    invoke-interface {p0, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static throwIaeIfNotSupported(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 47
    invoke-static {p0}, Lorg/jivesoftware/smackx/csi/ClientStateIndicationManager;->isSupported(Lorg/jivesoftware/smack/XMPPConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client State Indication not supported by server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
