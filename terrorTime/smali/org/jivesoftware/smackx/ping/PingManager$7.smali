.class Lorg/jivesoftware/smackx/ping/PingManager$7;
.super Ljava/lang/Object;
.source "PingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ping/PingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ping/PingManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/ping/PingManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/ping/PingManager;

    .line 474
    iput-object p1, p0, Lorg/jivesoftware/smackx/ping/PingManager$7;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 477
    invoke-static {}, Lorg/jivesoftware/smackx/ping/PingManager;->access$300()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "ServerPingTask run()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager$7;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/ping/PingManager;->pingServerIfNecessary()V

    .line 479
    return-void
.end method
