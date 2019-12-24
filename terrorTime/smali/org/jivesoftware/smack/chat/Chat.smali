.class public Lorg/jivesoftware/smack/chat/Chat;
.super Ljava/lang/Object;
.source "Chat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final chatManager:Lorg/jivesoftware/smack/chat/ChatManager;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/chat/ChatMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final participant:Lorg/jxmpp/jid/EntityJid;

.field private final threadID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/chat/ChatManager;Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;)V
    .locals 2
    .param p1, "chatManager"    # Lorg/jivesoftware/smack/chat/ChatManager;
    .param p2, "participant"    # Lorg/jxmpp/jid/EntityJid;
    .param p3, "threadID"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->listeners:Ljava/util/Set;

    .line 58
    invoke-static {p3}, Lorg/jivesoftware/smack/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iput-object p1, p0, Lorg/jivesoftware/smack/chat/Chat;->chatManager:Lorg/jivesoftware/smack/chat/ChatManager;

    .line 62
    iput-object p2, p0, Lorg/jivesoftware/smack/chat/Chat;->participant:Lorg/jxmpp/jid/EntityJid;

    .line 63
    iput-object p3, p0, Lorg/jivesoftware/smack/chat/Chat;->threadID:Ljava/lang/String;

    .line 64
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Thread ID must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addMessageListener(Lorg/jivesoftware/smack/chat/ChatMessageListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/chat/ChatMessageListener;

    .line 130
    if-nez p1, :cond_0

    .line 131
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public close()V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->chatManager:Lorg/jivesoftware/smack/chat/ChatManager;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/chat/ChatManager;->closeChat(Lorg/jivesoftware/smack/chat/Chat;)V

    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 149
    return-void
.end method

.method public createCollector()Lorg/jivesoftware/smack/StanzaCollector;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->chatManager:Lorg/jivesoftware/smack/chat/ChatManager;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/chat/ChatManager;->createStanzaCollector(Lorg/jivesoftware/smack/chat/Chat;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    return-object v0
.end method

.method deliver(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 2
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 183
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->threadID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/chat/ChatMessageListener;

    .line 186
    .local v1, "listener":Lorg/jivesoftware/smack/chat/ChatMessageListener;
    invoke-interface {v1, p0, p1}, Lorg/jivesoftware/smack/chat/ChatMessageListener;->processMessage(Lorg/jivesoftware/smack/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 187
    .end local v1    # "listener":Lorg/jivesoftware/smack/chat/ChatMessageListener;
    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 205
    instance-of v0, p1, Lorg/jivesoftware/smack/chat/Chat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->threadID:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/chat/Chat;

    .line 206
    invoke-virtual {v1}, Lorg/jivesoftware/smack/chat/Chat;->getThreadID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->participant:Lorg/jxmpp/jid/EntityJid;

    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/chat/Chat;

    .line 207
    invoke-virtual {v1}, Lorg/jivesoftware/smack/chat/Chat;->getParticipant()Lorg/jxmpp/jid/EntityJid;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jxmpp/jid/EntityJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0
.end method

.method public getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/chat/ChatMessageListener;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->listeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParticipant()Lorg/jxmpp/jid/EntityJid;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->participant:Lorg/jxmpp/jid/EntityJid;

    return-object v0
.end method

.method public getThreadID()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->threadID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 197
    const/4 v0, 0x1

    .line 198
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/chat/Chat;->threadID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 199
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/chat/Chat;->participant:Lorg/jxmpp/jid/EntityJid;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 200
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public removeMessageListener(Lorg/jivesoftware/smack/chat/ChatMessageListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/chat/ChatMessageListener;

    .line 138
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 102
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/chat/Chat;->sendMessage(Lorg/jivesoftware/smack/packet/Message;)V

    .line 104
    return-void
.end method

.method public sendMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->participant:Lorg/jxmpp/jid/EntityJid;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 118
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->threadID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/Chat;->chatManager:Lorg/jivesoftware/smack/chat/ChatManager;

    invoke-virtual {v0, p0, p1}, Lorg/jivesoftware/smack/chat/ChatManager;->sendMessage(Lorg/jivesoftware/smack/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chat [(participant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/chat/Chat;->participant:Lorg/jxmpp/jid/EntityJid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), (thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/chat/Chat;->threadID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
