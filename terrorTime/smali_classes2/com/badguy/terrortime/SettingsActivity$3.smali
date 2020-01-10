.class Lcom/badguy/terrortime/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/SettingsActivity;->alertAndFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/SettingsActivity;

    .line 216
    iput-object p1, p0, Lcom/badguy/terrortime/SettingsActivity$3;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 218
    const-string v0, "SettingsActivity"

    const-string v1, "Closing SettingsActivity after error."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 220
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity$3;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    invoke-virtual {v0}, Lcom/badguy/terrortime/SettingsActivity;->finish()V

    .line 221
    return-void
.end method
