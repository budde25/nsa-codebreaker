.class Lorg/jivesoftware/smackx/carbons/CarbonManager$3;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "CarbonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/carbons/CarbonManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    const-class v0, Lorg/jivesoftware/smackx/carbons/CarbonManager;

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smackx/carbons/CarbonManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .line 133
    iput-object p1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 145
    if-nez p2, :cond_0

    .line 147
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->access$202(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)Z

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    invoke-static {v0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->access$500(Lorg/jivesoftware/smackx/carbons/CarbonManager;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 150
    return-void
.end method

.method public connectionClosed()V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->access$202(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)Z

    .line 140
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->access$400(Lorg/jivesoftware/smackx/carbons/CarbonManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->access$300(Lorg/jivesoftware/smackx/carbons/CarbonManager;)Lorg/jivesoftware/smack/StanzaListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removeSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    move-result v0

    .line 141
    .local v0, "removed":Z
    nop

    .line 142
    return-void
.end method
