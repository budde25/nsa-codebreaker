.class public abstract Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;
.super Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;
.source "SmackFuture.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;
.implements Lorg/jivesoftware/smack/util/ExceptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/SmackFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InternalProcessStanzaSmackFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture<",
        "TV;TE;>;",
        "Lorg/jivesoftware/smack/StanzaListener;",
        "Lorg/jivesoftware/smack/util/ExceptionCallback<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 257
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture<TV;TE;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract handleStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
.end method

.method protected abstract isNonFatalException(Ljava/lang/Exception;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public final declared-synchronized processException(Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture<TV;TE;>;"
    .local p1, "exception":Ljava/lang/Exception;, "TE;"
    monitor-enter p0

    .line 274
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;->isNonFatalException(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iput-object p1, p0, Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;->exception:Ljava/lang/Exception;

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 278
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;->maybeInvokeCallbacks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture<TV;TE;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 273
    .end local p1    # "exception":Ljava/lang/Exception;, "TE;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic processException(Ljava/lang/Object;)V
    .locals 0

    .line 257
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture<TV;TE;>;"
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;->processException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final declared-synchronized processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 0
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture<TV;TE;>;"
    monitor-enter p0

    .line 287
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;->handleStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 286
    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture<TV;TE;>;"
    .end local p1    # "stanza":Lorg/jivesoftware/smack/packet/Stanza;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
