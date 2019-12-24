.class public Lcom/badguy/terrortime/ClientDBHandlerClass;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ClientDBHandlerClass.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "atok"

.field private static final ACCESS_TOKEN_EXP:Ljava/lang/String; = "atokexp"

.field private static final AUTH_SERVER_IP:Ljava/lang/String; = "asip"

.field private static final CHECK_PIN:Ljava/lang/String; = "checkpin"

.field private static final CLIENT_ID:Ljava/lang/String; = "cid"

.field private static final CLIENT_SECRET:Ljava/lang/String; = "csecret"

.field private static final CONTACT_ID:Ljava/lang/String; = "contactid"

.field private static CREATE_CLIENTS_TABLE:Ljava/lang/String; = null

.field private static CREATE_CLIENT_CONTACTS:Ljava/lang/String; = null

.field private static CREATE_CLIENT_MESSAGES:Ljava/lang/String; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "clientDB.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final FROM_CLIENT:Ljava/lang/String; = "fromclient"

.field private static final MESSAGE_CONTENT:Ljava/lang/String; = "msg"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "privkey"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "pubkey"

.field private static QUERY_CLIENTS_TABLE:Ljava/lang/String; = null

.field private static QUERY_CONTACTS_TABLE:Ljava/lang/String; = null

.field private static QUERY_MESSAGE_TABLE:Ljava/lang/String; = null

.field private static final REG_SERVER_IP:Ljava/lang/String; = "rsip"

.field private static final RENEW_TOKEN:Ljava/lang/String; = "rtok"

.field private static final RENEW_TOKEN_EXP:Ljava/lang/String; = "rtokexp"

.field public static final TABLE_CLIENTS:Ljava/lang/String; = "Clients"

.field public static final TABLE_CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final TABLE_MESSAGES:Ljava/lang/String; = "Messages"

.field private static final TIMESTAMP:Ljava/lang/String; = "tstamp"

.field private static final XMPP_NAME:Ljava/lang/String; = "xname"

.field private static final XMPP_SERVER_IP:Ljava/lang/String; = "xsip"

.field private static final clientsColumnNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/badguy/terrortime/ClientDBHandlerClass;


