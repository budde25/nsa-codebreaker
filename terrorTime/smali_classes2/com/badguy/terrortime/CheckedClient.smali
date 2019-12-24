.class public Lcom/badguy/terrortime/CheckedClient;
.super Ljava/lang/Object;
.source "CheckedClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badguy/terrortime/CheckedClient$modCheckedClient;
    }
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;

.field private context:Lcom/badguy/terrortime/SettingsActivity;

.field private fMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/EditText;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/badguy/terrortime/SettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Lcom/badguy/terrortime/SettingsActivity;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badguy/terrortime/SettingsActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/widget/EditText;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p4, "fMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/CheckedClient;->clientId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/badguy/terrortime/CheckedClient;->pin:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/badguy/terrortime/CheckedClient;->context:Lcom/badguy/terrortime/SettingsActivity;

    .line 25
    const-string v0, "ERROR"

    if-nez p1, :cond_0

    .line 26
    const-string v1, "Activity context was null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    :cond_0
    if-nez p3, :cond_1

    .line 30
    const-string v1, "Pin was null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    :cond_1
    if-nez p2, :cond_2

    .line 34
    const-string v1, "Client id was null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_2
    if-nez p4, :cond_3

    .line 38
    const-string v1, "Field map was null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_3
    iput-object p1, p0, Lcom/badguy/terrortime/CheckedClient;->context:Lcom/badguy/terrortime/SettingsActivity;

    .line 42
    iput-object p2, p0, Lcom/badguy/terrortime/CheckedClient;->clientId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/badguy/terrortime/CheckedClient;->pin:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/badguy/terrortime/CheckedClient;->fMap:Ljava/util/Map;

    .line 46
    invoke-virtual {p1}, Lcom/badguy/terrortime/SettingsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "currentView":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 48
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Lcom/badguy/terrortime/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 49
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 52
    .end local v0    # "currentView":Landroid/view/View;
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    :goto_0
    return-void
.end method

.method private clientIdIsCorrect()Z
    .locals 3

    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, "success":Z
    iget-object v1, p0, Lcom/badguy/terrortime/CheckedClient;->pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/badguy/terrortime/CheckedClient;->context:Lcom/badguy/terrortime/SettingsActivity;

    invoke-virtual {v2}, Lcom/badguy/terrortime/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v1

    .line 58
    .local v1, "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    if-nez v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 60
    const-string v2, "Activity: Failed to open client database. clientDB was null."

    invoke-direct {p0, v2}, Lcom/badguy/terrortime/CheckedClient;->taskAlertAndFinish(Ljava/lang/String;)V

    .line 63
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/badguy/terrortime/CheckedClient;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countClients(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 64
    const/4 v0, 0x0

    .line 67
    :cond_1
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V

    .line 69
    :cond_2
    return v0
.end method

.method private taskAlertAndFinish(Ljava/lang/String;)V
    .locals 5
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/badguy/terrortime/CheckedClient;->context:Lcom/badguy/terrortime/SettingsActivity;

    .line 268
    .local v0, "activity":Lcom/badguy/terrortime/SettingsActivity;
    move-object v1, p1

    .line 269
    .local v1, "dialogMsg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 270
    const-string v1, ""

    .line 272
    :cond_0
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    const-string v3, "ERROR"

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings failed. Select OK to close window. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 275
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/badguy/terrortime/CheckedClient$1;

    invoke-direct {v3, p0, v0}, Lcom/badguy/terrortime/CheckedClient$1;-><init>(Lcom/badguy/terrortime/CheckedClient;Lcom/badguy/terrortime/SettingsActivity;)V

    .line 276
    const-string v4, "OK"

    invoke-virtual {v2, v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 284
    .local v2, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 285
    .local v3, "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 286
    return-void
.end method


# virtual methods
.method public updateClientSettings()V
    .locals 6

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "client":Lcom/badguy/terrortime/Client;
    invoke-direct {p0}, Lcom/badguy/terrortime/CheckedClient;->clientIdIsCorrect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/badguy/terrortime/CheckedClient;->context:Lcom/badguy/terrortime/SettingsActivity;

    const-string v2, "Bad Client Id"

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/SettingsActivity;->alertAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/badguy/terrortime/CheckedClient;->pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/badguy/terrortime/CheckedClient;->context:Lcom/badguy/terrortime/SettingsActivity;

    invoke-virtual {v2}, Lcom/badguy/terrortime/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v1

    .line 82
    .local v1, "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    if-nez v1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/badguy/terrortime/CheckedClient;->context:Lcom/badguy/terrortime/SettingsActivity;

    const-string v3, "Activity: Failed to open client database. clientDB was null."

    invoke-virtual {v2, v3}, Lcom/badguy/terrortime/SettingsActivity;->alertAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/badguy/terrortime/CheckedClient;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getClient(Ljava/lang/String;)Lcom/badguy/terrortime/Client;

    move-result-object v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    invoke-virtual {v1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V

    .line 89
    const-string v2, "Activity: Unknown error. Did not get client from database."

    invoke-direct {p0, v2}, Lcom/badguy/terrortime/CheckedClient;->taskAlertAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/badguy/terrortime/CheckedClient;->pin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/badguy/terrortime/Client;->setEncryptPin(Ljava/lang/String;)V

    .line 93
    if-eqz v1, :cond_3

    .line 94
    invoke-virtual {v1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V

    .line 99
    :cond_3
    new-instance v2, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;

    iget-object v3, p0, Lcom/badguy/terrortime/CheckedClient;->context:Lcom/badguy/terrortime/SettingsActivity;

    iget-object v4, p0, Lcom/badguy/terrortime/CheckedClient;->fMap:Ljava/util/Map;

    invoke-direct {v2, v3, v0, v4}, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;-><init>(Lcom/badguy/terrortime/SettingsActivity;Lcom/badguy/terrortime/Client;Ljava/util/Map;)V

    .line 100
    .local v2, "updateTask":Lcom/badguy/terrortime/CheckedClient$modCheckedClient;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Void;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    .end local v1    # "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    .end local v2    # "updateTask":Lcom/badguy/terrortime/CheckedClient$modCheckedClient;
    :goto_0
    return-void
.end method
