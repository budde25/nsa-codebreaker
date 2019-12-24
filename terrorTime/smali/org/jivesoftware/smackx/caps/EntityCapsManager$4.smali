.class Lorg/jivesoftware/smackx/caps/EntityCapsManager$4;
.super Ljava/lang/Object;
.source "EntityCapsManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


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

    .line 352
    iput-object p1, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$4;->this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 2
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 357
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$4;->this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityCapsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    return-void

    .line 360
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smackx/caps/packet/CapsExtension;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/caps/packet/CapsExtension;

    move-result-object v0

    .line 361
    .local v0, "capsExtension":Lorg/jivesoftware/smackx/caps/packet/CapsExtension;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    .line 362
    .local v1, "from":Lorg/jxmpp/jid/Jid;
    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->access$200(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/caps/packet/CapsExtension;)V

    .line 363
    return-void
.end method
