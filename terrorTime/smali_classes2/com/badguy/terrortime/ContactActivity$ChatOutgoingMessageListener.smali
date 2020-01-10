.class Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/ContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatOutgoingMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/ContactActivity;


# direct methods
.method private constructor <init>(Lcom/badguy/terrortime/ContactActivity;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/badguy/terrortime/ContactActivity;Lcom/badguy/terrortime/ContactActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/badguy/terrortime/ContactActivity;
    .param p2, "x1"    # Lcom/badguy/terrortime/ContactActivity$1;

    .line 288
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;-><init>(Lcom/badguy/terrortime/ContactActivity;)V

    return-void
.end method


# virtual methods
.method public newOutgoingMessage(Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/chat2/Chat;)V
    .locals 2
    .param p1, "to"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p2, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .param p3, "chat"    # Lorg/jivesoftware/smack/chat2/Chat;

    .line 292
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    new-instance v1, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;-><init>(Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;)V

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/ContactActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method
