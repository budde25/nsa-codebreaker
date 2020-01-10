.class Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$4;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "BlockingCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    .line 148
    iput-object p1, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$4;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 152
    if-eqz p2, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$4;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$002(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;Ljava/util/List;)Ljava/util/List;

    .line 156
    return-void
.end method
