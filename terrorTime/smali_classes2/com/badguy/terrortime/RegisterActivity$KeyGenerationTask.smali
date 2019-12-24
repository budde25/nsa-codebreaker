.class Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;
.super Landroid/os/AsyncTask;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyGenerationTask"
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
.field activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/badguy/terrortime/RegisterActivity;",
            ">;"
        }
    .end annotation
.end field

.field private errorMsg:Ljava/lang/String;

.field private mClient:Lcom/badguy/terrortime/Client;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/RegisterActivity;)V
    .locals 3
    .param p1, "context"    # Lcom/badguy/terrortime/RegisterActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->errorMsg:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 224
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/RegisterActivity;

    .line 225
    .local v0, "activity":Lcom/badguy/terrortime/RegisterActivity;
    new-instance v1, Lcom/badguy/terrortime/Client;

    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$400(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badguy/terrortime/Client;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->mClient:Lcom/badguy/terrortime/Client;

    .line 226
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->mClient:Lcom/badguy/terrortime/Client;

    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$400(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/Client;->setXmppUserName(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->mClient:Lcom/badguy/terrortime/Client;

    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$500(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/Client;->setXmppServerIP(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->mClient:Lcom/badguy/terrortime/Client;

    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$600(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/Client;->setOAuth2ServerIP(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->mClient:Lcom/badguy/terrortime/Client;

    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$200(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/Client;->setEncryptPin(Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/badguy/terrortime/Client;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "generatedSymmetricKeys":Z
    const/4 v1, 0x0

    .line 270
    .local v1, "toRtn":Lcom/badguy/terrortime/Client;
    :try_start_0
    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->mClient:Lcom/badguy/terrortime/Client;

    invoke-virtual {v2}, Lcom/badguy/terrortime/Client;->generateSymmetricKey()Ljavax/crypto/SecretKey;

    .line 271
    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->mClient:Lcom/badguy/terrortime/Client;

    invoke-virtual {v2}, Lcom/badguy/terrortime/Client;->generatePublicPrivateKeys()Z

    .line 272
    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->mClient:Lcom/badguy/terrortime/Client;

    move-object v1, v2

    .line 275
    const-string v2, "SUCCESS"

    iput-object v2, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->errorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->mClient:Lcom/badguy/terrortime/Client;

    .line 282
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->errorMsg:Ljava/lang/String;

    .line 283
    const-string v3, "EXCEPTION LOG"

    const-string v4, "KeyGenerationTask: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->mClient:Lcom/badguy/terrortime/Client;

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 217
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->doInBackground([Ljava/lang/Void;)Lcom/badguy/terrortime/Client;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/badguy/terrortime/Client;)V
    .locals 7
    .param p1, "client"    # Lcom/badguy/terrortime/Client;

    .line 304
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/RegisterActivity;

    .line 306
    .local v0, "activity":Lcom/badguy/terrortime/RegisterActivity;
    const/4 v1, 0x1

    .line 307
    .local v1, "success":Z
    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$700(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 309
    const-string v2, "Registration failed. Select OK to close window. "

    const-string v3, "ERROR LOG"

    if-eqz p1, :cond_0

    .line 317
    :try_start_0
    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$200(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$800(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/badguy/terrortime/Client;->setOAuth2ClientSecret(Ljava/lang/String;[B)V

    .line 318
    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$100(Lcom/badguy/terrortime/RegisterActivity;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->addOrUpdateClient(Lcom/badguy/terrortime/Client;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v4

    .line 320
    .local v4, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->errorMsg:Ljava/lang/String;

    .line 322
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 328
    :cond_0
    const/4 v1, 0x0

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registration failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_1
    if-nez v1, :cond_2

    .line 334
    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$100(Lcom/badguy/terrortime/RegisterActivity;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 338
    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$100(Lcom/badguy/terrortime/RegisterActivity;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badguy/terrortime/ClientDBHandlerClass;->dropAllTables()V

    .line 339
    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$100(Lcom/badguy/terrortime/RegisterActivity;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V

    .line 347
    :cond_1
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    const-string v4, "ERROR"

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 350
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask$1;

    invoke-direct {v3, p0, v0}, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask$1;-><init>(Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;Lcom/badguy/terrortime/RegisterActivity;)V

    .line 351
    const-string v4, "OK"

    invoke-virtual {v2, v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 359
    .local v2, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 360
    .local v3, "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 361
    .end local v2    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v3    # "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    goto :goto_2

    .line 363
    :cond_2
    const-string v2, "keygen task"

    const-string v3, "Key generation completed successfully."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v0}, Lcom/badguy/terrortime/RegisterActivity;->finish()V

    .line 366
    :goto_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p1, Lcom/badguy/terrortime/Client;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->onPostExecute(Lcom/badguy/terrortime/Client;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .line 243
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 244
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/RegisterActivity;

    .line 245
    .local v0, "activity":Lcom/badguy/terrortime/RegisterActivity;
    invoke-virtual {v0}, Lcom/badguy/terrortime/RegisterActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 246
    .local v1, "currentView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 247
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/badguy/terrortime/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 248
    .local v2, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 250
    .end local v2    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .line 292
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/RegisterActivity$KeyGenerationTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