# instance fields
.field private cryptPin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 50
    const-string v0, "cid"

    const-string v1, "rsip"

    const-string v2, "xname"

    const-string v3, "xsip"

    const-string v4, "atok"

    const-string v5, "rtok"

    const-string v6, "asip"

    const-string v7, "atokexp"

    const-string v8, "rtokexp"

    const-string v9, "pubkey"

    const-string v10, "privkey"

    const-string v11, "checkpin"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->clientsColumnNames:Ljava/util/List;

    .line 63
    const-string v0, "CREATE TABLE IF NOT EXISTS Clients(cid TEXT NOT NULL,rsip TEXT,xname TEXT,xsip TEXT,csecret BLOB,atok BLOB,rtok BLOB,asip TEXT,atokexp INTEGER,rtokexp INTEGER,pubkey BLOB,privkey BLOB,checkpin BLOB)"

    sput-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->CREATE_CLIENTS_TABLE:Ljava/lang/String;

    .line 81
    const-string v0, "SELECT * FROM Clients WHERE "

    sput-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_CLIENTS_TABLE:Ljava/lang/String;

    .line 85
    const-string v0, "CREATE TABLE IF NOT EXISTS Contacts(contactid TEXT NOT NULL, cid TEXT NOT NULL )"

    sput-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->CREATE_CLIENT_CONTACTS:Ljava/lang/String;

    .line 92
    const-string v0, "SELECT * FROM Contacts WHERE "

    sput-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_CONTACTS_TABLE:Ljava/lang/String;

    .line 96
    const-string v0, "CREATE TABLE IF NOT EXISTS Messages(tstamp INTEGER, cid TEXT NOT NULL,contactid TEXT NOT NULL, fromclient INTEGER,msg BLOB )"

    sput-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->CREATE_CLIENT_MESSAGES:Ljava/lang/String;

    .line 106
    const-string v0, "SELECT * FROM Messages WHERE "

    sput-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_MESSAGE_TABLE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    const-string v1, "clientDB.db"

    const/4 v2, 0x1

    invoke-direct {p0, p2, v1, v0, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 26
    iput-object v0, p0, Lcom/badguy/terrortime/ClientDBHandlerClass;->cryptPin:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/badguy/terrortime/ClientDBHandlerClass;->cryptPin:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/badguy/terrortime/ClientDBHandlerClass;
    .locals 3
    .param p0, "pin"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    sget-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->sInstance:Lcom/badguy/terrortime/ClientDBHandlerClass;

    if-nez v0, :cond_1

    .line 119
    const-class v0, Lcom/badguy/terrortime/ClientDBHandlerClass;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Lcom/badguy/terrortime/ClientDBHandlerClass;->sInstance:Lcom/badguy/terrortime/ClientDBHandlerClass;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lcom/badguy/terrortime/ClientDBHandlerClass;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/badguy/terrortime/ClientDBHandlerClass;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lcom/badguy/terrortime/ClientDBHandlerClass;->sInstance:Lcom/badguy/terrortime/ClientDBHandlerClass;

    .line 123
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 125
    :cond_1
    :goto_0
    sget-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->sInstance:Lcom/badguy/terrortime/ClientDBHandlerClass;

    iput-object p0, v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->cryptPin:Ljava/lang/String;

    .line 126
    return-object v0
.end method


# virtual methods
.method public final addContact(Lcom/badguy/terrortime/Contact;)V
    .locals 4
    .param p1, "contact"    # Lcom/badguy/terrortime/Contact;

    .line 386
    if-nez p1, :cond_0

    .line 387
    return-void

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 391
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 392
    return-void

    .line 395
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 397
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 398
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "contactid"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Contact;->getContactId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v2, "cid"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Contact;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v2, "Contacts"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 402
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    .end local v1    # "values":Landroid/content/ContentValues;
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EXCEPTION LOG"

    const-string v3, "addContact: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 408
    nop

    .line 409
    return-void

    .line 407
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 408
    throw v1
.end method

.method public final addMessage(Lcom/badguy/terrortime/Message;)V
    .locals 5
    .param p1, "msg"    # Lcom/badguy/terrortime/Message;

    .line 543
    if-nez p1, :cond_0

    .line 544
    return-void

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 548
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 549
    return-void

    .line 552
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 554
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 555
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "contactid"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v2, "cid"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v2, "msg"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContent()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 558
    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->isFromClient()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string v4, "fromclient"

    if-nez v2, :cond_2

    .line 559
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 561
    :cond_2
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    :goto_0
    const-string v2, "tstamp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    const-string v2, "Messages"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 565
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    .end local v1    # "values":Landroid/content/ContentValues;
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "EXCEPTION LOG"

    const-string v3, "addMessage: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 571
    nop

    .line 572
    return-void

    .line 570
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 571
    throw v1
.end method

.method public final addOrUpdateClient(Lcom/badguy/terrortime/Client;)V
    .locals 8
    .param p1, "client"    # Lcom/badguy/terrortime/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    const-string v0, "cid"

    if-nez p1, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 212
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 213
    return-void

    .line 215
    :cond_1
    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getOAuth2ClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countClients(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 218
    .local v2, "nClientRecs":Ljava/lang/Integer;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 220
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getOAuth2ClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v4, "rsip"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getRegisterServerIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v4, "xname"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getXmppUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "xsip"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getXmppServerIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v4, "csecret"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getEncrypted_oAuth2ClientSecret()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 226
    const-string v4, "atok"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getEncrypted_oAuth2AccessToken()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 227
    const-string v4, "rtok"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getEncrypted_oAuth2RenewToken()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 228
    const-string v4, "asip"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getOAuth2ServerIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v4, "atokexp"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getOAuth2AccessTokenExpiration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v4, "rtokexp"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getOAuth2RenewTokenExpiration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v4, "pubkey"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getPublicKey()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 232
    const-string v4, "privkey"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getEncrypted_privateKey()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 233
    const-string v4, "checkpin"

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getCheckPin()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 235
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Clients"

    if-nez v4, :cond_2

    .line 236
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v5, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getOAuth2ClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countClients(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    .line 251
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 252
    const-string v0, "cid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/badguy/terrortime/Client;->getOAuth2ClientId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v5, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    .end local v3    # "values":Landroid/content/ContentValues;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 260
    nop

    .line 261
    return-void

    .line 246
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "Terrortime is configured for another user"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "nClientRecs":Ljava/lang/Integer;
    .end local p1    # "client":Lcom/badguy/terrortime/Client;
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    .end local v3    # "values":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "nClientRecs":Ljava/lang/Integer;
    .restart local p1    # "client":Lcom/badguy/terrortime/Client;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "ERROR"

    const-string v4, "addOrUpdateClient: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "nClientRecs":Ljava/lang/Integer;
    .end local p1    # "client":Lcom/badguy/terrortime/Client;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "nClientRecs":Ljava/lang/Integer;
    .restart local p1    # "client":Lcom/badguy/terrortime/Client;
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 260
    throw v0
.end method

.method public final clearClientDB()V
    .locals 6

    .line 356
    const-string v0, "Messages"

    const-string v1, "Contacts"

    const-string v2, "Clients"

    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 357
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v3, :cond_0

    .line 358
    return-void

    .line 360
    :cond_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 362
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countAllTableRecords(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    .line 363
    invoke-virtual {v3, v2, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    :cond_1
    invoke-virtual {p0, v1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countAllTableRecords(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 366
    invoke-virtual {v3, v1, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 368
    :cond_2
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countAllTableRecords(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    .line 369
    invoke-virtual {v3, v0, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "EXCEPTION LOG"

    const-string v2, "clearClientDB: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 376
    nop

    .line 377
    return-void

    .line 375
    :goto_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 376
    throw v0
.end method

.method public final countAllTableRecords(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "tablename"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 185
    .local v0, "cnt":Ljava/lang/Integer;
    if-nez p1, :cond_0

    .line 186
    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 189
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 190
    return-object v0

    .line 192
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 193
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 194
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_2
    return-object v0
.end method

.method public final countClients(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;

    .line 265
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 269
    .local v1, "cnt":Ljava/lang/Integer;
    if-nez p1, :cond_0

    .line 270
    return-object v1

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 273
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 274
    return-object v1

    .line 276
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_CLIENTS_TABLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 278
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 279
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 280
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_2
    return-object v1
.end method

.method public final countContacts(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;

    .line 437
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 441
    .local v1, "cnt":Ljava/lang/Integer;
    if-nez p1, :cond_0

    .line 442
    return-object v1

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 445
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 446
    return-object v1

    .line 448
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_CONTACTS_TABLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 450
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 451
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 452
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_2
    return-object v1
.end method

.method public final countContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 418
    .local v1, "cnt":Ljava/lang/Integer;
    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 422
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 423
    return-object v1

    .line 425
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_CONTACTS_TABLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "contactid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 427
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 428
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 429
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_2
    return-object v1

    .line 419
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public final countMessages(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;

    .line 600
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 604
    .local v1, "cnt":Ljava/lang/Integer;
    if-nez p1, :cond_0

    .line 605
    return-object v1

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 608
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 609
    return-object v1

    .line 611
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_MESSAGE_TABLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 613
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 614
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 615
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 618
    :cond_2
    return-object v1
.end method

.method public final countMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;

    .line 577
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 581
    .local v1, "cnt":Ljava/lang/Integer;
    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 585
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 586
    return-object v1

    .line 588
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_MESSAGE_TABLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "contactid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 590
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 591
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 592
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 595
    :cond_2
    return-object v1

    .line 582
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public final deleteClient(Ljava/lang/String;)V
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;

    .line 334
    const-string v0, "Clients"

    if-nez p1, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 338
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 339
    return-void

    .line 341
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 343
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countAllTableRecords(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countClients(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 344
    const-string v2, "cid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 346
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    nop

    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 352
    goto :goto_1

    .line 351
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    const-string v2, "EXCEPTION LOG"

    const-string v3, "deleteClient: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 353
    :goto_1
    return-void

    .line 351
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 352
    throw v0
.end method

.method public final deleteContact(Ljava/lang/String;)V
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;

    .line 488
    const-string v0, "Contacts"

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countContacts(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 492
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 493
    return-void

    .line 495
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 497
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countAllTableRecords(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 498
    const-string v2, "cid =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 500
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EXCEPTION LOG"

    const-string v3, "deleteContact: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 505
    nop

    .line 506
    return-void

    .line 504
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 505
    throw v0

    .line 489
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_2
    return-void
.end method

.method public final deleteContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;

    .line 463
    const-string v0, "Contacts"

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 467
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 468
    return-void

    .line 470
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 472
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countAllTableRecords(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 473
    const-string v2, "contactid =? AND cid =? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 475
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EXCEPTION LOG"

    const-string v3, "deleteContact: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 480
    nop

    .line 481
    return-void

    .line 479
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 480
    throw v0

    .line 464
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_2
    return-void
.end method

.method public final deleteMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;

    .line 651
    const-string v0, "Messages"

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countMessages(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 655
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 656
    return-void

    .line 658
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 660
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countAllTableRecords(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 661
    const-string v2, "cid =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 663
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EXCEPTION LOG"

    const-string v3, "deleteMessage: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 668
    nop

    .line 669
    return-void

    .line 667
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 668
    throw v0

    .line 652
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_2
    return-void
.end method

.method public final deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;

    .line 626
    const-string v0, "Messages"

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 630
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 631
    return-void

    .line 633
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 635
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countAllTableRecords(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 636
    const-string v2, "contactid =? AND cid =? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 638
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EXCEPTION LOG"

    const-string v3, "deleteMessage: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 643
    nop

    .line 644
    return-void

    .line 642
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 643
    throw v0

    .line 627
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_2
    return-void
.end method

.method public final dropAllTables()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 170
    const-string v1, "DROP TABLE IF EXISTS Clients"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    const-string v1, "DROP TABLE IF EXISTS Contacts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string v1, "DROP TABLE IF EXISTS Messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method public final getClient(Ljava/lang/String;)Lcom/badguy/terrortime/Client;
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;

    .line 287
    sget-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->clientsColumnNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    .local v0, "cols":Ljava/lang/String;
    const/4 v1, 0x0

    .line 289
    .local v1, "client":Lcom/badguy/terrortime/Client;
    const/4 v2, 0x0

    .line 293
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countClients(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 297
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v3, :cond_1

    .line 298
    return-object v1

    .line 303
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_CLIENTS_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " =? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 304
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 305
    new-instance v4, Lcom/badguy/terrortime/Client;

    invoke-direct {v4, p1}, Lcom/badguy/terrortime/Client;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 306
    iget-object v4, p0, Lcom/badguy/terrortime/ClientDBHandlerClass;->cryptPin:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setEncryptPin(Ljava/lang/String;)V

    .line 307
    const-string v4, "checkpin"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setCheckPin([B)V

    .line 308
    const-string v4, "rsip"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setRegisterServerIP(Ljava/lang/String;)V

    .line 309
    const-string v4, "xname"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setXmppUserName(Ljava/lang/String;)V

    .line 310
    const-string v4, "xsip"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setXmppServerIP(Ljava/lang/String;)V

    .line 311
    const-string v4, "csecret"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setEncrypted_oAuth2ClientSecret([B)V

    .line 312
    const-string v4, "atok"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setEncrypted_oAuth2AccessToken([B)V

    .line 313
    const-string v4, "rtok"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setEncrypted_oAuth2RenewToken([B)V

    .line 314
    const-string v4, "asip"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setOAuth2ServerIP(Ljava/lang/String;)V

    .line 315
    const-string v4, "atokexp"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setOAuth2AccessTokenExpiration(Ljava/lang/Integer;)V

    .line 316
    const-string v4, "rtokexp"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setOAuth2RenewTokenExpiration(Ljava/lang/Integer;)V

    .line 317
    const-string v4, "pubkey"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setPublicKey([B)V

    .line 318
    const-string v4, "privkey"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badguy/terrortime/Client;->setEncrypted_privateKey([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 324
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 323
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 320
    :catch_0
    move-exception v4

    .line 321
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "EXCEPTION LOG"

    const-string v6, "updateClientSettings: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 324
    goto :goto_0

    .line 327
    :cond_3
    :goto_1
    return-object v1

    .line 323
    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_4
    throw v4

    .line 294
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    :goto_3
    return-object v1
.end method

.method public final getContacts(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/badguy/terrortime/Contact;",
            ">;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v0, "retcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badguy/terrortime/Contact;>;"
    if-nez p1, :cond_0

    .line 515
    return-object v0

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 518
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 519
    return-object v0

    .line 521
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_CONTACTS_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 523
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 526
    :cond_2
    const-string v4, "contactid"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "contactName":Ljava/lang/String;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 528
    .local v5, "clientName":Ljava/lang/String;
    new-instance v6, Lcom/badguy/terrortime/Contact;

    invoke-direct {v6, v5, v4}, Lcom/badguy/terrortime/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .end local v4    # "contactName":Ljava/lang/String;
    .end local v5    # "clientName":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 530
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_3
    return-object v0
.end method

.method public final getMessages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/badguy/terrortime/Message;",
            ">;"
        }
    .end annotation

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v0, "retmsgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badguy/terrortime/Message;>;"
    if-nez p1, :cond_0

    .line 678
    return-object v0

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 681
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 682
    return-object v0

    .line 684
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/badguy/terrortime/ClientDBHandlerClass;->QUERY_MESSAGE_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 686
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 689
    :cond_2
    const-string v4, "contactid"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 690
    .local v4, "contactName":Ljava/lang/String;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 691
    .local v5, "clientName":Ljava/lang/String;
    const-string v6, "msg"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 692
    .local v6, "content":[B
    const/4 v7, 0x1

    .line 693
    .local v7, "fromClient":Z
    const-string v8, "fromclient"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_3

    .line 694
    const/4 v7, 0x0

    .line 695
    :cond_3
    new-instance v8, Lcom/badguy/terrortime/Message;

    invoke-direct {v8, v5, v4, v6, v7}, Lcom/badguy/terrortime/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BZ)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    .end local v4    # "contactName":Ljava/lang/String;
    .end local v5    # "clientName":Ljava/lang/String;
    .end local v6    # "content":[B
    .end local v7    # "fromClient":Z
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 697
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 700
    :cond_4
    return-object v0
.end method

.method public final nClients()Ljava/lang/Integer;
    .locals 1

    .line 177
    const-string v0, "Clients"

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->countAllTableRecords(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 139
    sget-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->CREATE_CLIENTS_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->CREATE_CLIENT_CONTACTS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->CREATE_CLIENT_MESSAGES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 152
    sget-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->CREATE_CLIENTS_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->CREATE_CLIENT_CONTACTS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/badguy/terrortime/ClientDBHandlerClass;->CREATE_CLIENT_MESSAGES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 159
    if-eq p2, p3, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->dropAllTables()V

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 162
    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 164
    :cond_0
    return-void
.end method
