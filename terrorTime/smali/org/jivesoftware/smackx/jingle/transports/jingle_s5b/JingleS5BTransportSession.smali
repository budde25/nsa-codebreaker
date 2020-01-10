.class public Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;
.super Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;
.source "JingleS5BTransportSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<",
        "Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;",
        ">;"
    }
.end annotation


# static fields
.field private static final CANDIDATE_FAILURE:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private callback:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

.field private ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

.field private theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    const-class v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    .line 360
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;-><init>(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;Ljava/net/Socket;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$1;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->CANDIDATE_FAILURE:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .param p1, "jingleSession"    # Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 57
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 58
    return-void
.end method

.method private chooseFromProposedCandidates(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    .locals 8
    .param p1, "proposal"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    .line 148
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;

    .line 149
    .local v1, "c":Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    .line 152
    .local v2, "candidate":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
    :try_start_0
    invoke-direct {p0, v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->connectToTheirCandidate(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 153
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_1

    :catch_4
    move-exception v3

    .line 154
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v4, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .end local v1    # "c":Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;
    .end local v2    # "candidate":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 157
    :cond_0
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Failed to connect to any candidate."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method private connectIfReady()V
    .locals 19

    .line 253
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getContents()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    .line 254
    .local v3, "content":Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    if-eqz v0, :cond_d

    iget-object v4, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    if-nez v4, :cond_0

    goto/16 :goto_8

    .line 260
    :cond_0
    sget-object v5, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->CANDIDATE_FAILURE:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    if-ne v0, v5, :cond_1

    if-ne v4, v5, :cond_1

    .line 261
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Failure."

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 262
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->onTransportMethodFailed(Ljava/lang/String;)V

    .line 263
    return-void

    .line 266
    :cond_1
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Ready."

    invoke-virtual {v0, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 270
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    sget-object v4, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->CANDIDATE_FAILURE:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    if-eq v0, v4, :cond_5

    iget-object v5, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    if-eq v5, v4, :cond_5

    .line 271
    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getPriority()I

    move-result v0

    iget-object v4, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getPriority()I

    move-result v4

    if-le v0, v4, :cond_2

    .line 272
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    move-object v4, v0

    .local v0, "nominated":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    goto :goto_1

    .line 273
    .end local v0    # "nominated":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    :cond_2
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getPriority()I

    move-result v0

    iget-object v4, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getPriority()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 274
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    move-object v4, v0

    .restart local v0    # "nominated":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    goto :goto_1

    .line 276
    .end local v0    # "nominated":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    :cond_3
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->isInitiator()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    :goto_0
    move-object v4, v0

    .restart local v0    # "nominated":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    goto :goto_1

    .line 278
    .end local v0    # "nominated":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    :cond_5
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    sget-object v4, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->CANDIDATE_FAILURE:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    if-eq v0, v4, :cond_6

    .line 279
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    move-object v4, v0

    .restart local v0    # "nominated":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    goto :goto_1

    .line 281
    .end local v0    # "nominated":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    :cond_6
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    move-object v4, v0

    .line 284
    .local v4, "nominated":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    :goto_1
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    const/4 v5, 0x1

    if-ne v4, v0, :cond_a

    .line 285
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "Their choice, so our proposed candidate is used."

    invoke-virtual {v0, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 286
    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getType()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    move-result-object v0

    sget-object v6, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->proxy:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    if-ne v0, v6, :cond_7

    move v0, v5

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    move v6, v0

    .line 288
    .local v6, "isProxy":Z
    :try_start_0
    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->connectToOurCandidate(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/jivesoftware/smack/SmackException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_8

    move-object v4, v0

    .line 293
    nop

    .line 295
    if-eqz v6, :cond_8

    .line 296
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v8, "Is external proxy. Activate it."

    invoke-virtual {v0, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 297
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    iget-object v7, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v7, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getStreamId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 298
    .local v7, "activate":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setMode(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;)V

    .line 299
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v7, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 300
    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 301
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getRemote()Lorg/jxmpp/jid/FullJid;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setToActivate(Lorg/jxmpp/jid/Jid;)V

    .line 302
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getLocal()Lorg/jxmpp/jid/FullJid;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 304
    :try_start_1
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_1 .. :try_end_1} :catch_4

    .line 308
    nop

    .line 310
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Send candidate-activate."

    invoke-virtual {v0, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->transportManager()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    move-result-object v10

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 312
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getRemote()Lorg/jxmpp/jid/FullJid;

    move-result-object v11

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Lorg/jxmpp/jid/FullJid;

    move-result-object v12

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSessionId()Ljava/lang/String;

    move-result-object v13

    .line 313
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getSenders()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    move-result-object v14

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getCreator()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    move-result-object v15

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$300(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getStreamId()Ljava/lang/String;

    move-result-object v17

    .line 314
    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getCandidateId()Ljava/lang/String;

    move-result-object v18

    .line 311
    invoke-virtual/range {v10 .. v18}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->createCandidateActivated(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v8

    .line 316
    .local v8, "candidateActivate":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    :try_start_2
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0, v8}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 321
    goto :goto_5

    .line 318
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "Could not send candidate-activated"

    invoke-virtual {v2, v5, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    return-void

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "candidateActivate":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_4
    sget-object v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Could not activate proxy."

    invoke-virtual {v2, v5, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    return-void

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "activate":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    :cond_8
    :goto_5
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v8, "Start transmission."

    invoke-virtual {v0, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 325
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$200(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Ljava/net/Socket;

    move-result-object v7

    if-nez v6, :cond_9

    move v2, v5

    :cond_9
    invoke-direct {v0, v7, v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;-><init>(Ljava/net/Socket;Z)V

    .line 326
    .local v0, "bs":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    iget-object v2, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->callback:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    invoke-interface {v2, v0}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;->onSessionInitiated(Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;)V

    .line 328
    .end local v0    # "bs":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    .end local v6    # "isProxy":Z
    goto :goto_7

    .line 289
    .restart local v6    # "isProxy":Z
    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    goto :goto_6

    :catch_c
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    sget-object v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "Could not connect to our candidate."

    invoke-virtual {v2, v5, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    return-void

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "isProxy":Z
    :cond_a
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "Our choice, so their candidate was used."

    invoke-virtual {v0, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 332
    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getType()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    move-result-object v0

    sget-object v6, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->proxy:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    if-ne v0, v6, :cond_b

    move v2, v5

    :cond_b
    move v0, v2

    .line 333
    .local v0, "isProxy":Z
    if-nez v0, :cond_c

    .line 334
    sget-object v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "Direct connection."

    invoke-virtual {v2, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 335
    new-instance v2, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$200(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Ljava/net/Socket;

    move-result-object v6

    invoke-direct {v2, v6, v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;-><init>(Ljava/net/Socket;Z)V

    .line 336
    .local v2, "bs":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    iget-object v5, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->callback:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    invoke-interface {v5, v2}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;->onSessionInitiated(Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;)V

    .line 337
    .end local v2    # "bs":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    goto :goto_7

    .line 338
    :cond_c
    sget-object v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "Our choice was their external proxy. wait for candidate-activate."

    invoke-virtual {v2, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 341
    .end local v0    # "isProxy":Z
    :goto_7
    return-void

    .line 256
    .end local v4    # "nominated":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    :cond_d
    :goto_8
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Not ready."

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private connectToOurCandidate(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    .locals 9
    .param p1, "candidate"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lorg/jivesoftware/smack/SmackException;,
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getStreamHost()Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    move-result-object v6

    .line 175
    .local v6, "streamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "address":Ljava/lang/String;
    new-instance v8, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;

    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    .line 177
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    .line 178
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getStreamId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getRemote()Lorg/jxmpp/jid/FullJid;

    move-result-object v5

    move-object v0, v8

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;Lorg/jxmpp/jid/Jid;)V

    .line 179
    .local v0, "socks5Client":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->getSocket(I)Ljava/net/Socket;

    move-result-object v1

    .line 180
    .local v1, "socket":Ljava/net/Socket;
    sget-object v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected to our StreamHost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " using dstAddr "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v5, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    .line 181
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getDestinationAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 182
    new-instance v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v3, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v1, v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;-><init>(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;Ljava/net/Socket;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$1;)V

    return-object v2
.end method

.method private connectToTheirCandidate(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    .locals 8
    .param p1, "candidate"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lorg/jivesoftware/smack/SmackException;,
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getStreamHost()Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    move-result-object v0

    .line 164
    .local v0, "streamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "address":Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v3, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;)V

    .line 166
    .local v2, "socks5Client":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->getSocket(I)Ljava/net/Socket;

    move-result-object v3

    .line 167
    .local v3, "socket":Ljava/net/Socket;
    sget-object v4, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connected to their StreamHost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " using dstAddr "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v7, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    .line 168
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getDestinationAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 169
    new-instance v4, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v5, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    const/4 v6, 0x0

    invoke-direct {v4, v5, p1, v3, v6}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;-><init>(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;Ljava/net/Socket;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$1;)V

    return-object v4
.end method

.method private initiateSession()V
    .locals 17

    .line 120
    move-object/from16 v1, p0

    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getSocks5Proxy()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->createTransport()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->addTransfer(Ljava/lang/String;)V

    .line 121
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getContents()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    .line 122
    .local v2, "content":Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->chooseFromProposedCandidates(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    move-result-object v3

    .line 123
    .local v3, "usedCandidate":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
    if-nez v3, :cond_0

    .line 124
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->CANDIDATE_FAILURE:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    iput-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    .line 125
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->transportManager()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    move-result-object v4

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 126
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getRemote()Lorg/jxmpp/jid/FullJid;

    move-result-object v5

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Lorg/jxmpp/jid/FullJid;

    move-result-object v6

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSessionId()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getSenders()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    move-result-object v8

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getCreator()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    move-result-object v9

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getStreamId()Ljava/lang/String;

    move-result-object v11

    .line 125
    invoke-virtual/range {v4 .. v11}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->createCandidateError(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v4

    .line 129
    .local v4, "candidateError":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    :try_start_0
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v5, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Could not send candidate-error."

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "candidateError":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    :goto_1
    goto :goto_3

    .line 134
    :cond_0
    iput-object v3, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->transportManager()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    move-result-object v8

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getRemote()Lorg/jxmpp/jid/FullJid;

    move-result-object v9

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Lorg/jxmpp/jid/FullJid;

    move-result-object v10

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSessionId()Ljava/lang/String;

    move-result-object v11

    .line 136
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getSenders()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    move-result-object v12

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getCreator()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    move-result-object v13

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getName()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getStreamId()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getCandidateId()Ljava/lang/String;

    move-result-object v16

    .line 135
    invoke-virtual/range {v8 .. v16}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->createCandidateUsed(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v4

    .line 138
    .local v4, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    :try_start_1
    iget-object v0, v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_1 .. :try_end_1} :catch_2

    .line 142
    goto :goto_3

    .line 140
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v5, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Could not send candidate-used."

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->connectIfReady()V

    .line 145
    return-void
.end method


# virtual methods
.method public bridge synthetic createTransport()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->createTransport()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    move-result-object v0

    return-object v0
.end method

.method public createTransport()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleManager;->randomId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;->tcp:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->createTransport(Ljava/lang/String;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    return-object v0
.end method

.method public createTransport(Ljava/lang/String;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;
    .locals 7
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "mode"    # Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;

    .line 76
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getBuilder()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setStreamId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setMode(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 78
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getLocal()Lorg/jxmpp/jid/FullJid;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getRemote()Lorg/jxmpp/jid/FullJid;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->createDigest(Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setDestinationAddress(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v0

    .line 81
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->isUseLocalCandidates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->transportManager()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getLocalStreamHosts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 83
    .local v2, "host":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    new-instance v3, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    const/16 v4, 0x64

    sget-object v5, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->direct:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    invoke-direct {v3, v2, v4, v5}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;ILorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;)V

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->addTransportCandidate(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    .line 84
    .end local v2    # "host":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, "remoteHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->isUseExternalCandidates()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->transportManager()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getAvailableStreamHosts()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 93
    goto :goto_2

    .line 91
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v3, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Could not determine available StreamHosts."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 97
    .local v3, "host":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    new-instance v4, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    const/4 v5, 0x0

    sget-object v6, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->proxy:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    invoke-direct {v4, v3, v5, v6}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;ILorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;)V

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->addTransportCandidate(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    .line 98
    .end local v3    # "host":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    goto :goto_3

    .line 100
    :cond_2
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->build()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    move-result-object v2

    return-object v2
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 187
    const-string v0, "urn:xmpp:jingle:transports:s5b:1"

    return-object v0
.end method

.method public handleCandidateActivate(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .param p1, "jingle"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 228
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "handleCandidateActivate"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    invoke-static {v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$200(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Ljava/net/Socket;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    .line 230
    invoke-static {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getRemote()Lorg/jxmpp/jid/FullJid;

    move-result-object v3

    invoke-interface {v3}, Lorg/jxmpp/jid/FullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jxmpp/jid/BareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;-><init>(Ljava/net/Socket;Z)V

    .line 231
    .local v0, "bs":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->callback:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;->onSessionInitiated(Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;)V

    .line 232
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    return-object v1
.end method

.method public handleCandidateError(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "jingle"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 236
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->CANDIDATE_FAILURE:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    .line 237
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->connectIfReady()V

    .line 238
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method public handleCandidateUsed(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .param p1, "jingle"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 212
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getContents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getTransport()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->getInfo()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo;

    .line 213
    .local v0, "info":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo;
    move-object v1, v0

    check-cast v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateUsed;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateUsed;->getCandidateId()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "candidateId":Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v3, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v4, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getCandidate(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v5}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;-><init>(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;Ljava/net/Socket;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$1;)V

    iput-object v2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    .line 216
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirChoice:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    invoke-static {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    .line 222
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->connectIfReady()V

    .line 224
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    return-object v2
.end method

.method public handleProxyError(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "jingle"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 243
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method public handleTransportInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 7
    .param p1, "transportInfo"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 192
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getContents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getTransport()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->getInfo()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo;

    .line 194
    .local v0, "info":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "candidate-activated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_1
    const-string v3, "candidate-used"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v1, "proxy-error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "candidate-error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    .line 208
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    return-object v1

    .line 205
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->handleProxyError(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    return-object v1

    .line 202
    :cond_2
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->handleCandidateError(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    return-object v1

    .line 199
    :cond_3
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->handleCandidateActivate(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    return-object v1

    .line 196
    :cond_4
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->handleCandidateUsed(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3d92f2c2 -> :sswitch_3
        0x3b5ca5e9 -> :sswitch_2
        0x509f71c7 -> :sswitch_1
        0x773a7a07 -> :sswitch_0
    .end sparse-switch
.end method

.method public initiateIncomingSession(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    .line 115
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->callback:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    .line 116
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->initiateSession()V

    .line 117
    return-void
.end method

.method public initiateOutgoingSession(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    .line 109
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->callback:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    .line 110
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->initiateSession()V

    .line 111
    return-void
.end method

.method public setTheirProposal(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)V
    .locals 1
    .param p1, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 72
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 73
    return-void
.end method

.method public setTheirTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)V
    .locals 1
    .param p1, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 104
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 105
    return-void
.end method

.method public bridge synthetic transportManager()Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->transportManager()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    move-result-object v0

    return-object v0
.end method

.method public transportManager()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    move-result-object v0

    return-object v0
.end method
