.class public abstract Lorg/jivesoftware/smackx/commands/LocalCommand;
.super Lorg/jivesoftware/smackx/commands/AdHocCommand;
.source "LocalCommand.java"


# instance fields
.field private final creationDate:J

.field private currentStage:I

.field private ownerJID:Lorg/jxmpp/jid/Jid;

.field private sessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommand;-><init>()V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->creationDate:J

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currentStage:I

    .line 68
    return-void
.end method


# virtual methods
.method decrementStage()V
    .locals 1

    .line 166
    iget v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currentStage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currentStage:I

    .line 167
    return-void
.end method

.method public getCreationDate()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->creationDate:J

    return-wide v0
.end method

.method public getCurrentStage()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currentStage:I

    return v0
.end method

.method public getOwnerJID()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->ownerJID:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract hasPermission(Lorg/jxmpp/jid/Jid;)Z
.end method

.method incrementStage()V
    .locals 1

    .line 157
    iget v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currentStage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currentStage:I

    .line 158
    return-void
.end method

.method public abstract isLastStage()Z
.end method

.method setData(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;)V
    .locals 1
    .param p1, "data"    # Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    .line 147
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->sessionID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setSessionID(Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/commands/AdHocCommand;->setData(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;)V

    .line 149
    return-void
.end method

.method public setOwnerJID(Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p1, "ownerJID"    # Lorg/jxmpp/jid/Jid;

    .line 97
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->ownerJID:Lorg/jxmpp/jid/Jid;

    .line 98
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionID"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->sessionID:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/commands/LocalCommand;->getData()Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setSessionID(Ljava/lang/String;)V

    .line 79
    return-void
.end method
