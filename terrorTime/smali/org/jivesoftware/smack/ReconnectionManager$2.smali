.class Lorg/jivesoftware/smack/ReconnectionManager$2;
.super Ljava/lang/Object;
.source "ReconnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/ReconnectionManager;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private attempts:I

.field final synthetic this$0:Lorg/jivesoftware/smack/ReconnectionManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/ReconnectionManager;)V
    .locals 1
    .param p1, "this$0"    # Lorg/jivesoftware/smack/ReconnectionManager;

    .line 194
    iput-object p1, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    return-void
.end method

.method private timeDelay()I
    .locals 3

    .line 207
    iget v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    .line 211
    sget-object v0, Lorg/jivesoftware/smack/ReconnectionManager$4;->$SwitchMap$org$jivesoftware$smack$ReconnectionManager$ReconnectionPolicy:[I

    iget-object v2, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v2}, Lorg/jivesoftware/smack/ReconnectionManager;->access$000(Lorg/jivesoftware/smack/ReconnectionManager;)Lorg/jivesoftware/smack/ReconnectionManager$ReconnectionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/ReconnectionManager$ReconnectionPolicy;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 216
    iget v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$200(Lorg/jivesoftware/smack/ReconnectionManager;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x5

    .local v0, "delay":I
    goto :goto_0

    .line 219
    .end local v0    # "delay":I
    :cond_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$200(Lorg/jivesoftware/smack/ReconnectionManager;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .restart local v0    # "delay":I
    goto :goto_0

    .line 223
    .end local v0    # "delay":I
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$200(Lorg/jivesoftware/smack/ReconnectionManager;)I

    move-result v0

    .line 225
    .restart local v0    # "delay":I
    goto :goto_0

    .line 227
    .end local v0    # "delay":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown reconnection policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v2}, Lorg/jivesoftware/smack/ReconnectionManager;->access$000(Lorg/jivesoftware/smack/ReconnectionManager;)Lorg/jivesoftware/smack/ReconnectionManager$ReconnectionPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 213
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$100(Lorg/jivesoftware/smack/ReconnectionManager;)I

    move-result v0

    .line 214
    .restart local v0    # "delay":I
    nop

    .line 230
    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 239
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$300(Lorg/jivesoftware/smack/ReconnectionManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 240
    .local v0, "connection":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    if-nez v0, :cond_0

    .line 241
    return-void

    .line 245
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    .line 249
    :goto_0
    iget-object v2, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v2, v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$400(Lorg/jivesoftware/smack/ReconnectionManager;Lorg/jivesoftware/smack/XMPPConnection;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 251
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager$2;->timeDelay()I

    move-result v2

    .line 255
    .local v2, "remainingSeconds":I
    :goto_1
    const-string v3, "Reconnection Thread was interrupted, aborting reconnection mechanism"

    if-lez v2, :cond_3

    .line 256
    iget-object v4, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v4, v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$400(Lorg/jivesoftware/smack/ReconnectionManager;Lorg/jivesoftware/smack/XMPPConnection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    return-void

    .line 260
    :cond_1
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 261
    add-int/lit8 v2, v2, -0x1

    .line 262
    iget-object v4, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v4}, Lorg/jivesoftware/smack/ReconnectionManager;->access$500(Lorg/jivesoftware/smack/ReconnectionManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/ReconnectionListener;

    .line 263
    .local v5, "listener":Lorg/jivesoftware/smack/ReconnectionListener;
    invoke-interface {v5, v2}, Lorg/jivesoftware/smack/ReconnectionListener;->reconnectingIn(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v5    # "listener":Lorg/jivesoftware/smack/ReconnectionListener;
    goto :goto_2

    .line 270
    :cond_2
    goto :goto_1

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/jivesoftware/smack/ReconnectionManager;->access$600()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    return-void

    .line 273
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v4, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v4}, Lorg/jivesoftware/smack/ReconnectionManager;->access$500(Lorg/jivesoftware/smack/ReconnectionManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/ReconnectionListener;

    .line 274
    .restart local v5    # "listener":Lorg/jivesoftware/smack/ReconnectionListener;
    invoke-interface {v5, v1}, Lorg/jivesoftware/smack/ReconnectionListener;->reconnectingIn(I)V

    .line 275
    .end local v5    # "listener":Lorg/jivesoftware/smack/ReconnectionListener;
    goto :goto_3

    .line 277
    :cond_4
    iget-object v4, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v4, v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$400(Lorg/jivesoftware/smack/ReconnectionManager;Lorg/jivesoftware/smack/XMPPConnection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 278
    return-void

    .line 283
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connect()Lorg/jivesoftware/smack/AbstractXMPPConnection;
    :try_end_1
    .catch Lorg/jivesoftware/smack/SmackException$AlreadyConnectedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/jivesoftware/smack/SmackException$AlreadyLoggedInException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/jivesoftware/smack/SmackException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    goto :goto_4

    .line 303
    :catch_1
    move-exception v1

    goto :goto_5

    .line 296
    :catch_2
    move-exception v3

    goto :goto_6

    :catch_3
    move-exception v3

    goto :goto_6

    :catch_4
    move-exception v3

    goto :goto_6

    .line 290
    :catch_5
    move-exception v1

    goto :goto_8

    .line 285
    :catch_6
    move-exception v4

    .line 286
    .local v4, "e":Lorg/jivesoftware/smack/SmackException$AlreadyConnectedException;
    :try_start_2
    invoke-static {}, Lorg/jivesoftware/smack/ReconnectionManager;->access$600()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v7, "Connection was already connected on reconnection attempt"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .end local v4    # "e":Lorg/jivesoftware/smack/SmackException$AlreadyConnectedException;
    :goto_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->login()V
    :try_end_2
    .catch Lorg/jivesoftware/smack/SmackException$AlreadyLoggedInException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/jivesoftware/smack/SmackException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    .line 304
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :goto_5
    invoke-static {}, Lorg/jivesoftware/smack/ReconnectionManager;->access$600()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    return-void

    .line 298
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .local v3, "e":Ljava/lang/Exception;
    :goto_6
    iget-object v4, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v4}, Lorg/jivesoftware/smack/ReconnectionManager;->access$500(Lorg/jivesoftware/smack/ReconnectionManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/ReconnectionListener;

    .line 299
    .restart local v5    # "listener":Lorg/jivesoftware/smack/ReconnectionListener;
    invoke-interface {v5, v3}, Lorg/jivesoftware/smack/ReconnectionListener;->reconnectionFailed(Ljava/lang/Exception;)V

    .line 300
    .end local v5    # "listener":Lorg/jivesoftware/smack/ReconnectionListener;
    goto :goto_7

    .line 302
    :cond_6
    goto/16 :goto_0

    .line 294
    .end local v3    # "e":Ljava/lang/Exception;
    .local v1, "e":Lorg/jivesoftware/smack/SmackException$AlreadyLoggedInException;
    :goto_8
    invoke-static {}, Lorg/jivesoftware/smack/ReconnectionManager;->access$600()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v5, "Reconnection not required, was already logged in"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .end local v1    # "e":Lorg/jivesoftware/smack/SmackException$AlreadyLoggedInException;
    :goto_9
    nop

    .line 310
    return-void

    .line 312
    .end local v2    # "remainingSeconds":I
    :cond_7
    return-void
.end method
