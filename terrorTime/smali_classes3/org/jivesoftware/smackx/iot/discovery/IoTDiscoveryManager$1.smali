.class Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$1;
.super Ljava/lang/Object;
.source "IoTDiscoveryManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 81
    invoke-static {}, Lorg/jivesoftware/smackx/iot/IoTManager;->isAutoEnableActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    .line 83
    return-void
.end method
