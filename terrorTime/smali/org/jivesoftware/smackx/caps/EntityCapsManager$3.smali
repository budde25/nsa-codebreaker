.class Lorg/jivesoftware/smackx/caps/EntityCapsManager$3;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
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

    .line 315
    iput-object p1, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$3;->this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method

.method private processCapsStreamFeatureIfAvailable(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 336
    const-string v0, "c"

    const-string v1, "http://jabber.org/protocol/caps"

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->getFeature(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/caps/packet/CapsExtension;

    .line 338
    .local v0, "capsExtension":Lorg/jivesoftware/smackx/caps/packet/CapsExtension;
    if-nez v0, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    invoke-interface {p1}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1

    .line 342
    .local v1, "from":Lorg/jxmpp/jid/DomainBareJid;
    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->access$200(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/caps/packet/CapsExtension;)V

    .line 343
    return-void
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 328
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$3;->processCapsStreamFeatureIfAvailable(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 331
    if-nez p2, :cond_0

    .line 332
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$3;->this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->access$102(Lorg/jivesoftware/smackx/caps/EntityCapsManager;Lorg/jivesoftware/smack/packet/Presence;)Lorg/jivesoftware/smack/packet/Presence;

    .line 334
    :cond_0
    return-void
.end method

.method public connected(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 321
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$3;->processCapsStreamFeatureIfAvailable(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 322
    return-void
.end method
