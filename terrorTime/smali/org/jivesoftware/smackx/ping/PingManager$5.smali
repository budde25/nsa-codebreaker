.class Lorg/jivesoftware/smackx/ping/PingManager$5;
.super Ljava/lang/Object;
.source "PingManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/ExceptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/ping/PingManager;->pingAsync(Lorg/jxmpp/jid/Jid;J)Lorg/jivesoftware/smack/SmackFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jivesoftware/smack/util/ExceptionCallback<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ping/PingManager;

.field final synthetic val$future:Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/ping/PingManager;

    .line 206
    iput-object p1, p0, Lorg/jivesoftware/smackx/ping/PingManager$5;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    iput-object p2, p0, Lorg/jivesoftware/smackx/ping/PingManager$5;->val$future:Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager$5;->val$future:Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;->processException(Ljava/lang/Exception;)V

    .line 210
    return-void
.end method

.method public bridge synthetic processException(Ljava/lang/Object;)V
    .locals 0

    .line 206
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/ping/PingManager$5;->processException(Ljava/lang/Exception;)V

    return-void
.end method
