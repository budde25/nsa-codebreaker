.class public Lcom/badguy/terrortime/ClientCredentialTokenRequest;
.super Ljava/lang/Object;
.source "ClientCredentialTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    }
.end annotation


# instance fields
.field private appContext:Landroid/content/Context;

.field private audience:Ljava/lang/String;

.field private authorization:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private grantType:Ljava/lang/String;

.field private jsonTokenResponse:Lorg/json/JSONObject;

.field private port:I

.field private postNameValues:Lorg/json/JSONObject;

.field private scope:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private site:Ljava/net/URL;

.field private tokenExpiration:Ljava/lang/Long;

.field private tokenValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "site"    # Ljava/lang/String;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "secret"    # Ljava/lang/String;
    .param p5, "grantType"    # Ljava/lang/String;
    .param p6, "scope"    # Ljava/lang/String;
    .param p7, "audience"    # Ljava/lang/String;
    .param p8, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->postNameValues:Lorg/json/JSONObject;

    .line 42
    const/16 v0, 0x1bb

    iput v0, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->port:I

    .line 61
    if-eqz p2, :cond_6

    .line 63
    if-eqz p3, :cond_5

    .line 65
    if-eqz p4, :cond_4

    .line 67
    if-eqz p6, :cond_3

    .line 69
    if-eqz p5, :cond_2

    .line 71
    if-eqz p7, :cond_1

    .line 73
    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    iput-object p1, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->appContext:Landroid/content/Context;

    .line 78
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->site:Ljava/net/URL;

    .line 79
    iput-object p3, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->clientId:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->secret:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->grantType:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->scope:Ljava/lang/String;

    .line 83
    iput-object p7, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->audience:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->clientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->secret:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->getBase64AuthorizationString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->authorization:Ljava/lang/String;

    .line 85
    iput p8, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->port:I

    .line 87
    iget-object v0, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->postNameValues:Lorg/json/JSONObject;

    const-string v1, "audience"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v0, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->postNameValues:Lorg/json/JSONObject;

    const-string v1, "grant_type"

    iget-object v2, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->grantType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    iget-object v0, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->postNameValues:Lorg/json/JSONObject;

    const-string v1, "scope"

    iget-object v2, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    nop

    .line 94
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context was NULL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "site":Ljava/lang/String;
    .end local p3    # "clientId":Ljava/lang/String;
    .end local p4    # "secret":Ljava/lang/String;
    .end local p5    # "grantType":Ljava/lang/String;
    .end local p6    # "scope":Ljava/lang/String;
    .end local p7    # "audience":Ljava/lang/String;
    .end local p8    # "port":I
    throw v0

    .line 72
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "site":Ljava/lang/String;
    .restart local p3    # "clientId":Ljava/lang/String;
    .restart local p4    # "secret":Ljava/lang/String;
    .restart local p5    # "grantType":Ljava/lang/String;
    .restart local p6    # "scope":Ljava/lang/String;
    .restart local p7    # "audience":Ljava/lang/String;
    .restart local p8    # "port":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "audience String was NULL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "site":Ljava/lang/String;
    .end local p3    # "clientId":Ljava/lang/String;
    .end local p4    # "secret":Ljava/lang/String;
    .end local p5    # "grantType":Ljava/lang/String;
    .end local p6    # "scope":Ljava/lang/String;
    .end local p7    # "audience":Ljava/lang/String;
    .end local p8    # "port":I
    throw v0

    .line 70
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "site":Ljava/lang/String;
    .restart local p3    # "clientId":Ljava/lang/String;
    .restart local p4    # "secret":Ljava/lang/String;
    .restart local p5    # "grantType":Ljava/lang/String;
    .restart local p6    # "scope":Ljava/lang/String;
    .restart local p7    # "audience":Ljava/lang/String;
    .restart local p8    # "port":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "grant type String was NULL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "site":Ljava/lang/String;
    .end local p3    # "clientId":Ljava/lang/String;
    .end local p4    # "secret":Ljava/lang/String;
    .end local p5    # "grantType":Ljava/lang/String;
    .end local p6    # "scope":Ljava/lang/String;
    .end local p7    # "audience":Ljava/lang/String;
    .end local p8    # "port":I
    throw v0

    .line 68
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "site":Ljava/lang/String;
    .restart local p3    # "clientId":Ljava/lang/String;
    .restart local p4    # "secret":Ljava/lang/String;
    .restart local p5    # "grantType":Ljava/lang/String;
    .restart local p6    # "scope":Ljava/lang/String;
    .restart local p7    # "audience":Ljava/lang/String;
    .restart local p8    # "port":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "scope String was NULL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "site":Ljava/lang/String;
    .end local p3    # "clientId":Ljava/lang/String;
    .end local p4    # "secret":Ljava/lang/String;
    .end local p5    # "grantType":Ljava/lang/String;
    .end local p6    # "scope":Ljava/lang/String;
    .end local p7    # "audience":Ljava/lang/String;
    .end local p8    # "port":I
    throw v0

    .line 66
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "site":Ljava/lang/String;
    .restart local p3    # "clientId":Ljava/lang/String;
    .restart local p4    # "secret":Ljava/lang/String;
    .restart local p5    # "grantType":Ljava/lang/String;
    .restart local p6    # "scope":Ljava/lang/String;
    .restart local p7    # "audience":Ljava/lang/String;
    .restart local p8    # "port":I
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "secret String was NULL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "site":Ljava/lang/String;
    .end local p3    # "clientId":Ljava/lang/String;
    .end local p4    # "secret":Ljava/lang/String;
    .end local p5    # "grantType":Ljava/lang/String;
    .end local p6    # "scope":Ljava/lang/String;
    .end local p7    # "audience":Ljava/lang/String;
    .end local p8    # "port":I
    throw v0

    .line 64
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "site":Ljava/lang/String;
    .restart local p3    # "clientId":Ljava/lang/String;
    .restart local p4    # "secret":Ljava/lang/String;
    .restart local p5    # "grantType":Ljava/lang/String;
    .restart local p6    # "scope":Ljava/lang/String;
    .restart local p7    # "audience":Ljava/lang/String;
    .restart local p8    # "port":I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client id String was NULL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "site":Ljava/lang/String;
    .end local p3    # "clientId":Ljava/lang/String;
    .end local p4    # "secret":Ljava/lang/String;
    .end local p5    # "grantType":Ljava/lang/String;
    .end local p6    # "scope":Ljava/lang/String;
    .end local p7    # "audience":Ljava/lang/String;
    .end local p8    # "port":I
    throw v0

    .line 62
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "site":Ljava/lang/String;
    .restart local p3    # "clientId":Ljava/lang/String;
    .restart local p4    # "secret":Ljava/lang/String;
    .restart local p5    # "grantType":Ljava/lang/String;
    .restart local p6    # "scope":Ljava/lang/String;
    .restart local p7    # "audience":Ljava/lang/String;
    .restart local p8    # "port":I
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "URL site String was NULL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "site":Ljava/lang/String;
    .end local p3    # "clientId":Ljava/lang/String;
    .end local p4    # "secret":Ljava/lang/String;
    .end local p5    # "grantType":Ljava/lang/String;
    .end local p6    # "scope":Ljava/lang/String;
    .end local p7    # "audience":Ljava/lang/String;
    .end local p8    # "port":I
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "site":Ljava/lang/String;
    .restart local p3    # "clientId":Ljava/lang/String;
    .restart local p4    # "secret":Ljava/lang/String;
    .restart local p5    # "grantType":Ljava/lang/String;
    .restart local p6    # "scope":Ljava/lang/String;
    .restart local p7    # "audience":Ljava/lang/String;
    .restart local p8    # "port":I
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createAcceptAllCertsContext()Ljavax/net/ssl/SSLContext;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 98
    const-string v0, "EXCEPTION LOG"

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/badguy/terrortime/ClientCredentialTokenRequest$1;

    invoke-direct {v2, p0}, Lcom/badguy/terrortime/ClientCredentialTokenRequest$1;-><init>(Lcom/badguy/terrortime/ClientCredentialTokenRequest;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 116
    .local v1, "tms":[Ljavax/net/ssl/TrustManager;
    const/4 v2, 0x0

    .line 118
    .local v2, "context":Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    move-object v2, v3

    .line 119
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    nop

    .line 131
    return-object v2

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v3}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Ljava/security/KeyManagementException;

    invoke-direct {v0, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 123
    .end local v3    # "e":Ljava/security/KeyManagementException;
    :catch_1
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 120
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v3

    .line 121
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getBase64AuthorizationString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method private isValidResponse()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "rtn":Z
    iget-object v1, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->jsonTokenResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 282
    :try_start_0
    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "token":Ljava/lang/String;
    iget-object v2, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->jsonTokenResponse:Lorg/json/JSONObject;

    const-string v3, "expires_in"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 284
    .local v2, "expiration":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->jsonTokenResponse:Lorg/json/JSONObject;

    const-string v4, "scope"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "scope":Ljava/lang/String;
    iget-object v4, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->jsonTokenResponse:Lorg/json/JSONObject;

    const-string v5, "token_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "tokenType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->scope:Ljava/lang/String;

    .line 292
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    const-string v5, "bearer"

    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 300
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "expiration":Ljava/lang/Integer;
    .end local v3    # "scope":Ljava/lang/String;
    .end local v4    # "tokenType":Ljava/lang/String;
    :cond_0
    nop

    .line 302
    return v0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 278
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown token response error."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private requestAccessToken()Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    move-object/from16 v1, p0

    const-string v0, "UTF-8"

    const-string v2, "TOKENREQUEST"

    const/4 v3, 0x0

    .line 142
    .local v3, "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    new-instance v4, Ljava/net/URL;

    iget-object v5, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->site:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->site:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->port:I

    iget-object v8, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->site:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    .local v4, "connectURL":Ljava/net/URL;
    invoke-direct/range {p0 .. p0}, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->createAcceptAllCertsContext()Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 144
    .local v5, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 145
    .local v6, "connect":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 146
    new-instance v7, Lcom/badguy/terrortime/ClientCredentialTokenRequest$2;

    invoke-direct {v7, v1}, Lcom/badguy/terrortime/ClientCredentialTokenRequest$2;-><init>(Lcom/badguy/terrortime/ClientCredentialTokenRequest;)V

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 154
    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 155
    const-string v7, "Content-Type"

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v7, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->authorization:Ljava/lang/String;

    const-string v8, "Authorization"

    invoke-virtual {v6, v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v7, "X-Server-Select"

    const-string v8, "oauth"

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 160
    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 161
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 166
    const/16 v8, 0x7530

    invoke-virtual {v6, v8}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 167
    invoke-virtual {v6, v8}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 173
    :try_start_0
    iget-object v8, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->postNameValues:Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 174
    .local v8, "a":[B
    iget-object v9, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->postNameValues:Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, "b":Ljava/lang/String;
    iget-object v10, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->postNameValues:Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 176
    .local v10, "pnvItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v11, "postBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v12, :cond_1

    .line 178
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 179
    .local v12, "key":Ljava/lang/String;
    iget-object v13, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->postNameValues:Lorg/json/JSONObject;

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, "value":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 182
    const-string v14, "&"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 262
    .end local v8    # "a":[B
    .end local v9    # "b":Ljava/lang/String;
    .end local v10    # "pnvItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "postBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto/16 :goto_3

    .line 259
    :catch_0
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto/16 :goto_2

    .line 185
    .restart local v8    # "a":[B
    .restart local v9    # "b":Ljava/lang/String;
    .restart local v10    # "pnvItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11    # "postBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 186
    .local v12, "systemEpoch":Ljava/lang/Long;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Current systemtime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v12, :cond_8

    .line 190
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 191
    .local v13, "postStream":Ljava/io/OutputStream;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    .local v0, "tx":[B
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Requesting token. Destination: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->site:Ljava/net/URL;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ". Authorization property: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->authorization:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ". Request: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    nop

    .line 196
    array-length v14, v0

    invoke-virtual {v13, v0, v7, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 197
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 204
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    .local v7, "responseBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 206
    .local v14, "inStream":Ljava/io/InputStream;
    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 207
    .local v15, "inStreamReader":Ljava/io/InputStreamReader;
    move-object/from16 v18, v0

    .end local v0    # "tx":[B
    .local v18, "tx":[B
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 209
    .local v0, "inResponse":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v20, v19

    .local v20, "line":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 210
    move-object/from16 v19, v0

    move-object/from16 v0, v20

    .end local v20    # "line":Ljava/lang/String;
    .local v0, "line":Ljava/lang/String;
    .local v19, "inResponse":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, v19

    goto :goto_1

    .line 213
    .end local v19    # "inResponse":Ljava/io/BufferedReader;
    .local v0, "inResponse":Ljava/io/BufferedReader;
    .restart local v20    # "line":Ljava/lang/String;
    :cond_2
    move-object/from16 v19, v0

    move-object/from16 v0, v20

    .end local v20    # "line":Ljava/lang/String;
    .local v0, "line":Ljava/lang/String;
    .restart local v19    # "inResponse":Ljava/io/BufferedReader;
    move-object/from16 v20, v0

    .end local v0    # "line":Ljava/lang/String;
    .restart local v20    # "line":Ljava/lang/String;
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v21, v3

    .end local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .local v21, "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    :try_start_5
    const-string v3, "Received token: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "responseFromHydra":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->jsonTokenResponse:Lorg/json/JSONObject;

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->isValidResponse()Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v22, v0

    .end local v0    # "responseFromHydra":Ljava/lang/String;
    .local v22, "responseFromHydra":Ljava/lang/String;
    const-string v0, "EXCEPTION"

    if-eqz v3, :cond_6

    .line 230
    :try_start_6
    iget-object v3, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->jsonTokenResponse:Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v23, v4

    .end local v4    # "connectURL":Ljava/net/URL;
    .local v23, "connectURL":Ljava/net/URL;
    :try_start_7
    const-string v4, "expires_in"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenExpiration:Ljava/lang/Long;

    .line 231
    iget-object v3, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenExpiration:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    add-long v3, v3, v24

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenExpiration:Ljava/lang/Long;

    .line 232
    iget-object v3, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenExpiration:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenExpiration:Ljava/lang/Long;

    .line 233
    iget-object v3, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->jsonTokenResponse:Lorg/json/JSONObject;

    const-string v4, "access_token"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenValue:Ljava/lang/String;

    .line 234
    new-instance v3, Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;

    iget-object v4, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenExpiration:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v24, v5

    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .local v24, "sslContext":Ljavax/net/ssl/SSLContext;
    :try_start_8
    iget-object v5, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenValue:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;-><init>(Ljava/lang/Integer;[B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 235
    .end local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Expiration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenExpiration:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenExpiration:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    div-long v25, v25, v16

    cmp-long v2, v4, v25

    if-ltz v2, :cond_5

    iget-object v2, v1, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->tokenExpiration:Ljava/lang/Long;

    .line 242
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v16, 0xffffffffL

    cmp-long v2, v4, v16

    if-gtz v2, :cond_5

    .line 251
    nop

    .line 252
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    .line 255
    if-eqz v14, :cond_3

    .line 256
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 262
    .end local v7    # "responseBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "a":[B
    .end local v9    # "b":Ljava/lang/String;
    .end local v10    # "pnvItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "postBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "systemEpoch":Ljava/lang/Long;
    .end local v13    # "postStream":Ljava/io/OutputStream;
    .end local v14    # "inStream":Ljava/io/InputStream;
    .end local v15    # "inStreamReader":Ljava/io/InputStreamReader;
    .end local v18    # "tx":[B
    .end local v19    # "inResponse":Ljava/io/BufferedReader;
    .end local v20    # "line":Ljava/lang/String;
    .end local v22    # "responseFromHydra":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 263
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 267
    :cond_4
    return-object v3

    .line 244
    .restart local v7    # "responseBuffer":Ljava/lang/StringBuffer;
    .restart local v8    # "a":[B
    .restart local v9    # "b":Ljava/lang/String;
    .restart local v10    # "pnvItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11    # "postBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "systemEpoch":Ljava/lang/Long;
    .restart local v13    # "postStream":Ljava/io/OutputStream;
    .restart local v14    # "inStream":Ljava/io/InputStream;
    .restart local v15    # "inStreamReader":Ljava/io/InputStreamReader;
    .restart local v18    # "tx":[B
    .restart local v19    # "inResponse":Ljava/io/BufferedReader;
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v22    # "responseFromHydra":Ljava/lang/String;
    :cond_5
    :try_start_a
    const-string v2, "Invalid Token Expiration."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "CLIENTCREDENTIALSTOKENREQUEST: Invalid token expiration"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v6    # "connect":Ljavax/net/ssl/HttpsURLConnection;
    .end local v23    # "connectURL":Ljava/net/URL;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 259
    .end local v7    # "responseBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "a":[B
    .end local v9    # "b":Ljava/lang/String;
    .end local v10    # "pnvItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "postBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "systemEpoch":Ljava/lang/Long;
    .end local v13    # "postStream":Ljava/io/OutputStream;
    .end local v14    # "inStream":Ljava/io/InputStream;
    .end local v15    # "inStreamReader":Ljava/io/InputStreamReader;
    .end local v18    # "tx":[B
    .end local v19    # "inResponse":Ljava/io/BufferedReader;
    .end local v20    # "line":Ljava/lang/String;
    .end local v22    # "responseFromHydra":Ljava/lang/String;
    .restart local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v6    # "connect":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v23    # "connectURL":Ljava/net/URL;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 262
    .end local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v5

    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    goto/16 :goto_3

    .line 259
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_2
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v3, v21

    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    goto :goto_2

    .line 222
    .end local v23    # "connectURL":Ljava/net/URL;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v7    # "responseBuffer":Ljava/lang/StringBuffer;
    .restart local v8    # "a":[B
    .restart local v9    # "b":Ljava/lang/String;
    .restart local v10    # "pnvItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11    # "postBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "systemEpoch":Ljava/lang/Long;
    .restart local v13    # "postStream":Ljava/io/OutputStream;
    .restart local v14    # "inStream":Ljava/io/InputStream;
    .restart local v15    # "inStreamReader":Ljava/io/InputStreamReader;
    .restart local v18    # "tx":[B
    .restart local v19    # "inResponse":Ljava/io/BufferedReader;
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v22    # "responseFromHydra":Ljava/lang/String;
    :cond_6
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v23    # "connectURL":Ljava/net/URL;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    :try_start_b
    const-string v2, "Response not valid."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Did not receive valid response to token request"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v6    # "connect":Ljavax/net/ssl/HttpsURLConnection;
    .end local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v23    # "connectURL":Ljava/net/URL;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    throw v0

    .line 215
    .end local v22    # "responseFromHydra":Ljava/lang/String;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v6    # "connect":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    :cond_7
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .line 216
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v23    # "connectURL":Ljava/net/URL;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Did not receive response to token request"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v6    # "connect":Ljavax/net/ssl/HttpsURLConnection;
    .end local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v23    # "connectURL":Ljava/net/URL;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    throw v0

    .line 262
    .end local v7    # "responseBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "a":[B
    .end local v9    # "b":Ljava/lang/String;
    .end local v10    # "pnvItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "postBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "systemEpoch":Ljava/lang/Long;
    .end local v13    # "postStream":Ljava/io/OutputStream;
    .end local v14    # "inStream":Ljava/io/InputStream;
    .end local v15    # "inStreamReader":Ljava/io/InputStreamReader;
    .end local v18    # "tx":[B
    .end local v19    # "inResponse":Ljava/io/BufferedReader;
    .end local v20    # "line":Ljava/lang/String;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v6    # "connect":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    :catchall_2
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v23    # "connectURL":Ljava/net/URL;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    goto :goto_3

    .line 259
    .end local v23    # "connectURL":Ljava/net/URL;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_3
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v3, v21

    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v23    # "connectURL":Ljava/net/URL;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    goto :goto_2

    .line 188
    .end local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v23    # "connectURL":Ljava/net/URL;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v8    # "a":[B
    .restart local v9    # "b":Ljava/lang/String;
    .restart local v10    # "pnvItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11    # "postBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "systemEpoch":Ljava/lang/Long;
    :cond_8
    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v23    # "connectURL":Ljava/net/URL;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Failed to acquire system time."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v6    # "connect":Ljavax/net/ssl/HttpsURLConnection;
    .end local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v23    # "connectURL":Ljava/net/URL;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 262
    .end local v8    # "a":[B
    .end local v9    # "b":Ljava/lang/String;
    .end local v10    # "pnvItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "postBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "systemEpoch":Ljava/lang/Long;
    .restart local v6    # "connect":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v23    # "connectURL":Ljava/net/URL;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catchall_3
    move-exception v0

    goto :goto_3

    .line 259
    :catch_4
    move-exception v0

    move-object/from16 v3, v21

    goto :goto_2

    .line 262
    .end local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v23    # "connectURL":Ljava/net/URL;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catchall_4
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v23    # "connectURL":Ljava/net/URL;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    goto :goto_3

    .line 259
    .end local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v23    # "connectURL":Ljava/net/URL;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_5
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .line 260
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23    # "connectURL":Ljava/net/URL;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_2
    :try_start_c
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v6    # "connect":Ljavax/net/ssl/HttpsURLConnection;
    .end local v23    # "connectURL":Ljava/net/URL;
    .end local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v6    # "connect":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v23    # "connectURL":Ljava/net/URL;
    .restart local v24    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catchall_5
    move-exception v0

    move-object/from16 v21, v3

    .end local v3    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v21    # "tokRtn":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    :goto_3
    if-eqz v6, :cond_9

    .line 263
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 265
    :cond_9
    throw v0
.end method


# virtual methods
.method public getValidTokenAsByteArray(Lcom/badguy/terrortime/Client;Landroid/content/Context;)[B
    .locals 9
    .param p1, "client"    # Lcom/badguy/terrortime/Client;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    const-string v0, ""

    .line 319
    .local v0, "toRtn":Ljava/lang/String;
    const/4 v1, 0x0

    .line 320
    .local v1, "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    const/4 v2, 0x0

    .line 321
    .local v2, "token":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    const-wide/16 v3, 0x3c

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 322
    .local v3, "slackTime":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 324
    .local v4, "systemEpoch":Ljava/lang/Long;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 328
    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/badguy/terrortime/Client;->getOAuth2AccessToken(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getOAuth2AccessTokenExpiration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getOAuth2AccessTokenExpiration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 333
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->requestAccessToken()Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;

    move-result-object v5

    move-object v2, v5

    .line 338
    if-eqz v2, :cond_3

    iget-object v5, v2, Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;->expiration:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;->value:[B

    if-eqz v5, :cond_3

    .line 344
    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;->value:[B

    invoke-virtual {p1, v5, v6}, Lcom/badguy/terrortime/Client;->setOAuth2AccessToken(Ljava/lang/String;[B)V

    .line 345
    iget-object v5, v2, Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;->expiration:Ljava/lang/Integer;

    invoke-virtual {p1, v5}, Lcom/badguy/terrortime/Client;->setOAuth2AccessTokenExpiration(Ljava/lang/Integer;)V

    .line 350
    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v5

    move-object v1, v5

    .line 351
    if-eqz v1, :cond_2

    .line 354
    invoke-virtual {v1, p1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->addOrUpdateClient(Lcom/badguy/terrortime/Client;)V

    .line 356
    invoke-virtual {v1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    nop

    .line 363
    :cond_1
    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/badguy/terrortime/Client;->getOAuth2AccessToken(Ljava/lang/String;)[B

    move-result-object v5

    return-object v5

    .line 352
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to connect to database"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "toRtn":Ljava/lang/String;
    .end local v1    # "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    .end local v2    # "token":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v3    # "slackTime":Ljava/lang/Long;
    .end local v4    # "systemEpoch":Ljava/lang/Long;
    .end local p1    # "client":Lcom/badguy/terrortime/Client;
    .end local p2    # "context":Landroid/content/Context;
    throw v5

    .line 339
    .restart local v0    # "toRtn":Ljava/lang/String;
    .restart local v1    # "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    .restart local v2    # "token":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v3    # "slackTime":Ljava/lang/Long;
    .restart local v4    # "systemEpoch":Ljava/lang/Long;
    .restart local p1    # "client":Lcom/badguy/terrortime/Client;
    .restart local p2    # "context":Landroid/content/Context;
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Token request failed."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "toRtn":Ljava/lang/String;
    .end local v1    # "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    .end local v2    # "token":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .end local v3    # "slackTime":Ljava/lang/Long;
    .end local v4    # "systemEpoch":Ljava/lang/Long;
    .end local p1    # "client":Lcom/badguy/terrortime/Client;
    .end local p2    # "context":Landroid/content/Context;
    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    .restart local v0    # "toRtn":Ljava/lang/String;
    .restart local v1    # "clientDB":Lcom/badguy/terrortime/ClientDBHandlerClass;
    .restart local v2    # "token":Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
    .restart local v3    # "slackTime":Ljava/lang/Long;
    .restart local v4    # "systemEpoch":Ljava/lang/Long;
    .restart local p1    # "client":Lcom/badguy/terrortime/Client;
    .restart local p2    # "context":Landroid/content/Context;
    :catch_0
    move-exception v5

    .line 359
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 325
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Null client or null encryptPin"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
