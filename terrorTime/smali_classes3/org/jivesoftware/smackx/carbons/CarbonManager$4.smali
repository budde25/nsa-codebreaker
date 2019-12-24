.class Lorg/jivesoftware/smackx/carbons/CarbonManager$4;
.super Ljava/lang/Object;
.source "CarbonManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/carbons/CarbonManager;->sendUseCarbons(ZLorg/jivesoftware/smack/util/ExceptionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jivesoftware/smack/util/SuccessCallback<",
        "Lorg/jivesoftware/smack/packet/IQ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

.field final synthetic val$use:Z


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .line 288
    iput-object p1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$4;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    iput-boolean p2, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$4;->val$use:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 288
    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager$4;->onSuccess(Lorg/jivesoftware/smack/packet/IQ;)V

    return-void
.end method

.method public onSuccess(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 2
    .param p1, "result"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 292
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$4;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    iget-boolean v1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$4;->val$use:Z

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->access$202(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)Z

    .line 293
    return-void
.end method
