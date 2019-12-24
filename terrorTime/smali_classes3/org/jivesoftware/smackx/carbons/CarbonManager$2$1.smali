.class Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;
.super Ljava/lang/Object;
.source "CarbonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/carbons/CarbonManager$2;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/carbons/CarbonManager$2;

.field final synthetic val$carbonCopy:Lorg/jivesoftware/smack/packet/Message;

.field final synthetic val$direction:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

.field final synthetic val$wrappingMessage:Lorg/jivesoftware/smack/packet/Message;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/carbons/CarbonManager$2;Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0
    .param p1, "this$1"    # Lorg/jivesoftware/smackx/carbons/CarbonManager$2;

    .line 122
    iput-object p1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;->this$1:Lorg/jivesoftware/smackx/carbons/CarbonManager$2;

    iput-object p2, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;->val$direction:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    iput-object p3, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;->val$carbonCopy:Lorg/jivesoftware/smack/packet/Message;

    iput-object p4, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;->val$wrappingMessage:Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 125
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;->this$1:Lorg/jivesoftware/smackx/carbons/CarbonManager$2;

    iget-object v0, v0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->access$000(Lorg/jivesoftware/smackx/carbons/CarbonManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/carbons/CarbonCopyReceivedListener;

    .line 126
    .local v1, "listener":Lorg/jivesoftware/smackx/carbons/CarbonCopyReceivedListener;
    iget-object v2, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;->val$direction:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    iget-object v3, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;->val$carbonCopy:Lorg/jivesoftware/smack/packet/Message;

    iget-object v4, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;->val$wrappingMessage:Lorg/jivesoftware/smack/packet/Message;

    invoke-interface {v1, v2, v3, v4}, Lorg/jivesoftware/smackx/carbons/CarbonCopyReceivedListener;->onCarbonCopyReceived(Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/packet/Message;)V

    .line 127
    .end local v1    # "listener":Lorg/jivesoftware/smackx/carbons/CarbonCopyReceivedListener;
    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method
