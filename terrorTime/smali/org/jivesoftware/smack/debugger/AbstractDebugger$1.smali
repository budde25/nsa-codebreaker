.class Lorg/jivesoftware/smack/debugger/AbstractDebugger$1;
.super Ljava/lang/Object;
.source "AbstractDebugger.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/ReaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/debugger/AbstractDebugger;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/debugger/AbstractDebugger;

.field final synthetic val$connection:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/debugger/AbstractDebugger;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/debugger/AbstractDebugger;

    .line 56
    iput-object p1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger$1;->this$0:Lorg/jivesoftware/smack/debugger/AbstractDebugger;

    iput-object p2, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger$1;->val$connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger$1;->this$0:Lorg/jivesoftware/smack/debugger/AbstractDebugger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RECV ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger$1;->val$connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionCounter()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->log(Ljava/lang/String;)V

    .line 60
    return-void
.end method
