.class Lcom/badguy/terrortime/CheckedClient$modCheckedClient;
.super Landroid/os/AsyncTask;
.source "CheckedClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/CheckedClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "modCheckedClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/badguy/terrortime/SettingsActivity;",
            ">;"
        }
    .end annotation
.end field

.field client:Lcom/badguy/terrortime/Client;

.field errorMsg:Ljava/lang/String;

.field withThis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/EditText;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badguy/terrortime/SettingsActivity;Lcom/badguy/terrortime/Client;Ljava/util/Map;)V
    .locals 3
    .param p1, "context"    # Lcom/badguy/terrortime/SettingsActivity;
    .param p2, "client"    # Lcom/badguy/terrortime/Client;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badguy/terrortime/SettingsActivity;",
            "Lcom/badguy/terrortime/Client;",
            "Ljava/util/Map<",
            "Landroid/widget/EditText;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p3, "withThis":Ljava/util/Map;, "Ljava/util/Map<Landroid/widget/EditText;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    .line 110
    const-string v1, ""

    iput-object v1, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->errorMsg:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->withThis:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 115
    iget-object v0, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/SettingsActivity;

    .line 116
    .local v0, "activity":Lcom/badguy/terrortime/SettingsActivity;
    iput-object p2, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    .line 117
    iput-object p3, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->withThis:Ljava/util/Map;

    .line 118
    const-string v1, "CheckedClient"

    const-string v2, "Task constructor complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method private final updateClientDataBase()Z
    .locals 11

    .line 158
    iget-object v0, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/SettingsActivity;

    .line 159
    .local v0, "activity":Lcom/badguy/terrortime/SettingsActivity;
    const/4 v1, 0x1

    .line 160
    .local v1, "success":Z
    const/4 v2, 0x0

    .line 162
    .local v2, "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    const-string v3, "CheckedClient"

    const-string v4, "Starting updateClientDataBase"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v4, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    if-eqz v4, :cond_7

    .line 165
    iget-object v4, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->withThis:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 168
    .local v5, "field":Landroid/widget/EditText;
    :try_start_0
    iget-object v6, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->withThis:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 169
    .local v6, "fName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 171
    .local v7, "fText":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpdateClientDataBase, field name processing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz v5, :cond_3

    .line 176
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 177
    const-string v8, "xmppServerIPField"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 178
    iget-object v8, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badguy/terrortime/Client;->setXmppServerIP(Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_0
    const-string v8, "oauth2ServerIPField"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 180
    iget-object v8, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badguy/terrortime/Client;->setOAuth2ServerIP(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_1
    const-string v8, "passwordField"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 182
    iget-object v8, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    iget-object v9, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    invoke-virtual {v9}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/badguy/terrortime/Client;->setOAuth2ClientSecret(Ljava/lang/String;[B)V

    .line 189
    .end local v6    # "fName":Ljava/lang/String;
    .end local v7    # "fText":Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_2

    .line 174
    .restart local v6    # "fName":Ljava/lang/String;
    .restart local v7    # "fText":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fatal Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " was null."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "activity":Lcom/badguy/terrortime/SettingsActivity;
    .end local v1    # "success":Z
    .end local v2    # "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    .end local v5    # "field":Landroid/widget/EditText;
    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v6    # "fName":Ljava/lang/String;
    .end local v7    # "fText":Ljava/lang/String;
    .restart local v0    # "activity":Lcom/badguy/terrortime/SettingsActivity;
    .restart local v1    # "success":Z
    .restart local v2    # "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    .restart local v5    # "field":Landroid/widget/EditText;
    :catch_0
    move-exception v6

    .line 186
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "EXCEPTION LOG"

    const-string v8, "updateClientDataBase: "

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    const-string v7, "Unknown error: Failed to update client settings"

    iput-object v7, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->errorMsg:Ljava/lang/String;

    .line 188
    const/4 v1, 0x0

    .line 191
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "UpdateClientDataBase, completed client object update."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v5    # "field":Landroid/widget/EditText;
    goto/16 :goto_0

    .line 194
    :cond_4
    if-eqz v1, :cond_6

    .line 195
    iget-object v4, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    invoke-virtual {v4}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/badguy/terrortime/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v2

    .line 196
    if-nez v2, :cond_5

    .line 197
    const-string v4, "Activity: Failed to open client database. clientDB was null"

    iput-object v4, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->errorMsg:Ljava/lang/String;

    .line 198
    const/4 v1, 0x0

    .line 201
    :cond_5
    const-string v4, "UpdateClientDataBase, completed clientDB acquire."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_6
    if-eqz v1, :cond_8

    .line 209
    :try_start_1
    iget-object v4, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badguy/terrortime/Client;->setEncrypted_oAuth2AccessToken([B)V

    .line 210
    iget-object v4, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badguy/terrortime/Client;->setOAuth2AccessTokenExpiration(Ljava/lang/Integer;)V

    .line 215
    iget-object v4, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    invoke-virtual {v2, v4}, Lcom/badguy/terrortime/ClientDBHandlerClass;->addOrUpdateClient(Lcom/badguy/terrortime/Client;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    goto :goto_3

    .line 216
    :catch_1
    move-exception v4

    .line 217
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Activity: Failed to update client in database"

    iput-object v5, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->errorMsg:Ljava/lang/String;

    .line 218
    const/4 v1, 0x0

    .line 221
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v4, "UpdateClientDataBase, completed client update in database."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 225
    :cond_7
    const-string v4, "Unknown error: client is null"

    iput-object v4, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->errorMsg:Ljava/lang/String;

    .line 226
    const/4 v1, 0x0

    .line 229
    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 230
    invoke-virtual {v2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V

    .line 232
    :cond_9
    const-string v4, "Task updateClientDataBase complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v1
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .line 131
    const/4 v0, 0x1

    .line 133
    .local v0, "success":Z
    invoke-virtual {p0}, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->isCancelled()Z

    move-result v1

    const-string v2, "CheckedClient"

    if-nez v1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->client:Lcom/badguy/terrortime/Client;

    invoke-virtual {v1}, Lcom/badguy/terrortime/Client;->generateSymmetricKey()Ljavax/crypto/SecretKey;

    .line 137
    const-string v1, "Task generateSymmetricKey complete"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 141
    const-string v3, "Bad Pin"

    iput-object v3, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->errorMsg:Ljava/lang/String;

    .line 142
    const-string v4, "EXCEPTION LOG"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->updateClientDataBase()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    const-string v1, "Failed to update client database"

    iput-object v1, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->errorMsg:Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    .line 153
    :cond_0
    const-string v1, "Task doInBackground complete"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final onCancelled()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/SettingsActivity;

    .line 256
    .local v0, "activity":Lcom/badguy/terrortime/SettingsActivity;
    invoke-virtual {v0}, Lcom/badguy/terrortime/SettingsActivity;->finish()V

    .line 257
    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 239
    iget-object v0, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/SettingsActivity;

    .line 240
    .local v0, "activity":Lcom/badguy/terrortime/SettingsActivity;
    iget-object v1, v0, Lcom/badguy/terrortime/SettingsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 246
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/SettingsActivity;->alertAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v0}, Lcom/badguy/terrortime/SettingsActivity;->finish()V

    .line 251
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/SettingsActivity;

    .line 124
    .local v0, "activity":Lcom/badguy/terrortime/SettingsActivity;
    iget-object v1, v0, Lcom/badguy/terrortime/SettingsActivity;->mSettingsButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v1, v0, Lcom/badguy/terrortime/SettingsActivity;->mClearTokenView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    iget-object v1, v0, Lcom/badguy/terrortime/SettingsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .line 262
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/CheckedClient$modCheckedClient;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
