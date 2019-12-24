.class Lorg/jivesoftware/smackx/ping/PingManager$6;
.super Ljava/lang/Object;
.source "PingManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/SuccessCallback;


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
        "Lorg/jivesoftware/smack/util/SuccessCallback<",
        "Lorg/jivesoftware/smack/packet/IQ;",
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

    .line 200
    iput-object p1, p0, Lorg/jivesoftware/smackx/ping/PingManager$6;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    iput-object p2, p0, Lorg/jivesoftware/smackx/ping/PingManager$6;->val$future:Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/ping/PingManager$6;->onSuccess(Lorg/jivesoftware/smack/packet/IQ;)V

    return-void
.end method

.method public onSuccess(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 1
    .param p1, "result"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 203
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager$6;->val$future:Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 204
    return-void
.end method
