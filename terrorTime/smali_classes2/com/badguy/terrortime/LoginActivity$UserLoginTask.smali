.class public Lcom/badguy/terrortime/LoginActivity$UserLoginTask;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserLoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/badguy/terrortime/Client;",
        ">;"
    }
.end annotation


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/badguy/terrortime/LoginActivity;",
            ">;"
        }
    .end annotation
.end field

.field private client:Lcom/badguy/terrortime/Client;

.field private clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

.field private errorMsg:Ljava/lang/String;

.field private success:Z


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/LoginActivity;)V
    .locals 10
    .param p1, "context"    # Lcom/badguy/terrortime/LoginActivity;

    .line 254
    const-string v0, "Check client id and pin."

    const-string v1, "ERROR"

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 251
    const-string v2, ""

    iput-object v2, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    .line 252
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    .line 255
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 256
    iget-object v3, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badguy/terrortime/LoginActivity;

    .line 257
    .local v3, "activity":Lcom/badguy/terrortime/LoginActivity;
    const v4, 0x7f080068

    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 258
    .local v4, "taskUserName":Landroid/widget/EditText;
    const v5, 0x7f08006e

    invoke-virtual {v3, v5}, Lcom/badguy/terrortime/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 259
    .local v5, "taskPin":Landroid/widget/EditText;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->client:Lcom/badguy/terrortime/Client;

    .line 268
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/badguy/terrortime/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v7

    iput-object v7, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    .line 269
    iget-object v7, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "LoginActivity"

    if-nez v7, :cond_0

    .line 270
    :try_start_1
    iput-boolean v6, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    .line 271
    const-string v7, "Unknown application database error. Could not connect to database."

    iput-object v7, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    .line 272
    const-string v7, "Failed to open client database. clientDB was null."

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_0
    iget-object v7, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getClient(Ljava/lang/String;)Lcom/badguy/terrortime/Client;

    move-result-object v7

    iput-object v7, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->client:Lcom/badguy/terrortime/Client;

    .line 275
    const-string v7, "Connected to client database successfully."

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    iget-boolean v7, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->client:Lcom/badguy/terrortime/Client;

    if-nez v7, :cond_1

    .line 278
    iput-boolean v6, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    .line 279
    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    .line 280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad Client id: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 281
    :cond_1
    iget-boolean v7, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    if-eqz v7, :cond_2

    .line 283
    iget-object v7, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->client:Lcom/badguy/terrortime/Client;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badguy/terrortime/Client;->setEncryptPin(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :cond_2
    :goto_1
    goto :goto_2

    .line 286
    :catch_0
    move-exception v7

    .line 287
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "UserLoginTask: "

    invoke-static {v1, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    iput-object v0, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    .line 290
    :cond_3
    iput-boolean v6, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    .line 296
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    iget-boolean v0, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    if-nez v0, :cond_4

    .line 297
    invoke-virtual {p0, v2}, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->cancel(Z)Z

    .line 301
    :cond_4
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Lcom/badguy/terrortime/Client;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .line 342
    const-string v0, "ERROR"

    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badguy/terrortime/LoginActivity;

    .line 347
    .local v1, "activity":Lcom/badguy/terrortime/LoginActivity;
    const/4 v2, 0x0

    :try_start_0
    iget-boolean v3, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->client:Lcom/badguy/terrortime/Client;

    if-nez v3, :cond_0

    .line 348
    iput-boolean v2, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    .line 349
    const-string v3, "Unknown error: Null Client"

    iput-object v3, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    .line 350
    const-string v3, "LoginActivity: Null client in UserLoginTask background thread"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_0
    iget-boolean v3, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    if-eqz v3, :cond_1

    .line 363
    iget-object v3, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->client:Lcom/badguy/terrortime/Client;

    invoke-virtual {v3}, Lcom/badguy/terrortime/Client;->generateSymmetricKey()Ljavax/crypto/SecretKey;

    .line 364
    iget-object v3, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->client:Lcom/badguy/terrortime/Client;

    invoke-virtual {v1}, Lcom/badguy/terrortime/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/Client;->validateAccessToken(Landroid/content/Context;)V

    .line 365
    const-string v3, "LOGINACTIVITY"

    const-string v4, "Token request successful. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_1
    :goto_0
    goto :goto_1

    .line 368
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Ljava/lang/Exception;
    iput-boolean v2, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    .line 376
    iget-object v2, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    const-string v2, "Check client id and pin."

    iput-object v2, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    .line 379
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoginActivitiy: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "LoginActivity"

    const-string v2, "Login background thread success."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->client:Lcom/badguy/terrortime/Client;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 246
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->doInBackground([Ljava/lang/Void;)Lcom/badguy/terrortime/Client;

    move-result-object p1

    return-object p1
.end method

.method protected final onCancelled()V
    .locals 3

    .line 445
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 446
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/LoginActivity;

    .line 447
    .local v0, "activity":Lcom/badguy/terrortime/LoginActivity;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    .line 448
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 449
    const-string v1, "Login failed for unknown reason."

    iput-object v1, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    .line 451
    :cond_0
    const-string v1, "LoginActivity"

    const-string v2, "Login cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    if-eqz v1, :cond_1

    .line 453
    invoke-virtual {v1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V

    .line 456
    :cond_1
    invoke-static {v0}, Lcom/badguy/terrortime/LoginActivity;->access$800(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 457
    invoke-static {v0}, Lcom/badguy/terrortime/LoginActivity;->access$900(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 458
    invoke-static {v0}, Lcom/badguy/terrortime/LoginActivity;->access$800(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 459
    invoke-static {v0}, Lcom/badguy/terrortime/LoginActivity;->access$900(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed. Select OK to close window. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badguy/terrortime/LoginActivity;->access$300(Lcom/badguy/terrortime/LoginActivity;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method protected final onPostExecute(Lcom/badguy/terrortime/Client;)V
    .locals 3
    .param p1, "client"    # Lcom/badguy/terrortime/Client;

    .line 396
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/LoginActivity;

    .line 399
    .local v0, "activity":Lcom/badguy/terrortime/LoginActivity;
    invoke-virtual {p0}, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 408
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    invoke-virtual {v1, p1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->addOrUpdateClient(Lcom/badguy/terrortime/Client;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    .line 412
    const-string v2, "Client Database Error"

    iput-object v2, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    .line 414
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    if-eqz v1, :cond_2

    .line 415
    invoke-virtual {v1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V

    goto :goto_2

    .line 400
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->clientDB:Lcom/badguy/terrortime/ClientDBHandlerClass;

    if-eqz v1, :cond_2

    .line 401
    invoke-virtual {v1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V

    .line 426
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    if-nez v1, :cond_3

    .line 428
    invoke-static {v0}, Lcom/badguy/terrortime/LoginActivity;->access$000(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed. Select OK to close window. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badguy/terrortime/LoginActivity;->access$300(Lcom/badguy/terrortime/LoginActivity;Ljava/lang/String;)V

    goto :goto_3

    .line 439
    :cond_3
    invoke-virtual {v0}, Lcom/badguy/terrortime/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-virtual {v1, p1}, Lcom/badguy/terrortime/TerrorTimeApplication;->initializeXMPPTCPConnection(Lcom/badguy/terrortime/Client;)V

    .line 441
    :goto_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, Lcom/badguy/terrortime/Client;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->onPostExecute(Lcom/badguy/terrortime/Client;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 5

    .line 312
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 313
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/LoginActivity;

    .line 314
    .local v0, "activity":Lcom/badguy/terrortime/LoginActivity;
    invoke-virtual {v0}, Lcom/badguy/terrortime/LoginActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 315
    .local v1, "currentView":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 316
    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Lcom/badguy/terrortime/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 317
    .local v3, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 320
    .end local v3    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->success:Z

    if-eqz v3, :cond_1

    .line 325
    invoke-static {v0}, Lcom/badguy/terrortime/LoginActivity;->access$700(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 326
    invoke-static {v0}, Lcom/badguy/terrortime/LoginActivity;->access$000(Lcom/badguy/terrortime/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 328
    :cond_1
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .line 389
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/LoginActivity$UserLoginTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
