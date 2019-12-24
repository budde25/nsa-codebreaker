.class public Lcom/badguy/terrortime/RegisterActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;
    }
.end annotation


# instance fields
.field private cancel:Z

.field private clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

.field mCancelView:Landroid/widget/TextView;

.field private mChatUserNameField:Landroid/widget/EditText;

.field private mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

.field private mPasswordField:Landroid/widget/EditText;

.field private mPinField:Landroid/widget/EditText;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field mRegisterButton:Landroid/widget/Button;

.field private mRegisterFormView:Landroid/view/View;

.field private mXMPPServerIPAddrField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    .line 51
    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    .line 52
    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

    .line 53
    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mChatUserNameField:Landroid/widget/EditText;

    .line 54
    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mPasswordField:Landroid/widget/EditText;

    .line 55
    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mPinField:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 58
    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mRegisterButton:Landroid/widget/Button;

    .line 59
    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mCancelView:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mRegisterFormView:Landroid/view/View;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badguy/terrortime/RegisterActivity;->cancel:Z

    return-void
.end method

.method static synthetic access$000(Lcom/badguy/terrortime/RegisterActivity;Ljava/util/Map;)Z
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/RegisterActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .line 43
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/RegisterActivity;->validateFields(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/badguy/terrortime/RegisterActivity;)Lcom/badguy/terrortime/ClientDBHandlerClass;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/RegisterActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    return-object v0
.end method

.method static synthetic access$102(Lcom/badguy/terrortime/RegisterActivity;Lcom/badguy/terrortime/ClientDBHandlerClass;)Lcom/badguy/terrortime/ClientDBHandlerClass;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/RegisterActivity;
    .param p1, "x1"    # Lcom/badguy/terrortime/ClientDBHandlerClass;

    .line 43
    iput-object p1, p0, Lcom/badguy/terrortime/RegisterActivity;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    return-object p1
.end method

