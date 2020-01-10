.class public Lcom/badguy/terrortime/LoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badguy/terrortime/LoginActivity$UserLoginTask;
    }
.end annotation


# instance fields
.field private mChatUserNameField:Landroid/widget/EditText;

.field private mLoginButton:Landroid/widget/Button;

.field private mLoginReceiver:Landroid/content/BroadcastReceiver;

.field private mLoginTask:Lcom/badguy/terrortime/LoginActivity$UserLoginTask;

.field private mPinField:Landroid/widget/EditText;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginTask:Lcom/badguy/terrortime/LoginActivity$UserLoginTask;

    .line 39
    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mChatUserNameField:Landroid/widget/EditText;

    .line 40
    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mPinField:Landroid/widget/EditText;

    .line 41
    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginButton:Landroid/widget/Button;

    .line 42
    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 43
    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/LoginActivity;

    .line 36
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/badguy/terrortime/LoginActivity;Lcom/badguy/terrortime/Client;)V
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/LoginActivity;
    .param p1, "x1"    # Lcom/badguy/terrortime/Client;

    .line 36
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/LoginActivity;->savePublicKeyToVCard(Lcom/badguy/terrortime/Client;)V

    return-void
.end method

.method static synthetic access$200(Lcom/badguy/terrortime/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/LoginActivity;

    .line 36
    invoke-direct {p0}, Lcom/badguy/terrortime/LoginActivity;->launchContactActivityAndFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/badguy/terrortime/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/LoginActivity;->showAlertAndFinishActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/badguy/terrortime/LoginActivity;Lcom/badguy/terrortime/LoginActivity$UserLoginTask;)Lcom/badguy/terrortime/LoginActivity$UserLoginTask;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/LoginActivity;
    .param p1, "x1"    # Lcom/badguy/terrortime/LoginActivity$UserLoginTask;

    .line 36
    iput-object p1, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginTask:Lcom/badguy/terrortime/LoginActivity$UserLoginTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/badguy/terrortime/LoginActivity;Ljava/util/Map;)Z
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/LoginActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .line 36
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/LoginActivity;->validateFields(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/badguy/terrortime/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/LoginActivity;

    .line 36
    invoke-direct {p0}, Lcom/badguy/terrortime/LoginActivity;->execTask()V

    return-void
.end method

.method static synthetic access$700(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/LoginActivity;

    .line 36
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/LoginActivity;

    .line 36
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mChatUserNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/LoginActivity;

    .line 36
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mPinField:Landroid/widget/EditText;

    return-object v0
.end method

.method private execTask()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginTask:Lcom/badguy/terrortime/LoginActivity$UserLoginTask;

    if-eqz v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    new-instance v0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;

    invoke-direct {v0, p0}, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;-><init>(Lcom/badguy/terrortime/LoginActivity;)V

    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginTask:Lcom/badguy/terrortime/LoginActivity$UserLoginTask;

    .line 224
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginTask:Lcom/badguy/terrortime/LoginActivity$UserLoginTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 226
    return-void
.end method

.method static synthetic lambda$savePublicKeyToVCard$0()Ljava/lang/Exception;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Missing public key"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private launchContactActivityAndFinish()V
    .locals 2

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/badguy/terrortime/ContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, "contactIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/badguy/terrortime/LoginActivity;->finish()V

    .line 169
    return-void
.end method

.method private savePublicKeyToVCard(Lcom/badguy/terrortime/Client;)V
    .locals 4
    .param p1, "client"    # Lcom/badguy/terrortime/Client;

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "result":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getRsaPublicKey()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/badguy/terrortime/-$$Lambda$LoginActivity$YcawHEfealIw5425nWdRe1UadVY;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$LoginActivity$YcawHEfealIw5425nWdRe1UadVY;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    .line 156
    .local v1, "key":Ljava/security/PublicKey;
    invoke-static {v1}, Lcom/badguy/terrortime/VCardHelper;->savePublicKey(Ljava/security/PublicKey;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 159
    .end local v1    # "key":Ljava/security/PublicKey;
    goto :goto_0

    .line 157
    :catchall_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "EXCEPTION"

    const-string v3, "Public key error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_0

    const-string v1, "Unable to save public key to server"

    invoke-direct {p0, v1}, Lcom/badguy/terrortime/LoginActivity;->showAlertAndFinishActivity(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method private showAlertAndFinishActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 476
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 477
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 478
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 479
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/badguy/terrortime/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/badguy/terrortime/LoginActivity$3;-><init>(Lcom/badguy/terrortime/LoginActivity;)V

    .line 480
    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 488
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 489
    .local v1, "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 490
    return-void
.end method

.method private validateFields(Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/widget/EditText;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 175
    .local p1, "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 176
    .local v0, "isValid":Z
    new-instance v1, Lcom/badguy/terrortime/ParameterValidatorClass;

    invoke-direct {v1}, Lcom/badguy/terrortime/ParameterValidatorClass;-><init>()V

    .line 177
    .local v1, "pvalidator":Lcom/badguy/terrortime/ParameterValidatorClass;
    iget-object v2, p0, Lcom/badguy/terrortime/LoginActivity;->mChatUserNameField:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v2, p0, Lcom/badguy/terrortime/LoginActivity;->mPinField:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 181
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 184
    .local v3, "field":Landroid/widget/EditText;
    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 185
    .local v4, "fName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 187
    .local v5, "fText":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 190
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 192
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f0e0044

    invoke-virtual {p0, v7}, Lcom/badguy/terrortime/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 194
    const/4 v0, 0x0

    .line 195
    goto :goto_2

    .line 197
    :cond_0
    iget-object v6, p0, Lcom/badguy/terrortime/LoginActivity;->mChatUserNameField:Landroid/widget/EditText;

    if-ne v3, v6, :cond_1

    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidUserName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 198
    const v6, 0x7f0e0049

    invoke-virtual {p0, v6}, Lcom/badguy/terrortime/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v0, 0x0

    .line 200
    goto :goto_2

    .line 201
    :cond_1
    iget-object v6, p0, Lcom/badguy/terrortime/LoginActivity;->mPinField:Landroid/widget/EditText;

    if-ne v3, v6, :cond_2

    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidPin(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 202
    const v6, 0x7f0e0047

    invoke-virtual {p0, v6}, Lcom/badguy/terrortime/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 203
    const/4 v0, 0x0

    .line 204
    goto :goto_2

    .line 209
    .end local v4    # "fName":Ljava/lang/String;
    .end local v5    # "fText":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 188
    .restart local v4    # "fName":Ljava/lang/String;
    .restart local v5    # "fText":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fatal Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " was null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "isValid":Z
    .end local v1    # "pvalidator":Lcom/badguy/terrortime/ParameterValidatorClass;
    .end local v3    # "field":Landroid/widget/EditText;
    .end local p1    # "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v4    # "fName":Ljava/lang/String;
    .end local v5    # "fText":Ljava/lang/String;
    .restart local v0    # "isValid":Z
    .restart local v1    # "pvalidator":Lcom/badguy/terrortime/ParameterValidatorClass;
    .restart local v3    # "field":Landroid/widget/EditText;
    .restart local p1    # "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 207
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "EXCEPTION LOG"

    const-string v6, "validateFields: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    invoke-virtual {p0}, Lcom/badguy/terrortime/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 210
    .end local v3    # "field":Landroid/widget/EditText;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    goto/16 :goto_0

    .line 212
    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public final launchSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/badguy/terrortime/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 473
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/LoginActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mChatUserNameField:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mPinField:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginButton:Landroid/widget/Button;

    .line 53
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 54
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "fMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity;->mChatUserNameField:Landroid/widget/EditText;

    const-string v2, "chatUserNameField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity;->mPinField:Landroid/widget/EditText;

    const-string v2, "pinField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Lcom/badguy/terrortime/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/badguy/terrortime/LoginActivity$1;-><init>(Lcom/badguy/terrortime/LoginActivity;)V

    iput-object v1, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "XMPP_INITIALIZE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 80
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginButton:Landroid/widget/Button;

    new-instance v2, Lcom/badguy/terrortime/LoginActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/badguy/terrortime/LoginActivity$2;-><init>(Lcom/badguy/terrortime/LoginActivity;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .line 146
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity;->mLoginTask:Lcom/badguy/terrortime/LoginActivity$UserLoginTask;

    if-eqz v0, :cond_0

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->cancel(Z)Z

    .line 149
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 150
    return-void
.end method
