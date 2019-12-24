.class Lcom/badguy/terrortime/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/RegisterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/RegisterActivity;

    .line 196
    iput-object p1, p0, Lcom/badguy/terrortime/RegisterActivity$2;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 200
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$2;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-virtual {v0}, Lcom/badguy/terrortime/RegisterActivity;->finish()V

    .line 201
    return-void
.end method
