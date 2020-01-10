.class public Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;
.super Ljava/lang/Object;
.source "FullJidAndSessionId.java"


# instance fields
.field private final fullJid:Lorg/jxmpp/jid/FullJid;

.field private final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)V
    .locals 0
    .param p1, "fullJid"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;->fullJid:Lorg/jxmpp/jid/FullJid;

    .line 30
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;->sessionId:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p1, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;

    .line 54
    .local v0, "otherFullJidAndSessionId":Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;->fullJid:Lorg/jxmpp/jid/FullJid;

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;->fullJid:Lorg/jxmpp/jid/FullJid;

    invoke-interface {v2, v3}, Lorg/jxmpp/jid/FullJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;->sessionId:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;->sessionId:Ljava/lang/String;

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 54
    :goto_0
    return v1
.end method

.method public getFullJid()Lorg/jxmpp/jid/FullJid;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;->fullJid:Lorg/jxmpp/jid/FullJid;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;->fullJid:Lorg/jxmpp/jid/FullJid;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;->sessionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 45
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    return v1
.end method
