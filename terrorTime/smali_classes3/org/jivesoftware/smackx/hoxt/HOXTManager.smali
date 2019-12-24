.class public Lorg/jivesoftware/smackx/hoxt/HOXTManager;
.super Ljava/lang/Object;
.source "HOXTManager.java"


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:http"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/HOXTManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/hoxt/HOXTManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/XMPPConnection;)Z
    .locals 2
    .param p0, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "urn:xmpp:http"

    invoke-virtual {v0, p0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
