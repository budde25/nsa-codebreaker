.class Lorg/jivesoftware/smackx/caps/EntityCapsManager$5;
.super Lorg/jivesoftware/smack/roster/AbstractPresenceEventListener;
.source "EntityCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/caps/EntityCapsManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    .line 367
    iput-object p1, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$5;->this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/roster/AbstractPresenceEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public presenceUnavailable(Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .param p1, "from"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "presence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 370
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p1}, Lorg/jxmpp/util/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method
