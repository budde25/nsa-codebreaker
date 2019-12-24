.class Lorg/jivesoftware/smackx/caps/EntityCapsManager$8;
.super Ljava/lang/Object;
.source "EntityCapsManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/disco/EntityCapabilitiesChangedListener;


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

    .line 400
    iput-object p1, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$8;->this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntityCapailitiesChanged()V
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$8;->this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityCapsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$8;->this$0:Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->access$500(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)V

    .line 408
    return-void
.end method
