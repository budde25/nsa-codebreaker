.class Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat$1;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$1;

.field final synthetic val$message:Lorg/jivesoftware/smack/packet/Message;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$1;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0
    .param p1, "this$1"    # Lorg/jivesoftware/smackx/muc/MultiUserChat$1;

    .line 169
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$1;

    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 172
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$1;

    iget-object v0, v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$000(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/MessageListener;

    .line 173
    .local v1, "listener":Lorg/jivesoftware/smack/MessageListener;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/MessageListener;->processMessage(Lorg/jivesoftware/smack/packet/Message;)V

    .line 174
    .end local v1    # "listener":Lorg/jivesoftware/smack/MessageListener;
    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method
