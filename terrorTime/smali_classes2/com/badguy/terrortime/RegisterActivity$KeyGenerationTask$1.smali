.class Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->onPostExecute(Lcom/badguy/terrortime/Client;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;

.field final synthetic val$activity:Lcom/badguy/terrortime/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;Lcom/badguy/terrortime/RegisterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;

    .line 351
    iput-object p1, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask$1;->this$0:Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;

    iput-object p2, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask$1;->val$activity:Lcom/badguy/terrortime/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 353
    const-string v0, "keygen task"

    const-string v1, "Key generation failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 355
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask$1;->val$activity:Lcom/badguy/terrortime/RegisterActivity;

    invoke-virtual {v0}, Lcom/badguy/terrortime/RegisterActivity;->finish()V

    .line 356
    return-void
.end method
