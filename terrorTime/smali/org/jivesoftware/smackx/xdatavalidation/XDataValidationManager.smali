.class public Lorg/jivesoftware/smackx/xdatavalidation/XDataValidationManager;
.super Ljava/lang/Object;
.source "XDataValidationManager.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/xdatavalidation/XDataValidationManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/xdatavalidation/XDataValidationManager$1;-><init>()V

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
