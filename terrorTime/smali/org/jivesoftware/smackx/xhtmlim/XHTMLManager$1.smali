.class Lorg/jivesoftware/smackx/xhtmlim/XHTMLManager$1;
.super Ljava/lang/Object;
.source "XHTMLManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/xhtmlim/XHTMLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 48
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/xhtmlim/XHTMLManager;->setServiceEnabled(Lorg/jivesoftware/smack/XMPPConnection;Z)V

    .line 49
    return-void
.end method
