.class public Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;
.super Lorg/jivesoftware/smackx/muc/MultiUserChatException;
.source "MultiUserChatException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChatException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MucNotJoinedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    .locals 2
    .param p1, "multiUserChat"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client not currently joined "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoom()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method
