.class public Lcom/badguy/terrortime/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field private checkPin:Lcom/badguy/terrortime/BlobAppField;

.field private clientKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private encryptPin:Lcom/badguy/terrortime/TextAppField;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;"
        }
    .end annotation
.end field

.field private oAuth2AccessToken:Lcom/badguy/terrortime/BlobAppField;

.field private oAuth2AccessTokenExpiration:Lcom/badguy/terrortime/IntAppField;

.field private oAuth2ClientId:Lcom/badguy/terrortime/TextAppField;

.field private oAuth2ClientSecret:Lcom/badguy/terrortime/BlobAppField;

.field private oAuth2RenewToken:Lcom/badguy/terrortime/BlobAppField;

.field private oAuth2RenewTokenExpiration:Lcom/badguy/terrortime/IntAppField;

.field private oAuth2ServerIP:Lcom/badguy/terrortime/TextAppField;

.field private privateKey:Lcom/badguy/terrortime/BlobAppField;

.field private publicKey:Lcom/badguy/terrortime/BlobAppField;

.field private publicKeyFingerprint:Ljava/lang/String;

.field private registerServerIP:Lcom/badguy/terrortime/TextAppField;

.field private rsaPrivateKey:Ljava/security/PrivateKey;

.field private rsaPublicKey:Ljava/security/PublicKey;

.field private xmppServerIP:Lcom/badguy/terrortime/TextAppField;

.field private xmppUserName:Lcom/badguy/terrortime/TextAppField;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->registerServerIP:Lcom/badguy/terrortime/TextAppField;

    .line 32
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->xmppUserName:Lcom/badguy/terrortime/TextAppField;

    .line 33
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->xmppServerIP:Lcom/badguy/terrortime/TextAppField;

    .line 34
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientId:Lcom/badguy/terrortime/TextAppField;

    .line 35
    new-instance v0, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/BlobAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientSecret:Lcom/badguy/terrortime/BlobAppField;

    .line 36
    new-instance v0, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/BlobAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2AccessToken:Lcom/badguy/terrortime/BlobAppField;

    .line 37
    new-instance v0, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/BlobAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2RenewToken:Lcom/badguy/terrortime/BlobAppField;

    .line 38
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ServerIP:Lcom/badguy/terrortime/TextAppField;

    .line 39
    new-instance v0, Lcom/badguy/terrortime/IntAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/IntAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2AccessTokenExpiration:Lcom/badguy/terrortime/IntAppField;

    .line 40
    new-instance v0, Lcom/badguy/terrortime/IntAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/IntAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2RenewTokenExpiration:Lcom/badguy/terrortime/IntAppField;

    .line 41
    new-instance v0, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/BlobAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->privateKey:Lcom/badguy/terrortime/BlobAppField;

    .line 42
    new-instance v0, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/BlobAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->publicKey:Lcom/badguy/terrortime/BlobAppField;

    .line 43
    new-instance v0, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/BlobAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->checkPin:Lcom/badguy/terrortime/BlobAppField;

    .line 44
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->encryptPin:Lcom/badguy/terrortime/TextAppField;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->contacts:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->messages:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->clientKeySet:Ljava/util/Set;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    .line 49
    iput-object v0, p0, Lcom/badguy/terrortime/Client;->rsaPrivateKey:Ljava/security/PrivateKey;

    .line 50
    iput-object v0, p0, Lcom/badguy/terrortime/Client;->publicKeyFingerprint:Ljava/lang/String;

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->xmppUserName:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public static synthetic lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$countContact$9(Ljava/lang/String;Lcom/badguy/terrortime/Message;)Z
    .locals 1
    .param p0, "contactId"    # Ljava/lang/String;
    .param p1, "m"    # Lcom/badguy/terrortime/Message;

    .line 558
    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$decryptMessage$2()Ljava/lang/Exception;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No client private key"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$decryptMessage$3()Ljava/lang/Exception;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No client fingerprint"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$decryptMessage$4()Ljava/lang/Exception;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Decryption error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$encryptMessage$1()Ljava/lang/Exception;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Encryption error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getContact$7(Ljava/lang/String;Lcom/badguy/terrortime/Contact;)Z
    .locals 1
    .param p0, "contactId"    # Ljava/lang/String;
    .param p1, "contact"    # Lcom/badguy/terrortime/Contact;

    .line 537
    invoke-virtual {p1}, Lcom/badguy/terrortime/Contact;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getContactKeys$0()Ljava/lang/Exception;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Contact not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getMessages$10(Ljava/lang/String;ZLcom/badguy/terrortime/Message;)Z
    .locals 1
    .param p0, "contactId"    # Ljava/lang/String;
    .param p1, "fromClient"    # Z
    .param p2, "m"    # Lcom/badguy/terrortime/Message;

    .line 598
    invoke-virtual {p2}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p2}, Lcom/badguy/terrortime/Message;->isFromClient()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 598
    :goto_0
    return v0
