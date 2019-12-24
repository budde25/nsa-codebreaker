.class Lorg/jivesoftware/smackx/caps/EntityCapsManager$6;
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

    .line 374
    iput-object p1, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$6;->this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 2
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 377
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$6;->this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/Presence;

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->access$102(Lorg/jivesoftware/smackx/caps/EntityCapsManager;Lorg/jivesoftware/smack/packet/Presence;)Lorg/jivesoftware/smack/packet/Presence;

    .line 378
    return-void
.end method
