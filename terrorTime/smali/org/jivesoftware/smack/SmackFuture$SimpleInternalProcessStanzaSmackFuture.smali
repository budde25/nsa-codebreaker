.class public abstract Lorg/jivesoftware/smack/SmackFuture$SimpleInternalProcessStanzaSmackFuture;
.super Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;
.source "SmackFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/SmackFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleInternalProcessStanzaSmackFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture<",
        "TV;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 297
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture$SimpleInternalProcessStanzaSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$SimpleInternalProcessStanzaSmackFuture<TV;TE;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected isNonFatalException(Ljava/lang/Exception;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 301
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture$SimpleInternalProcessStanzaSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$SimpleInternalProcessStanzaSmackFuture<TV;TE;>;"
    .local p1, "exception":Ljava/lang/Exception;, "TE;"
    const/4 v0, 0x0

    return v0
.end method