.method static synthetic access$200(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/RegisterActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mPinField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/badguy/terrortime/RegisterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/RegisterActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/badguy/terrortime/RegisterActivity;->registerNewTerrorist()V

    return-void
.end method

.method static synthetic access$400(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/RegisterActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mChatUserNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/RegisterActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/RegisterActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/RegisterActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/RegisterActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mPasswordField:Landroid/widget/EditText;

    return-object v0
.end method

.method private registerNewTerrorist()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 384
    new-instance v0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;

    invoke-direct {v0, p0}, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;-><init>(Lcom/badguy/terrortime/RegisterActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 385
    return-void

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect to Client database. Try again or select \"cancel\"."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 392
    .local p1, "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 393
    .local v0, "isValid":Z
    new-instance v1, Lcom/badguy/terrortime/ParameterValidatorClass;

    invoke-direct {v1}, Lcom/badguy/terrortime/ParameterValidatorClass;-><init>()V

    .line 394
    .local v1, "pvalidator":Lcom/badguy/terrortime/ParameterValidatorClass;
    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity;->mChatUserNameField:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity;->mPinField:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 399
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 402
    .local v3, "field":Landroid/widget/EditText;
    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 403
    .local v4, "fName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 405
    .local v5, "fText":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 408
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 410
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f0e0044

    invoke-virtual {p0, v7}, Lcom/badguy/terrortime/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 412
    const/4 v0, 0x0

    .line 413
    goto/16 :goto_2

    .line 416
    :cond_0
    iget-object v6, p0, Lcom/badguy/terrortime/RegisterActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    const v7, 0x7f0e0048

    if-ne v3, v6, :cond_1

    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidIpAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 417
    invoke-virtual {p0, v7}, Lcom/badguy/terrortime/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 418
    const/4 v0, 0x0

    .line 419
    goto/16 :goto_2

    .line 420
    :cond_1
    iget-object v6, p0, Lcom/badguy/terrortime/RegisterActivity;->mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

    if-ne v3, v6, :cond_2

    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidIpAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 421
    invoke-virtual {p0, v7}, Lcom/badguy/terrortime/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 422
    const/4 v0, 0x0

    .line 423
    goto/16 :goto_2

    .line 424
    :cond_2
    iget-object v6, p0, Lcom/badguy/terrortime/RegisterActivity;->mChatUserNameField:Landroid/widget/EditText;

    if-ne v3, v6, :cond_3

    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidUserName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 425
    const v6, 0x7f0e0049

    invoke-virtual {p0, v6}, Lcom/badguy/terrortime/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 426
    const/4 v0, 0x0

    .line 427
    goto :goto_2

    .line 428
    :cond_3
    iget-object v6, p0, Lcom/badguy/terrortime/RegisterActivity;->mPasswordField:Landroid/widget/EditText;

    if-ne v3, v6, :cond_4

    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidPassword(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 429
    const v6, 0x7f0e0046

    invoke-virtual {p0, v6}, Lcom/badguy/terrortime/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 430
    const/4 v0, 0x0

    .line 431
    goto :goto_2

    .line 432
    :cond_4
    iget-object v6, p0, Lcom/badguy/terrortime/RegisterActivity;->mPinField:Landroid/widget/EditText;

    if-ne v3, v6, :cond_5

    invoke-virtual {v1, v5}, Lcom/badguy/terrortime/ParameterValidatorClass;->isValidPin(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 433
    const v6, 0x7f0e0047

    invoke-virtual {p0, v6}, Lcom/badguy/terrortime/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 434
    const/4 v0, 0x0

    .line 435
    goto :goto_2

    .line 440
    .end local v4    # "fName":Ljava/lang/String;
    .end local v5    # "fText":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 406
    .restart local v4    # "fName":Ljava/lang/String;
    .restart local v5    # "fText":Ljava/lang/String;
    :cond_6
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

    .line 437
    .end local v4    # "fName":Ljava/lang/String;
    .end local v5    # "fText":Ljava/lang/String;
    .restart local v0    # "isValid":Z
    .restart local v1    # "pvalidator":Lcom/badguy/terrortime/ParameterValidatorClass;
    .restart local v3    # "field":Landroid/widget/EditText;
    .restart local p1    # "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 438
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "EXCEPTION LOG"

    const-string v6, "validateFields: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    invoke-virtual {p0}, Lcom/badguy/terrortime/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 441
    .end local v3    # "field":Landroid/widget/EditText;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    goto/16 :goto_0

    .line 443
    :cond_7
    :goto_2
    return v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/RegisterActivity;->setContentView(I)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badguy/terrortime/RegisterActivity;->cancel:Z

    .line 69
    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mChatUserNameField:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mPasswordField:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mPinField:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mRegisterFormView:Landroid/view/View;

    .line 75
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mCancelView:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mRegisterButton:Landroid/widget/Button;

    .line 77
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 79
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v0, "fMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity;->mXMPPServerIPAddrField:Landroid/widget/EditText;

    const-string v2, "xmppServerIPField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity;->mOAUTH2ServerIPAddrField:Landroid/widget/EditText;

    const-string v2, "oauth2ServerIPField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity;->mChatUserNameField:Landroid/widget/EditText;

    const-string v2, "clientIdField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity;->mPasswordField:Landroid/widget/EditText;

    const-string v2, "clientSecretField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity;->mPinField:Landroid/widget/EditText;

    const-string v2, "pinField"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity;->mPinField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badguy/terrortime/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v1

    iput-object v1, p0, Lcom/badguy/terrortime/RegisterActivity;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    .line 94
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity;->mRegisterButton:Landroid/widget/Button;

    new-instance v2, Lcom/badguy/terrortime/RegisterActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/badguy/terrortime/RegisterActivity$1;-><init>(Lcom/badguy/terrortime/RegisterActivity;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity;->mCancelView:Landroid/widget/TextView;

    new-instance v2, Lcom/badguy/terrortime/RegisterActivity$2;

    invoke-direct {v2, p0}, Lcom/badguy/terrortime/RegisterActivity$2;-><init>(Lcom/badguy/terrortime/RegisterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 207
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 208
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    .line 212
    :cond_0
    return-void
.end method