.end method

.method static synthetic lambda$getMessages$11(Ljava/lang/String;Lcom/badguy/terrortime/Message;)Z
    .locals 1
    .param p0, "contactId"    # Ljava/lang/String;
    .param p1, "m"    # Lcom/badguy/terrortime/Message;

    .line 606
    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setEncrypted_privateKey$12()Ljava/lang/Exception;
    .locals 2

    .line 695
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to convert key"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$setPrivateKey$5()Ljava/lang/Exception;
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to convert key"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$setPublicKey$6()Ljava/lang/Exception;
    .locals 2

    .line 393
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to convert key"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final addAllContacts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Contact;",
            ">;)V"
        }
    .end annotation

    .line 544
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/badguy/terrortime/Contact;>;"
    if-eqz p1, :cond_0

    .line 546
    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$Client$OF4irCVvHD9CrDMRD59yU9HT9Qs;

    invoke-direct {v0, p0}, Lcom/badguy/terrortime/-$$Lambda$Client$OF4irCVvHD9CrDMRD59yU9HT9Qs;-><init>(Lcom/badguy/terrortime/Client;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 553
    :cond_0
    return-void
.end method

.method public final addAllMessages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;)V"
        }
    .end annotation

    .line 584
    .local p1, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/badguy/terrortime/Message;>;"
    if-eqz p1, :cond_0

    .line 585
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badguy/terrortime/Message;

    .line 586
    .local v1, "m":Lcom/badguy/terrortime/Message;
    invoke-virtual {p0, v1}, Lcom/badguy/terrortime/Client;->addMessage(Lcom/badguy/terrortime/Message;)V

    .end local v1    # "m":Lcom/badguy/terrortime/Message;
    goto :goto_0

    .line 588
    :cond_0
    return-void
.end method

