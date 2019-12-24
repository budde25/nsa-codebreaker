.class Lorg/jivesoftware/smack/AbstractXMPPConnection$2$1;
.super Ljava/lang/Object;
.source "AbstractXMPPConnection.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/AbstractXMPPConnection$2;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection$2;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection$2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection$2;

    .line 297
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$2$1;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 300
    invoke-static {}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " encountered uncaught exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    return-void
.end method
