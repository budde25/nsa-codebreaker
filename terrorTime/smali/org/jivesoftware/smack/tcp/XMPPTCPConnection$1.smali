.class Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$1;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "XMPPTCPConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 326
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$1;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 329
    instance-of v0, p1, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/jivesoftware/smack/sm/StreamManagementException;

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$1;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V

    .line 332
    :cond_1
    return-void
.end method
