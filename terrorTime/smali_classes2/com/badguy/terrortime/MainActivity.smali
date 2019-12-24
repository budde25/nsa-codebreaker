.class public Lcom/badguy/terrortime/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "crypto"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    const-string v0, "ssl"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    const-string v0, "terrortime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 20
    const-string v0, "Android : "

    iput-object v0, p0, Lcom/badguy/terrortime/MainActivity;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final launchLoginActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/badguy/terrortime/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method public final launchRegisterActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/badguy/terrortime/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/MainActivity;->setContentView(I)V

    .line 26
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 75
    invoke-virtual {p0}, Lcom/badguy/terrortime/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 76
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 77
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/badguy/terrortime/MainActivity;->msg:Ljava/lang/String;

    const-string v1, "The onDestroy() event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080073

    if-eq v0, v1, :cond_0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 84
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/badguy/terrortime/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    const/4 v1, 0x1

    return v1
.end method

.method protected onPause()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 56
    iget-object v0, p0, Lcom/badguy/terrortime/MainActivity;->msg:Ljava/lang/String;

    const-string v1, "The onPause() event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 48
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/badguy/terrortime/MainActivity;->msg:Ljava/lang/String;

    const-string v1, "The onResume() event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 42
    iget-object v0, p0, Lcom/badguy/terrortime/MainActivity;->msg:Ljava/lang/String;

    const-string v1, "The onStart() event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 63
    iget-object v0, p0, Lcom/badguy/terrortime/MainActivity;->msg:Ljava/lang/String;

    const-string v1, "The onStop() event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method
