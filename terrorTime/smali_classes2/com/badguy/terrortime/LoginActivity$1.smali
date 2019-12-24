.class Lcom/badguy/terrortime/LoginActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/LoginActivity;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/LoginActivity;

    .line 60
    iput-object p1, p0, Lcom/badguy/terrortime/LoginActivity$1;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0()Ljava/lang/Exception;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No client object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity$1;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-static {v0}, Lcom/badguy/terrortime/LoginActivity;->access$000(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    :try_start_0
    const-string v0, "result"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$1;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-virtual {v1}, Lcom/badguy/terrortime/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-virtual {v1}, Lcom/badguy/terrortime/TerrorTimeApplication;->getClient()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/badguy/terrortime/-$$Lambda$LoginActivity$1$nC2Mlzaksg0IlR_njHSIBo11qtU;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$LoginActivity$1$nC2Mlzaksg0IlR_njHSIBo11qtU;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badguy/terrortime/Client;

    .line 68
    .local v1, "client":Lcom/badguy/terrortime/Client;
    iget-object v2, p0, Lcom/badguy/terrortime/LoginActivity$1;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-static {v2, v1}, Lcom/badguy/terrortime/LoginActivity;->access$100(Lcom/badguy/terrortime/LoginActivity;Lcom/badguy/terrortime/Client;)V

    .line 69
    iget-object v2, p0, Lcom/badguy/terrortime/LoginActivity$1;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/LoginActivity;->access$200(Lcom/badguy/terrortime/LoginActivity;)V

    .line 72
    .end local v0    # "result":Z
    .end local v1    # "client":Lcom/badguy/terrortime/Client;
    goto :goto_0

    .line 66
    .restart local v0    # "result":Z
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Connection failed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v0    # "result":Z
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$1;->this$0:Lcom/badguy/terrortime/LoginActivity;

    const-string v2, "Unable to connect to chat server"

    invoke-static {v1, v2}, Lcom/badguy/terrortime/LoginActivity;->access$300(Lcom/badguy/terrortime/LoginActivity;Ljava/lang/String;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
