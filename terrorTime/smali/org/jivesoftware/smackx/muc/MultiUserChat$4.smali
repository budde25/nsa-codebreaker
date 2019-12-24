.class Lorg/jivesoftware/smackx/muc/MultiUserChat$4;
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

    .line 278
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$4;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 4
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 281
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 283
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    move-result-object v1

    .line 284
    .local v1, "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getDecline()Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;

    move-result-object v2

    .line 286
    .local v2, "rejection":Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;
    if-nez v2, :cond_0

    .line 287
    return-void

    .line 290
    :cond_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$4;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-static {v3, v0, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$1100(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;)V

    .line 291
    return-void
.end method
