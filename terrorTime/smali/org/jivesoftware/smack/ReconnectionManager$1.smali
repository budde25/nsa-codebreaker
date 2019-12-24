.class Lorg/jivesoftware/smack/ReconnectionManager$1;
.super Ljava/lang/Object;
.source "ReconnectionManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/ReconnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 80
    instance-of v0, p1, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->getInstanceFor(Lorg/jivesoftware/smack/AbstractXMPPConnection;)Lorg/jivesoftware/smack/ReconnectionManager;

    .line 83
    :cond_0
    return-void
.end method
