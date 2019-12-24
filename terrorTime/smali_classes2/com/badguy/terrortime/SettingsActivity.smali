.class public Lcom/badguy/terrortime/SettingsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SettingsActivity.java"


# instance fields
.field private clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

.field private mChatUserNameField:Landroid/widget/EditText;

.field public mClearTokenView:Landroid/widget/TextView;

.field private mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

.field private mPasswordField:Landroid/widget/EditText;

.field private mPinField:Landroid/widget/EditText;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mSettingsButton:Landroid/widget/Button;

.field private mXMPPServerIPAddrField:Landroid/widget/EditText;

.field private name:Ljava/lang/String;

.field private pin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    .line 22
    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 24
    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mChatUserNameField:Landroid/widget/EditText;

    .line 25
    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mPinField:Landroid/widget/EditText;

    .line 26
    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    .line 27
    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

    .line 28
    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mPasswordField:Landroid/widget/EditText;

    .line 29
    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mSettingsButton:Landroid/widget/Button;

    .line 30
    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mClearTokenView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/badguy/terrortime/SettingsActivity;Ljava/util/Map;)Z
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/SettingsActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .line 19
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/SettingsActivity;->validateFields(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/badguy/terrortime/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/badguy/terrortime/SettingsActivity;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/badguy/terrortime/SettingsActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/SettingsActivity;

    .line 19
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mChatUserNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$302(Lcom/badguy/terrortime/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/badguy/terrortime/SettingsActivity;->pin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/badguy/terrortime/SettingsActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/SettingsActivity;

    .line 19
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mPinField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/badguy/terrortime/SettingsActivity;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/SettingsActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .line 19
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/SettingsActivity;->updateClientSettings(Ljava/util/Map;)V

    return-void
.end method

.method private updateClientSettings(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/widget/EditText;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "fMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 138
    .local v0, "client":Lcom/badguy/terrortime/Client;
    new-instance v1, Lcom/badguy/terrortime/CheckedClient;

    iget-object v2, p0, Lcom/badguy/terrortime/SettingsActivity;->mChatUserNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/badguy/terrortime/SettingsActivity;->mPinField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/badguy/terrortime/CheckedClient;-><init>(Lcom/badguy/terrortime/SettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    .local v1, "checkedClient":Lcom/badguy/terrortime/CheckedClient;
    invoke-virtual {v1}, Lcom/badguy/terrortime/CheckedClient;->updateClientSettings()V

    .line 140
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

    .line 143
    .local p1, "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 144
    .local v0, "isValid":Z
    new-instance v1, Lcom/badguy/terrortime/ParameterValidatorClass;

    invoke-direct {v1}, Lcom/badguy/terrortime/ParameterValidatorClass;-><init>()V

    .line 145
    .local v1, "pvalidator":Lcom/badguy/terrortime/ParameterValidatorClass;
    iget-object v2, p0, Lcom/badguy/terrortime/SettingsActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lcom/badguy/terrortime/SettingsActivity;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 148
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 151
    .local v3, "field":Landroid/widget/EditText;
    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 152
    .local v4, "fName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 154
    .local v5, "fText":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 157
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 159
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const v7, 0x7f0e0048

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/badguy/terrortime/SettingsActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    if-ne v3, v6, :cond_0

    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidIpAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 160
    invoke-virtual {p0, v7}, Lcom/badguy/terrortime/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 161
    const/4 v0, 0x0

    .line 162
    goto/16 :goto_2

    .line 163
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/badguy/terrortime/SettingsActivity;->mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

    if-ne v3, v6, :cond_1

    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidIpAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 164
    invoke-virtual {p0, v7}, Lcom/badguy/terrortime/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 165
    const/4 v0, 0x0

    .line 166
    goto/16 :goto_2

    .line 167
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/badguy/terrortime/SettingsActivity;->mPasswordField:Landroid/widget/EditText;

    if-ne v3, v6, :cond_2

    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidPassword(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 168
    const v6, 0x7f0e0046

    invoke-virtual {p0, v6}, Lcom/badguy/terrortime/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v0, 0x0

    .line 170
    goto/16 :goto_2

    .line 171
    :cond_2
    iget-object v6, p0, Lcom/badguy/terrortime/SettingsActivity;->mChatUserNameField:Landroid/widget/EditText;

    const v7, 0x7f0e0044

    if-ne v3, v6, :cond_4

    .line 172
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 173
    invoke-virtual {p0, v7}, Lcom/badguy/terrortime/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 174
    const/4 v0, 0x0

    .line 175
    goto/16 :goto_2

    .line 177
    :cond_3
    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidUserName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 178
    const v6, 0x7f0e0049

    invoke-virtual {p0, v6}, Lcom/badguy/terrortime/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 179
    const/4 v0, 0x0

    .line 180
    goto :goto_2

    .line 183
    :cond_4
    iget-object v6, p0, Lcom/badguy/terrortime/SettingsActivity;->mPinField:Landroid/widget/EditText;

    if-ne v3, v6, :cond_6

    .line 184
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 186
    invoke-virtual {p0, v7}, Lcom/badguy/terrortime/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v0, 0x0

    .line 188
    goto :goto_2

    .line 190
    :cond_5
    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidPin(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 191
    const v6, 0x7f0e0047

    invoke-virtual {p0, v6}, Lcom/badguy/terrortime/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v0, 0x0

    .line 193
    goto :goto_2

    .line 200
    .end local v4    # "fName":Ljava/lang/String;
    .end local v5    # "fText":Ljava/lang/String;
    :cond_6
    goto :goto_1

    .line 155
    .restart local v4    # "fName":Ljava/lang/String;
    .restart local v5    # "fText":Ljava/lang/String;
    :cond_7
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

    .line 197
    .end local v4    # "fName":Ljava/lang/String;
    .end local v5    # "fText":Ljava/lang/String;
    .restart local v0    # "isValid":Z
    .restart local v1    # "pvalidator":Lcom/badguy/terrortime/ParameterValidatorClass;
    .restart local v3    # "field":Landroid/widget/EditText;
    .restart local p1    # "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 198
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "EXCEPTION LOG"

    const-string v6, "validateFields: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-virtual {p0}, Lcom/badguy/terrortime/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 201
    .end local v3    # "field":Landroid/widget/EditText;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    goto/16 :goto_0

    .line 203
    :cond_8
    :goto_2
    return v0
.end method


# virtual methods
.method public alertAndFinish(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 208
    move-object v0, p1

    .line 209
    .local v0, "dialogMsg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 210
    const-string v0, ""

    .line 212
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings failed. Select OK to close window. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 215
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/badguy/terrortime/SettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/badguy/terrortime/SettingsActivity$3;-><init>(Lcom/badguy/terrortime/SettingsActivity;)V

    .line 216
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 224
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 225
    .local v2, "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 226
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/SettingsActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 40
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 42
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mChatUserNameField:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mPinField:Landroid/widget/EditText;

    .line 44
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    .line 45
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

    .line 46
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mPasswordField:Landroid/widget/EditText;

    .line 47
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mSettingsButton:Landroid/widget/Button;

    .line 48
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/badguy/terrortime/SettingsActivity;->mClearTokenView:Landroid/widget/TextView;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, "fMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/badguy/terrortime/SettingsActivity;->mChatUserNameField:Landroid/widget/EditText;

    const-string v2, "chatUserNameField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/badguy/terrortime/SettingsActivity;->mPinField:Landroid/widget/EditText;

    const-string v2, "pinField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/badguy/terrortime/SettingsActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    const-string v2, "xmppServerIPField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/badguy/terrortime/SettingsActivity;->mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

    const-string v2, "oauth2ServerIPField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/badguy/terrortime/SettingsActivity;->mPasswordField:Landroid/widget/EditText;

    const-string v2, "passwordField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badguy/terrortime/SettingsActivity;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    .line 58
    iget-object v1, p0, Lcom/badguy/terrortime/SettingsActivity;->mClearTokenView:Landroid/widget/TextView;

    new-instance v2, Lcom/badguy/terrortime/SettingsActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/badguy/terrortime/SettingsActivity$1;-><init>(Lcom/badguy/terrortime/SettingsActivity;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/badguy/terrortime/SettingsActivity;->mSettingsButton:Landroid/widget/Button;

    new-instance v2, Lcom/badguy/terrortime/SettingsActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/badguy/terrortime/SettingsActivity$2;-><init>(Lcom/badguy/terrortime/SettingsActivity;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method
