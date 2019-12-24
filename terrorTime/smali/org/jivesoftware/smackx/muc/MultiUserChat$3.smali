.class Lorg/jivesoftware/smackx/muc/MultiUserChat$3;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 202
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 14
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 205
    move-object v7, p1

    check-cast v7, Lorg/jivesoftware/smack/packet/Presence;

    .line 206
    .local v7, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v7}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v8

    .line 207
    .local v8, "from":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v8, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$400(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v9

    .line 211
    .local v9, "myRoomJID":Lorg/jxmpp/jid/EntityFullJid;
    invoke-virtual {v7}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 213
    .local v10, "isUserStatusModification":Z
    invoke-static {}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$100()Lorg/jivesoftware/smack/AsyncButOrdered;

    move-result-object v11

    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    new-instance v13, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, p1

    move v5, v10

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$3;Lorg/jivesoftware/smack/packet/Presence;Lorg/jxmpp/jid/EntityFullJid;Lorg/jivesoftware/smack/packet/Stanza;ZLorg/jxmpp/jid/EntityFullJid;)V

    invoke-virtual {v11, v12, v13}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method
