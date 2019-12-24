.class Lcom/badguy/terrortime/ContactActivity$4;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/ContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/ContactActivity;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/ContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/ContactActivity;

    .line 171
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$4;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 173
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$4;->this$0:Lcom/badguy/terrortime/ContactActivity;

    const-class v2, Lcom/badguy/terrortime/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$4;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v1, v0}, Lcom/badguy/terrortime/ContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$4;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v1}, Lcom/badguy/terrortime/ContactActivity;->finish()V

    .line 176
    return-void
.end method
