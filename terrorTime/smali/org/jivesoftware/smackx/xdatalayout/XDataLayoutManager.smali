.class public Lorg/jivesoftware/smackx/xdatalayout/XDataLayoutManager;
.super Ljava/lang/Object;
.source "XDataLayoutManager.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/xdatalayout/XDataLayoutManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/xdatalayout/XDataLayoutManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