.method public final addContact(Lcom/badguy/terrortime/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/badguy/terrortime/Contact;

    .line 529
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badguy/terrortime/Contact;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/Client;->getContact(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->contacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_0
    return-void
.end method

.method public final addContact(Ljava/lang/String;)V
    .locals 3
    .param p1, "contactId"    # Ljava/lang/String;

    .line 523
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/Client;->getContact(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->contacts:Ljava/util/List;

    new-instance v1, Lcom/badguy/terrortime/Contact;

    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->getOAuth2ClientId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/badguy/terrortime/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_0
    return-void
.end method

.method public final addMessage(Lcom/badguy/terrortime/Message;)V
    .locals 6
    .param p1, "msg"    # Lcom/badguy/terrortime/Message;

    .line 578
    if-eqz p1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->messages:Ljava/util/List;

    new-instance v1, Lcom/badguy/terrortime/Message;

    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->getOAuth2ClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContent()[B

    move-result-object v4

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->isFromClient()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badguy/terrortime/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_0
    return-void
.end method

.method public final addPublicKey(Ljava/security/PublicKey;)Z
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 71
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->clientKeySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addPublicKeys(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/PublicKey;",
            ">;)Z"
        }
    .end annotation

    .line 73
    .local p1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->clientKeySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final countContact(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/badguy/terrortime/-$$Lambda$Client$djO3CNH8MRoAhjVnoHcnAJSuwMA;

    invoke-direct {v1, p1}, Lcom/badguy/terrortime/-$$Lambda$Client$djO3CNH8MRoAhjVnoHcnAJSuwMA;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    .line 557
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final countMessages(Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "fromClient"    # Z

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/badguy/terrortime/Client;->getMessages(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public decryptClientBytes(Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "rst":[B
    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->generateSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 207
    .local v1, "dbKey":Ljavax/crypto/SecretKey;
    const-string v2, "decryptClientBytes"

    if-nez p2, :cond_0

    .line 208
    const-string v3, "Empty (NULL) Client variable passed to function. This very well might NOT be an error."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :cond_0
    :try_start_0
    invoke-static {v1, p2}, Lcom/badguy/terrortime/crypto/CryptHelper;->aesDecrypt_ECB(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 215
    nop

    .line 218
    :goto_0
    if-eqz p2, :cond_1

    .line 219
    const-string v3, "Ran successfully on non-NULL value."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    return-object v0

    .line 213
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final decryptMessage([B)Ljava/util/Optional;
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Optional<",
            "[B>;"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/badguy/terrortime/Message;

    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->getXmppUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/badguy/terrortime/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 151
    .local v0, "msg":Lcom/badguy/terrortime/Message;
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/Client;->decryptMessage(Lcom/badguy/terrortime/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 152
    :cond_0
    invoke-virtual {v0}, Lcom/badguy/terrortime/Message;->getContent()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public final decryptMessage(Lcom/badguy/terrortime/Message;)Z
    .locals 5
    .param p1, "msg"    # Lcom/badguy/terrortime/Message;

    .line 156
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 158
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->getRsaPrivateKey()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/badguy/terrortime/-$$Lambda$Client$CA-4KDL4ayDN-awQixHsotezqSM;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$CA-4KDL4ayDN-awQixHsotezqSM;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    .line 159
    .local v1, "clientPrivKey":Ljava/security/PrivateKey;
    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->getPublicKeyFingerprint()Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/badguy/terrortime/-$$Lambda$Client$K_BfC2wVH_wVfQH2jGk9LYOSi8I;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$K_BfC2wVH_wVfQH2jGk9LYOSi8I;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "clientFingerprint":Ljava/lang/String;
    invoke-static {p1, v1, v2}, Lcom/badguy/terrortime/crypto/Messaging;->decryptMessage(Lcom/badguy/terrortime/Message;Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/badguy/terrortime/-$$Lambda$Client$6isRKf6DuVm8vF1iOvC0uukRRY4;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$6isRKf6DuVm8vF1iOvC0uukRRY4;

    .line 161
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 162
    .local v3, "decryptedBytes":[B
    invoke-virtual {p1, v3}, Lcom/badguy/terrortime/Message;->setContent([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    const/4 v0, 0x1

    return v0

    .line 164
    .end local v1    # "clientPrivKey":Ljava/security/PrivateKey;
    .end local v2    # "clientFingerprint":Ljava/lang/String;
    .end local v3    # "decryptedBytes":[B
    :catchall_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "EXCEPTION"

    const-string v3, "Unable to decrypt message"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const-string v2, "<decryption failure>"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badguy/terrortime/Message;->setContent([B)V

    .line 168
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public encryptClientBytes(Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "rst":[B
    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->generateSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 186
    .local v1, "dbKey":Ljavax/crypto/SecretKey;
    const-string v2, "encryptClientBytes"

    if-nez p2, :cond_0

    .line 187
    const-string v3, "Empty (NULL) Client variable passed to function. This very well might NOT be an error."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_0
    :try_start_0
    invoke-static {v1, p2}, Lcom/badguy/terrortime/crypto/CryptHelper;->aesEncrypt_ECB(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 194
    nop

    .line 197
    :goto_0
    if-eqz p2, :cond_1

    .line 198
    const-string v3, "Ran successfully on non-NULL value."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    return-object v0

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final encryptMessage(Lcom/badguy/terrortime/Message;)Z
    .locals 5
    .param p1, "msg"    # Lcom/badguy/terrortime/Message;

    .line 127
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 129
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badguy/terrortime/Client;->getContactKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 130
    .local v1, "contactKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->getPublicKeys()Ljava/util/Set;

    move-result-object v2

    .line 134
    .local v2, "clientKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    invoke-static {p1, v2, v1}, Lcom/badguy/terrortime/crypto/Messaging;->encryptMessage(Lcom/badguy/terrortime/Message;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/badguy/terrortime/-$$Lambda$Client$nqavyqI0yM7vNejtlFsc-X73W0w;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$nqavyqI0yM7vNejtlFsc-X73W0w;

    .line 138
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 139
    .local v3, "encryptedContents":[B
    invoke-virtual {p1, v3}, Lcom/badguy/terrortime/Message;->setContent([B)V

    .line 140
    const/4 v0, 0x1

    return v0

    .line 135
    .end local v3    # "encryptedContents":[B
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "No public key for client"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "msg":Lcom/badguy/terrortime/Message;
    throw v3

    .line 131
    .end local v2    # "clientKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    .restart local p1    # "msg":Lcom/badguy/terrortime/Message;
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No public key for contact"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "msg":Lcom/badguy/terrortime/Message;
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v1    # "contactKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    .restart local p1    # "msg":Lcom/badguy/terrortime/Message;
    :catchall_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "EXCEPTION"

    const-string v3, "Unable to encrypt message"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const-string v2, "<encryption failure>"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badguy/terrortime/Message;->setContent([B)V

    .line 146
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 227
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 228
    return v0

    .line 230
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 238
    :cond_1
    const-class v2, Lcom/badguy/terrortime/Client;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badguy/terrortime/Client;

    .line 239
    .local v2, "other":Lcom/badguy/terrortime/Client;
    iget-object v3, p0, Lcom/badguy/terrortime/Client;->registerServerIP:Lcom/badguy/terrortime/TextAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->registerServerIP:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/TextAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->xmppUserName:Lcom/badguy/terrortime/TextAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->xmppUserName:Lcom/badguy/terrortime/TextAppField;

    .line 240
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/TextAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->xmppServerIP:Lcom/badguy/terrortime/TextAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->xmppServerIP:Lcom/badguy/terrortime/TextAppField;

    .line 241
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/TextAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientId:Lcom/badguy/terrortime/TextAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->oAuth2ClientId:Lcom/badguy/terrortime/TextAppField;

    .line 242
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/TextAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientSecret:Lcom/badguy/terrortime/BlobAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->oAuth2ClientSecret:Lcom/badguy/terrortime/BlobAppField;

    .line 243
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/BlobAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->oAuth2AccessToken:Lcom/badguy/terrortime/BlobAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->oAuth2AccessToken:Lcom/badguy/terrortime/BlobAppField;

    .line 244
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/BlobAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->oAuth2ServerIP:Lcom/badguy/terrortime/TextAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->oAuth2ServerIP:Lcom/badguy/terrortime/TextAppField;

    .line 245
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/TextAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->oAuth2AccessTokenExpiration:Lcom/badguy/terrortime/IntAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->oAuth2AccessTokenExpiration:Lcom/badguy/terrortime/IntAppField;

    .line 246
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/IntAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->oAuth2RenewTokenExpiration:Lcom/badguy/terrortime/IntAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->oAuth2RenewTokenExpiration:Lcom/badguy/terrortime/IntAppField;

    .line 247
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/IntAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->privateKey:Lcom/badguy/terrortime/BlobAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->privateKey:Lcom/badguy/terrortime/BlobAppField;

    .line 248
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/BlobAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->publicKey:Lcom/badguy/terrortime/BlobAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->publicKey:Lcom/badguy/terrortime/BlobAppField;

    .line 249
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/BlobAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->checkPin:Lcom/badguy/terrortime/BlobAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->checkPin:Lcom/badguy/terrortime/BlobAppField;

    .line 250
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/BlobAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badguy/terrortime/Client;->encryptPin:Lcom/badguy/terrortime/TextAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->encryptPin:Lcom/badguy/terrortime/TextAppField;

    .line 251
    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/TextAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 256
    :cond_2
    iget-object v3, p0, Lcom/badguy/terrortime/Client;->rsaPrivateKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->rsaPrivateKey:Ljava/security/PrivateKey;

    if-eqz v4, :cond_3

    .line 257
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->rsaPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 258
    return v1

    .line 259
    :cond_3
    iget-object v3, p0, Lcom/badguy/terrortime/Client;->rsaPrivateKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/badguy/terrortime/Client;->rsaPrivateKey:Ljava/security/PrivateKey;

    if-nez v3, :cond_4

    .line 260
    return v1

    .line 261
    :cond_4
    iget-object v3, p0, Lcom/badguy/terrortime/Client;->rsaPrivateKey:Ljava/security/PrivateKey;

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/badguy/terrortime/Client;->rsaPrivateKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_5

    .line 262
    return v1

    .line 265
    :cond_5
    iget-object v3, p0, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    if-eqz v3, :cond_6

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    if-eqz v4, :cond_6

    .line 266
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, v2, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_8

    .line 267
    return v1

    .line 268
    :cond_6
    iget-object v3, p0, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    if-nez v3, :cond_7

    .line 269
    return v1

    .line 270
    :cond_7
    iget-object v3, p0, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    if-eqz v3, :cond_8

    .line 271
    return v1

    .line 274
    :cond_8
    return v0

    .line 253
    :cond_9
    :goto_0
    return v1

    .line 231
    .end local v2    # "other":Lcom/badguy/terrortime/Client;
    :cond_a
    :goto_1
    return v1
.end method

.method public final generatePublicPrivateKeys()Z
    .locals 4

    .line 95
    :try_start_0
    invoke-static {}, Lcom/badguy/terrortime/crypto/Keygen;->generatePublicPrivateKeys()Landroid/support/v4/util/Pair;

    move-result-object v0

    .line 96
    .local v0, "keyPair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badguy/terrortime/Client;->setPublicKey([B)V

    .line 97
    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/badguy/terrortime/Client;->setPrivateKey(Ljava/lang/String;[B)V

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "rsaKeyPair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/security/PublicKey;Ljava/security/PrivateKey;>;"
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/badguy/terrortime/crypto/CryptHelper;->decodePEMKeyPair(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/util/Pair;

    move-result-object v2

    move-object v1, v2

    .line 102
    iget-object v2, v1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/security/PublicKey;

    invoke-virtual {p0, v2}, Lcom/badguy/terrortime/Client;->setRsaPublicKey(Ljava/security/PublicKey;)V

    .line 103
    iget-object v2, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/security/PrivateKey;

    invoke-virtual {p0, v2}, Lcom/badguy/terrortime/Client;->setRsaPrivateKey(Ljava/security/PrivateKey;)V

    .line 106
    iget-object v2, p0, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/badguy/terrortime/crypto/CryptHelper;->computeKeyFingerprint([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badguy/terrortime/Client;->setPublicKeyFingerprint(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const/4 v2, 0x1

    return v2

    .line 109
    .end local v0    # "keyPair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "rsaKeyPair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/security/PublicKey;Ljava/security/PrivateKey;>;"
    :catchall_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "generatePublicPrivateKeys"

    const-string v2, "Failed to generate keypair"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public final generateSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 282
    const-string v0, "generateSymmetricKey: "

    const-string v1, "EXCEPTION LOG"

    const/4 v2, 0x0

    .line 285
    .local v2, "toRtn":Ljavax/crypto/SecretKey;
    iget-object v3, p0, Lcom/badguy/terrortime/Client;->encryptPin:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v3}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "ePin":Ljava/lang/String;
    iget-object v4, p0, Lcom/badguy/terrortime/Client;->encryptPin:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v4}, Lcom/badguy/terrortime/TextAppField;->isDefaultValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 291
    iget-object v4, p0, Lcom/badguy/terrortime/Client;->checkPin:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v4}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v4

    .line 292
    .local v4, "salt":[B
    const/16 v5, 0x2710

    .line 293
    .local v5, "iterations":I
    const/16 v6, 0x100

    .line 294
    .local v6, "keyLength":I
    const/4 v7, 0x0

    .line 295
    .local v7, "md":Ljava/security/MessageDigest;
    const/4 v8, 0x0

    .line 299
    .local v8, "hash":[B
    :try_start_0
    const-string v9, "SHA-256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    move-object v7, v9

    .line 300
    const-string v9, "UTF-8"

    invoke-virtual {v3, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    move-object v8, v9

    .line 303
    if-nez v4, :cond_0

    .line 304
    move-object v4, v8

    .line 305
    iget-object v9, p0, Lcom/badguy/terrortime/Client;->checkPin:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v9, v4}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    goto :goto_0

    .line 307
    :catch_0
    move-exception v9

    .line 308
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v9, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v9, v8}, Lcom/badguy/terrortime/BlobAppField;-><init>([B)V

    iget-object v10, p0, Lcom/badguy/terrortime/Client;->checkPin:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v9, v10}, Lcom/badguy/terrortime/BlobAppField;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 332
    :try_start_1
    const-string v9, "PBKDF2WithHmacSHA256"

    invoke-static {v9}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v9

    .line 333
    .local v9, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v10, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-direct {v10, v11, v4, v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 334
    .local v10, "spec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v9, v10}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 335
    .local v11, "key":Ljavax/crypto/SecretKey;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v11}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    const-string v14, "AES"

    invoke-direct {v12, v13, v14}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v12

    .line 343
    .local v0, "derivedKey":Ljavax/crypto/SecretKey;
    nop

    .line 347
    .end local v2    # "toRtn":Ljavax/crypto/SecretKey;
    .end local v9    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v10    # "spec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v11    # "key":Ljavax/crypto/SecretKey;
    .local v0, "toRtn":Ljavax/crypto/SecretKey;
    nop

    .line 349
    return-object v0

    .line 344
    .end local v0    # "toRtn":Ljavax/crypto/SecretKey;
    .restart local v2    # "toRtn":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v9

    .line 345
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 327
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Pin"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    .end local v4    # "salt":[B
    .end local v5    # "iterations":I
    .end local v6    # "keyLength":I
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v8    # "hash":[B
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unset Pin"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCheckPin()[B
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->checkPin:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public final getContact(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/badguy/terrortime/Contact;",
            ">;"
        }
    .end annotation

    .line 535
    if-eqz p1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/badguy/terrortime/-$$Lambda$Client$FPwS0v5nzxnLmZDXzmYdDsGA7cA;

    invoke-direct {v1, p1}, Lcom/badguy/terrortime/-$$Lambda$Client$FPwS0v5nzxnLmZDXzmYdDsGA7cA;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 538
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 536
    return-object v0

    .line 540
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final getContactKeys(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/Client;->getContact(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$Client$oEoeCWrVIKmkWCtANnm11MAbGGc;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$oEoeCWrVIKmkWCtANnm11MAbGGc;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/Contact;

    .line 119
    .local v0, "contact":Lcom/badguy/terrortime/Contact;
    invoke-virtual {v0}, Lcom/badguy/terrortime/Contact;->getPublicKeys()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 120
    .end local v0    # "contact":Lcom/badguy/terrortime/Contact;
    :catchall_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "EXCEPTION"

    const-string v2, "Unable to get contact\'s public key"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Contact;",
            ">;"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public final getEncryptPin()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->encryptPin:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncrypted_oAuth2AccessToken()[B
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2AccessToken:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncrypted_oAuth2ClientSecret()[B
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientSecret:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncrypted_oAuth2RenewToken()[B
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2RenewToken:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncrypted_privateKey()[B
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->privateKey:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public final getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->messages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Client;->messages:Ljava/util/List;

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->messages:Ljava/util/List;

    return-object v0
.end method

.method public final getMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/badguy/terrortime/-$$Lambda$Client$0Gv2EWXx5edD4m0j-7tFQy-9Yq8;

    invoke-direct {v1, p1}, Lcom/badguy/terrortime/-$$Lambda$Client$0Gv2EWXx5edD4m0j-7tFQy-9Yq8;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$Client$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    .line 607
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 605
    return-object v0
.end method

.method public final getMessages(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "fromClient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/badguy/terrortime/-$$Lambda$Client$RvLwVaSZdo56VGeC57UBTCbPC5w;

    invoke-direct {v1, p1, p2}, Lcom/badguy/terrortime/-$$Lambda$Client$RvLwVaSZdo56VGeC57UBTCbPC5w;-><init>(Ljava/lang/String;Z)V

    .line 598
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$Client$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    .line 600
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 597
    return-object v0
.end method

.method public final getOAuth2AccessToken(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2AccessToken:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badguy/terrortime/Client;->decryptClientBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final getOAuth2AccessTokenExpiration()Ljava/lang/Integer;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2AccessTokenExpiration:Lcom/badguy/terrortime/IntAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/IntAppField;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getOAuth2ClientId()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOAuth2ClientSecret(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientSecret:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badguy/terrortime/Client;->decryptClientBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final getOAuth2RenewToken(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2RenewToken:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badguy/terrortime/Client;->decryptClientBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final getOAuth2RenewTokenExpiration()Ljava/lang/Integer;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2RenewTokenExpiration:Lcom/badguy/terrortime/IntAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/IntAppField;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getOAuth2ServerIP()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ServerIP:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPrivateKey(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->privateKey:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badguy/terrortime/Client;->decryptClientBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPublicKey()[B
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->publicKey:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public final getPublicKeyFingerprint()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->publicKeyFingerprint:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final getPublicKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->clientKeySet:Ljava/util/Set;

    return-object v0
.end method

.method public final getRegisterServerIP()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->registerServerIP:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRsaPrivateKey()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->rsaPrivateKey:Ljava/security/PrivateKey;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final getRsaPublicKey()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final getXmppServerIP()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->xmppServerIP:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getXmppUserName()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->xmppUserName:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$addAllContacts$8$Client(Lcom/badguy/terrortime/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/badguy/terrortime/Contact;

    .line 547
    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->getOAuth2ClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badguy/terrortime/Contact;->setClientId(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p1}, Lcom/badguy/terrortime/Contact;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/Client;->getContact(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->contacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_0
    return-void
.end method

.method public final removePublicKey(Ljava/security/PublicKey;)Z
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 74
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->clientKeySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setCheckPin([B)V
    .locals 1
    .param p1, "chkPin"    # [B

    .line 408
    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->checkPin:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 411
    :cond_0
    return-void
.end method

.method public final setContactList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Contact;",
            ">;)V"
        }
    .end annotation

    .line 518
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/badguy/terrortime/Contact;>;"
    if-eqz p1, :cond_0

    .line 519
    iput-object p1, p0, Lcom/badguy/terrortime/Client;->contacts:Ljava/util/List;

    .line 520
    :cond_0
    return-void
.end method

.method public final setEncryptPin(Ljava/lang/String;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .line 357
    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->encryptPin:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 361
    :cond_0
    return-void
.end method

.method public setEncrypted_oAuth2AccessToken([B)V
    .locals 1
    .param p1, "value"    # [B

    .line 683
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2AccessToken:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 684
    return-void
.end method

.method public setEncrypted_oAuth2ClientSecret([B)V
    .locals 1
    .param p1, "value"    # [B

    .line 674
    if-eqz p1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientSecret:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 676
    :cond_0
    return-void
.end method

.method public setEncrypted_oAuth2RenewToken([B)V
    .locals 1
    .param p1, "value"    # [B

    .line 711
    if-eqz p1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2RenewToken:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 713
    :cond_0
    return-void
.end method

.method public setEncrypted_privateKey([B)V
    .locals 3
    .param p1, "value"    # [B

    .line 691
    if-eqz p1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->privateKey:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 694
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badguy/terrortime/Client;->getPrivateKey(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/badguy/terrortime/crypto/CryptHelper;->convertPrivatePEMtoPrivateKey(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$Client$pBdDMCuCdoHjV0KLOJ8jHAtVEag;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$pBdDMCuCdoHjV0KLOJ8jHAtVEag;

    .line 695
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    .line 694
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/Client;->setRsaPrivateKey(Ljava/security/PrivateKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    goto :goto_0

    .line 696
    :catchall_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "EXCEPTION"

    const-string v2, "unable to set private key"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public final setMessageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;)V"
        }
    .end annotation

    .line 572
    .local p1, "messagetList":Ljava/util/List;, "Ljava/util/List<Lcom/badguy/terrortime/Message;>;"
    if-eqz p1, :cond_0

    .line 573
    iput-object p1, p0, Lcom/badguy/terrortime/Client;->messages:Ljava/util/List;

    .line 575
    :cond_0
    return-void
.end method

.method public final setOAuth2AccessToken(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 468
    if-eqz p2, :cond_0

    .line 469
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2AccessToken:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {p0, p1, p2}, Lcom/badguy/terrortime/Client;->encryptClientBytes(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 471
    :cond_0
    return-void
.end method

.method public final setOAuth2AccessTokenExpiration(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "epochTime"    # Ljava/lang/Integer;

    .line 498
    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2AccessTokenExpiration:Lcom/badguy/terrortime/IntAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/IntAppField;->setValue(Ljava/lang/Integer;)V

    .line 501
    :cond_0
    return-void
.end method

.method public final setOAuth2ClientId(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .line 448
    if-eqz p1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 451
    :cond_0
    return-void
.end method

.method public final setOAuth2ClientSecret(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "clientSecret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    if-eqz p2, :cond_0

    .line 459
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ClientSecret:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {p0, p1, p2}, Lcom/badguy/terrortime/Client;->encryptClientBytes(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 461
    :cond_0
    return-void
.end method

.method public final setOAuth2RenewToken(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 478
    if-eqz p2, :cond_0

    .line 479
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2RenewToken:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {p0, p1, p2}, Lcom/badguy/terrortime/Client;->encryptClientBytes(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 481
    :cond_0
    return-void
.end method

.method public final setOAuth2RenewTokenExpiration(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "epochTime"    # Ljava/lang/Integer;

    .line 508
    if-eqz p1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2RenewTokenExpiration:Lcom/badguy/terrortime/IntAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/IntAppField;->setValue(Ljava/lang/Integer;)V

    .line 511
    :cond_0
    return-void
.end method

.method public final setOAuth2ServerIP(Ljava/lang/String;)V
    .locals 1
    .param p1, "oAuth2IP"    # Ljava/lang/String;

    .line 488
    if-eqz p1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->oAuth2ServerIP:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 491
    :cond_0
    return-void
.end method

.method public final setPrivateKey(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "privKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 373
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->privateKey:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {p0, p1, p2}, Lcom/badguy/terrortime/Client;->encryptClientBytes(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 376
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/badguy/terrortime/crypto/CryptHelper;->convertPrivatePEMtoPrivateKey(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$Client$63WDeVJkarpIOu65SgJm9WCk9ec;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$63WDeVJkarpIOu65SgJm9WCk9ec;

    .line 377
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    .line 376
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/Client;->setRsaPrivateKey(Ljava/security/PrivateKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXCEPTION"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public final setPublicKey([B)V
    .locals 3
    .param p1, "pubKey"    # [B

    .line 389
    if-eqz p1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->publicKey:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 392
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/badguy/terrortime/crypto/CryptHelper;->convertPublicPEMtoPublicKey(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$Client$OqAgwdbZoVbn91jchC8nAsBPmRw;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$OqAgwdbZoVbn91jchC8nAsBPmRw;

    .line 393
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    .line 392
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/Client;->setRsaPublicKey(Ljava/security/PublicKey;)V

    .line 394
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/badguy/terrortime/crypto/CryptHelper;->computeKeyFingerprint([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/Client;->setPublicKeyFingerprint(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_0
    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "EXCEPTION"

    const-string v2, "unable to set public key"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public final setPublicKeyFingerprint(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicKeyFingerprint"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/badguy/terrortime/Client;->publicKeyFingerprint:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final setPublicKeys(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    iput-object p1, p0, Lcom/badguy/terrortime/Client;->clientKeySet:Ljava/util/Set;

    return-void
.end method

.method public final setRegisterServerIP(Ljava/lang/String;)V
    .locals 1
    .param p1, "regIP"    # Ljava/lang/String;

    .line 418
    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->registerServerIP:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 421
    :cond_0
    return-void
.end method

.method public final setRsaPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "rsaPrivateKey"    # Ljava/security/PrivateKey;

    .line 83
    iput-object p1, p0, Lcom/badguy/terrortime/Client;->rsaPrivateKey:Ljava/security/PrivateKey;

    .line 84
    return-void
.end method

.method public final setRsaPublicKey(Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "rsaPublicKey"    # Ljava/security/PublicKey;

    .line 78
    iput-object p1, p0, Lcom/badguy/terrortime/Client;->rsaPublicKey:Ljava/security/PublicKey;

    .line 79
    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/Client;->addPublicKey(Ljava/security/PublicKey;)Z

    .line 80
    return-void
.end method

.method public final setXmppServerIP(Ljava/lang/String;)V
    .locals 1
    .param p1, "xmppIP"    # Ljava/lang/String;

    .line 438
    if-eqz p1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->xmppServerIP:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 441
    :cond_0
    return-void
.end method

.method public final setXmppUserName(Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->xmppUserName:Lcom/badguy/terrortime/TextAppField;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method public final unsetCheckPin()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/badguy/terrortime/Client;->checkPin:Lcom/badguy/terrortime/BlobAppField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 365
    return-void
.end method

.method public validateAccessToken(Landroid/content/Context;)V
    .locals 20
    .param p1, "applicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    const/4 v12, 0x0

    .line 615
    .local v12, "token":[B
    const-string v13, "/oauth2/token"

    .line 616
    .local v13, "tokenEndpoint":Ljava/lang/String;
    const-string v14, "chat"

    .line 618
    .local v14, "scope":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v15

    .line 623
    .local v15, "pin":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/badguy/terrortime/Client;->getOAuth2ServerIP()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 624
    .local v9, "serverIpAndPort":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 625
    .local v8, "httpsSite":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/badguy/terrortime/Client;->getOAuth2ClientId()Ljava/lang/String;

    move-result-object v16

    .line 626
    .local v16, "clientId":Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/badguy/terrortime/Client;->getOAuth2ClientSecret(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 627
    .local v6, "clientSecret":Ljava/lang/String;
    array-length v0, v9

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1bb

    :goto_0
    move v10, v0

    .line 631
    .local v10, "port":I
    :try_start_0
    new-instance v0, Lcom/badguy/terrortime/ClientCredentialTokenRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "client_credentials"

    const-string v17, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v5, v16

    move-object/from16 v18, v8

    .end local v8    # "httpsSite":Ljava/lang/String;
    .local v18, "httpsSite":Ljava/lang/String;
    move-object v8, v14

    move-object/from16 v19, v9

    .end local v9    # "serverIpAndPort":[Ljava/lang/String;
    .local v19, "serverIpAndPort":[Ljava/lang/String;
    move-object/from16 v9, v17

    :try_start_1
    invoke-direct/range {v2 .. v10}, Lcom/badguy/terrortime/ClientCredentialTokenRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 653
    .local v0, "request":Lcom/badguy/terrortime/ClientCredentialTokenRequest;
    invoke-virtual {v0, v1, v11}, Lcom/badguy/terrortime/ClientCredentialTokenRequest;->getValidTokenAsByteArray(Lcom/badguy/terrortime/Client;Landroid/content/Context;)[B

    move-result-object v2

    move-object v12, v2

    .line 654
    if-eqz v12, :cond_1

    .line 658
    .end local v0    # "request":Lcom/badguy/terrortime/ClientCredentialTokenRequest;
    nop

    .line 659
    return-void

    .line 655
    .restart local v0    # "request":Lcom/badguy/terrortime/ClientCredentialTokenRequest;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Token Request failed."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v6    # "clientSecret":Ljava/lang/String;
    .end local v10    # "port":I
    .end local v12    # "token":[B
    .end local v13    # "tokenEndpoint":Ljava/lang/String;
    .end local v14    # "scope":Ljava/lang/String;
    .end local v15    # "pin":Ljava/lang/String;
    .end local v16    # "clientId":Ljava/lang/String;
    .end local v18    # "httpsSite":Ljava/lang/String;
    .end local v19    # "serverIpAndPort":[Ljava/lang/String;
    .end local p1    # "applicationContext":Landroid/content/Context;
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 656
    .end local v0    # "request":Lcom/badguy/terrortime/ClientCredentialTokenRequest;
    .restart local v6    # "clientSecret":Ljava/lang/String;
    .restart local v10    # "port":I
    .restart local v12    # "token":[B
    .restart local v13    # "tokenEndpoint":Ljava/lang/String;
    .restart local v14    # "scope":Ljava/lang/String;
    .restart local v15    # "pin":Ljava/lang/String;
    .restart local v16    # "clientId":Ljava/lang/String;
    .restart local v18    # "httpsSite":Ljava/lang/String;
    .restart local v19    # "serverIpAndPort":[Ljava/lang/String;
    .restart local p1    # "applicationContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v18    # "httpsSite":Ljava/lang/String;
    .end local v19    # "serverIpAndPort":[Ljava/lang/String;
    .restart local v8    # "httpsSite":Ljava/lang/String;
    .restart local v9    # "serverIpAndPort":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .line 657
    .end local v8    # "httpsSite":Ljava/lang/String;
    .end local v9    # "serverIpAndPort":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "httpsSite":Ljava/lang/String;
    .restart local v19    # "serverIpAndPort":[Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 619
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "clientSecret":Ljava/lang/String;
    .end local v10    # "port":I
    .end local v15    # "pin":Ljava/lang/String;
    .end local v16    # "clientId":Ljava/lang/String;
    .end local v18    # "httpsSite":Ljava/lang/String;
    .end local v19    # "serverIpAndPort":[Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Null context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
