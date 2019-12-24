.class public abstract Lorg/jivesoftware/smack/util/Async$ThrowingRunnable;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/Async;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ThrowingRunnable"
.end annotation


# static fields
.field public static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lorg/jivesoftware/smack/util/Async$ThrowingRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/Async$ThrowingRunnable;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Async$ThrowingRunnable;->runOrThrow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_0

    .line 76
    sget-object v1, Lorg/jivesoftware/smack/util/Async$ThrowingRunnable;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Caught Exception"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 74
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method public abstract runOrThrow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
