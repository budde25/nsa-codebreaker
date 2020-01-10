.class Lcom/badguy/terrortime/CheckedClient$1;
.super Ljava/lang/Object;
.source "CheckedClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/CheckedClient;->taskAlertAndFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/CheckedClient;

.field final synthetic val$activity:Lcom/badguy/terrortime/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/CheckedClient;Lcom/badguy/terrortime/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/CheckedClient;

    .line 276
    iput-object p1, p0, Lcom/badguy/terrortime/CheckedClient$1;->this$0:Lcom/badguy/terrortime/CheckedClient;

    iput-object p2, p0, Lcom/badguy/terrortime/CheckedClient$1;->val$activity:Lcom/badguy/terrortime/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 278
    const-string v0, "SettingsActivity"

    const-string v1, "Closing SettingsActivity after error."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 280
    iget-object v0, p0, Lcom/badguy/terrortime/CheckedClient$1;->val$activity:Lcom/badguy/terrortime/SettingsActivity;

    invoke-virtual {v0}, Lcom/badguy/terrortime/SettingsActivity;->finish()V

    .line 281
    return-void
.end method
