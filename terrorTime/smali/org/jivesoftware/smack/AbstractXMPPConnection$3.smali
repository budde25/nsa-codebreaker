.class Lorg/jivesoftware/smack/AbstractXMPPConnection$3;
.super Ljava/lang/Object;
.source "AbstractXMPPConnection.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/AbstractXMPPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 313
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$3;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 316
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$3;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncGoLimited(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method
