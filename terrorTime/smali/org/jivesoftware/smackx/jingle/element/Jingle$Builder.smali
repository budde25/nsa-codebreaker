.class public final Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
.super Ljava/lang/Object;
.source "Jingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/element/Jingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private action:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContent;",
            ">;"
        }
    .end annotation
.end field

.field private initiator:Lorg/jxmpp/jid/FullJid;

.field private reason:Lorg/jivesoftware/smackx/jingle/element/JingleReason;

.field private responder:Lorg/jxmpp/jid/FullJid;

.field private sid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/jingle/element/Jingle$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/jingle/element/Jingle$1;

    .line 176
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    .locals 2
    .param p1, "content"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    .line 214
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->contents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->contents:Ljava/util/List;

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-object p0
.end method

.method public build()Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 9

    .line 232
    new-instance v8, Lorg/jivesoftware/smackx/jingle/element/Jingle;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->sid:Ljava/lang/String;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->action:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->initiator:Lorg/jxmpp/jid/FullJid;

    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->responder:Lorg/jxmpp/jid/FullJid;

    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->reason:Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->contents:Ljava/util/List;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/jingle/element/Jingle;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleAction;Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smackx/jingle/element/JingleReason;Ljava/util/List;Lorg/jivesoftware/smackx/jingle/element/Jingle$1;)V

    return-object v8
.end method

.method public setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    .locals 0
    .param p1, "action"    # Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 199
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->action:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 200
    return-object p0
.end method

.method public setInitiator(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    .locals 0
    .param p1, "initator"    # Lorg/jxmpp/jid/FullJid;

    .line 204
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->initiator:Lorg/jxmpp/jid/FullJid;

    .line 205
    return-object p0
.end method

.method public setReason(Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    .locals 1
    .param p1, "reason"    # Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 222
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/jingle/element/JingleReason;-><init>(Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->reason:Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    .line 223
    return-object p0
.end method

.method public setReason(Lorg/jivesoftware/smackx/jingle/element/JingleReason;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    .locals 0
    .param p1, "reason"    # Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    .line 227
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->reason:Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    .line 228
    return-object p0
.end method

.method public setResponder(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    .locals 0
    .param p1, "responder"    # Lorg/jxmpp/jid/FullJid;

    .line 209
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->responder:Lorg/jxmpp/jid/FullJid;

    .line 210
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 193
    const-string v0, "Session ID must not be null or empty"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 194
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->sid:Ljava/lang/String;

    .line 195
    return-object p0
.end method
