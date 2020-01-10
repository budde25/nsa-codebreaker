.class Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager$2;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "MucBookmarkAutojoinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;

    .line 88
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager$2;->this$0:Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager$2;->this$0:Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->access$000(Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager$2;->this$0:Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->autojoinBookmarkedConferences()V

    .line 96
    return-void
.end method
