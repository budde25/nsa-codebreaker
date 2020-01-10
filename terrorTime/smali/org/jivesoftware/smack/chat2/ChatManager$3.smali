.class Lorg/jivesoftware/smack/chat2/ChatManager$3;
.super Lorg/jivesoftware/smack/roster/AbstractRosterListener;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/chat2/ChatManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/chat2/ChatManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/chat2/ChatManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/chat2/ChatManager;

    .line 145
    iput-object p1, p0, Lorg/jivesoftware/smack/chat2/ChatManager$3;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/roster/AbstractRosterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 6
    .param p1, "presence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 148
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 149
    .local v0, "from":Lorg/jxmpp/jid/Jid;
    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    .line 150
    .local v1, "bareFrom":Lorg/jxmpp/jid/EntityBareJid;
    if-nez v1, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/chat2/ChatManager$3;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-static {v2}, Lorg/jivesoftware/smack/chat2/ChatManager;->access$400(Lorg/jivesoftware/smack/chat2/ChatManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/chat2/Chat;

    .line 155
    .local v2, "chat":Lorg/jivesoftware/smack/chat2/Chat;
    if-nez v2, :cond_1

    .line 156
    return-void

    .line 159
    :cond_1
    iget-object v3, v2, Lorg/jivesoftware/smack/chat2/Chat;->lockedResource:Lorg/jxmpp/jid/EntityFullJid;

    if-nez v3, :cond_2

    .line 162
    return-void

    .line 165
    :cond_2
    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    .line 166
    .local v3, "fullFrom":Lorg/jxmpp/jid/EntityFullJid;
    iget-object v4, v2, Lorg/jivesoftware/smack/chat2/Chat;->lockedResource:Lorg/jxmpp/jid/EntityFullJid;

    invoke-interface {v4, v3}, Lorg/jxmpp/jid/EntityFullJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 167
    return-void

    .line 170
    :cond_3
    iget-object v4, v2, Lorg/jivesoftware/smack/chat2/Chat;->lastPresenceOfLockedResource:Lorg/jivesoftware/smack/packet/Presence;

    if-nez v4, :cond_4

    .line 172
    iput-object p1, v2, Lorg/jivesoftware/smack/chat2/Chat;->lastPresenceOfLockedResource:Lorg/jivesoftware/smack/packet/Presence;

    .line 173
    return-void

    .line 176
    :cond_4
    iget-object v4, v2, Lorg/jivesoftware/smack/chat2/Chat;->lastPresenceOfLockedResource:Lorg/jivesoftware/smack/packet/Presence;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v5

    if-ne v4, v5, :cond_5

    iget-object v4, v2, Lorg/jivesoftware/smack/chat2/Chat;->lastPresenceOfLockedResource:Lorg/jivesoftware/smack/packet/Presence;

    .line 177
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v5

    if-eq v4, v5, :cond_6

    .line 178
    :cond_5
    invoke-virtual {v2}, Lorg/jivesoftware/smack/chat2/Chat;->unlockResource()V

    .line 180
    :cond_6
    return-void
.end method
