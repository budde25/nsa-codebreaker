.class Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->processAdHocCommand(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;)Lorg/jivesoftware/smack/packet/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    .line 412
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 416
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$400(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    .local v1, "sessionId":Ljava/lang/String;
    iget-object v2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$400(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/commands/LocalCommand;

    .line 422
    .local v2, "command":Lorg/jivesoftware/smackx/commands/LocalCommand;
    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/commands/LocalCommand;->getCreationDate()J

    move-result-wide v3

    .line 434
    .local v3, "creationStamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v7, 0x3a980

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 436
    iget-object v5, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    invoke-static {v5}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$400(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .end local v1    # "sessionId":Ljava/lang/String;
    .end local v2    # "command":Lorg/jivesoftware/smackx/commands/LocalCommand;
    .end local v3    # "creationStamp":J
    :cond_0
    goto :goto_1

    .line 441
    :cond_1
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_2
    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    goto :goto_2
.end method
