.class Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2$1;
.super Ljava/lang/Object;
.source "XMPPTCPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;

    .line 1016
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2$1;->this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1020
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2$1;->this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;

    iget-object v0, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2$1;->this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;

    iget-object v1, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->val$e:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/Exception;)V

    .line 1021
    return-void
.end method
