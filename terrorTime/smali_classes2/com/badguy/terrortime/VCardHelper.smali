.class public Lcom/badguy/terrortime/VCardHelper;
.super Ljava/lang/Object;
.source "VCardHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPublicKeys(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p0, "jid"    # Ljava/lang/String;
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

    .line 68
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getInstance()Lcom/badguy/terrortime/TerrorTimeApplication;

    move-result-object v0

    .line 70
    .local v0, "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    :try_start_0
    invoke-virtual {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->getXMPPTCPConnection()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$V_ab9BKXwxWILxMuqSWCPrS7qA8;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$V_ab9BKXwxWILxMuqSWCPrS7qA8;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 71
    .local v1, "connection":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    invoke-virtual {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->getContactList()Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$P6PWv0GkVlERoGvnHZoELRpWgaA;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$P6PWv0GkVlERoGvnHZoELRpWgaA;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badguy/terrortime/ContactList;

    .line 73
    .local v2, "contactList":Lcom/badguy/terrortime/ContactList;
    invoke-virtual {v2, p0}, Lcom/badguy/terrortime/ContactList;->getJidFromString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$xN8H2Y8k9I2MDew5p91JYgbazz8;

    invoke-direct {v4, v1, p0}, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$xN8H2Y8k9I2MDew5p91JYgbazz8;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$b5R-GKcmB5jnxOAbd20Qar3Rppk;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$b5R-GKcmB5jnxOAbd20Qar3Rppk;

    .line 78
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jxmpp/jid/Jid;

    .line 80
    .local v3, "contactJid":Lorg/jxmpp/jid/Jid;
    invoke-interface {v3}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v4

    invoke-static {v4}, Lcom/badguy/terrortime/VCardHelper;->getPublicKeys(Lorg/jxmpp/jid/EntityBareJid;)Ljava/util/Set;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 82
    .end local v1    # "connection":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    .end local v2    # "contactList":Lcom/badguy/terrortime/ContactList;
    .end local v3    # "contactJid":Lorg/jxmpp/jid/Jid;
    :catchall_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "EXCEPTION"

    const-string v3, "Unable to get public key"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v1    # "e":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static getPublicKeys(Lorg/jxmpp/jid/EntityBareJid;)Ljava/util/Set;
    .locals 11
    .param p0, "jid"    # Lorg/jxmpp/jid/EntityBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getInstance()Lcom/badguy/terrortime/TerrorTimeApplication;

    move-result-object v0

    .line 91
    .local v0, "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    :try_start_0
    invoke-virtual {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->getVCardManager()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$ceF-VjXeHgtag-1LCjQSmFTNzmU;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$ceF-VjXeHgtag-1LCjQSmFTNzmU;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    .line 92
    .local v1, "vCardManager":Lorg/jivesoftware/smackx/vcardtemp/VCardManager;
    invoke-virtual {v1, p0}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->loadVCard(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    move-result-object v2

    .line 93
    .local v2, "vCard":Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    if-nez v2, :cond_0

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    return-object v3

    .line 97
    :cond_0
    const-string v3, "DESC"

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "publicKey":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 102
    :cond_1
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "keyArray":[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 104
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    .line 105
    .local v8, "key":Ljava/lang/String;
    invoke-static {v8}, Lcom/badguy/terrortime/crypto/CryptHelper;->convertPublicPEMtoPublicKey(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v9

    sget-object v10, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$e79pltK3ySt8jVR8Oyuz_Ft4Mo0;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$e79pltK3ySt8jVR8Oyuz_Ft4Mo0;

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    nop

    .end local v8    # "key":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 107
    :cond_2
    return-object v5

    .line 109
    .end local v1    # "vCardManager":Lorg/jivesoftware/smackx/vcardtemp/VCardManager;
    .end local v2    # "vCard":Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .end local v3    # "publicKey":Ljava/lang/String;
    .end local v4    # "keyArray":[Ljava/lang/String;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    :catchall_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "EXCEPTION"

    const-string v3, "Error retrieving public key"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v1    # "e":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getPublicKeys$2()Ljava/lang/Exception;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getPublicKeys$3()Ljava/lang/Exception;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Contact list is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getPublicKeys$4(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;
    .locals 1
    .param p0, "connection"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;
    .param p1, "jid"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    invoke-interface {v0}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getPublicKeys$5()Ljava/lang/Exception;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No matching jid object found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getPublicKeys$6()Ljava/lang/Exception;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to get VCardManager"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getPublicKeys$7()Ljava/lang/Exception;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to convert key"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$savePublicKey$0()Ljava/lang/Exception;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to get VCardManager"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$savePublicKey$1()Ljava/lang/Exception;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static savePublicKey(Ljava/lang/String;)Z
    .locals 16
    .param p0, "publicKey"    # Ljava/lang/String;

    .line 33
    move-object/from16 v1, p0

    const-string v0, ":"

    const-string v2, "DESC"

    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getInstance()Lcom/badguy/terrortime/TerrorTimeApplication;

    move-result-object v3

    .line 35
    .local v3, "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    :try_start_0
    invoke-virtual {v3}, Lcom/badguy/terrortime/TerrorTimeApplication;->getVCardManager()Ljava/util/Optional;

    move-result-object v5

    sget-object v6, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$MFz-lOa40tqBYrCyHPzQ0thn4IQ;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$MFz-lOa40tqBYrCyHPzQ0thn4IQ;

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    .line 36
    .local v5, "vCardManager":Lorg/jivesoftware/smackx/vcardtemp/VCardManager;
    invoke-virtual {v3}, Lcom/badguy/terrortime/TerrorTimeApplication;->getXMPPTCPConnection()Ljava/util/Optional;

    move-result-object v6

    sget-object v7, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$a8pL86RXMnQJ05gZCNGN1wTSYWI;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$a8pL86RXMnQJ05gZCNGN1wTSYWI;

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 38
    .local v6, "connection":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v7

    invoke-interface {v7}, Lorg/jxmpp/jid/EntityFullJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v7

    .line 39
    .local v7, "jid":Lorg/jxmpp/jid/EntityBareJid;
    invoke-virtual {v5, v7}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->loadVCard(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    move-result-object v8

    .line 40
    .local v8, "vCard":Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    if-nez v8, :cond_0

    .line 41
    new-instance v9, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    invoke-direct {v9}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;-><init>()V

    move-object v8, v9

    .line 44
    :cond_0
    invoke-virtual {v8, v2}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 45
    .local v9, "desc":Ljava/lang/String;
    const/4 v10, 0x1

    if-eqz v9, :cond_3

    .line 46
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 47
    .local v11, "keyArray":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_2

    aget-object v14, v11, v13

    .line 49
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v15, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    return v10

    .line 47
    .end local v14    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 53
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v11    # "keyArray":[Ljava/lang/String;
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {v8, v2, v1}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_1
    invoke-virtual {v5, v8}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->saveVCard(Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    return v10

    .line 61
    .end local v5    # "vCardManager":Lorg/jivesoftware/smackx/vcardtemp/VCardManager;
    .end local v6    # "connection":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    .end local v7    # "jid":Lorg/jxmpp/jid/EntityBareJid;
    .end local v8    # "vCard":Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .end local v9    # "desc":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "EXCEPTION"

    const-string v4, "Error saving public key"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    return v2
.end method

.method public static savePublicKey(Ljava/security/PublicKey;)Z
    .locals 3
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/badguy/terrortime/crypto/CryptHelper;->convertKeyToPEM(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badguy/terrortime/VCardHelper;->savePublicKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "EXCEPTION"

    const-string v2, "Failed to convert public key to PEM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return v0
.end method
