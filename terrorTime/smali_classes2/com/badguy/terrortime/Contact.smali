.class public Lcom/badguy/terrortime/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field private clientId:Lcom/badguy/terrortime/TextAppField;

.field private contactId:Lcom/badguy/terrortime/TextAppField;

.field private refreshKeys:Z

.field private rsaPublicKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Contact;->contactId:Lcom/badguy/terrortime/TextAppField;

    .line 9
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Contact;->clientId:Lcom/badguy/terrortime/TextAppField;

    .line 42
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p2}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 46
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Contact;->rsaPublicKeySet:Ljava/util/Set;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badguy/terrortime/Contact;->refreshKeys:Z

    .line 48
    return-void
.end method


# virtual methods
.method public final addPublicKey(Ljava/security/PublicKey;)Z
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 26
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->rsaPublicKeySet:Ljava/util/Set;

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

    .line 30
    .local p1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->rsaPublicKeySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 72
    return v0

    .line 74
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    const-class v2, Lcom/badguy/terrortime/Contact;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badguy/terrortime/Contact;

    .line 79
    .local v2, "other":Lcom/badguy/terrortime/Contact;
    iget-object v3, p0, Lcom/badguy/terrortime/Contact;->contactId:Lcom/badguy/terrortime/TextAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Contact;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/TextAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    return v1

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/badguy/terrortime/Contact;->clientId:Lcom/badguy/terrortime/TextAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Contact;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/TextAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    return v1

    .line 85
    :cond_3
    iget-object v3, p0, Lcom/badguy/terrortime/Contact;->rsaPublicKeySet:Ljava/util/Set;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lcom/badguy/terrortime/Contact;->rsaPublicKeySet:Ljava/util/Set;

    if-eqz v4, :cond_4

    .line 86
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 87
    return v1

    .line 91
    :cond_4
    return v0

    .line 75
    .end local v2    # "other":Lcom/badguy/terrortime/Contact;
    :cond_5
    :goto_0
    return v1
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContactId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

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

    .line 14
    iget-boolean v0, p0, Lcom/badguy/terrortime/Contact;->refreshKeys:Z

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badguy/terrortime/VCardHelper;->getPublicKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/badguy/terrortime/Contact;->rsaPublicKeySet:Ljava/util/Set;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badguy/terrortime/Contact;->refreshKeys:Z

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->rsaPublicKeySet:Ljava/util/Set;

    return-object v0
.end method

.method public final removePublicKey(Ljava/security/PublicKey;)Z
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 33
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->rsaPublicKeySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setClientId(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public final setContactId(Ljava/lang/String;)V
    .locals 1
    .param p1, "contactId"    # Ljava/lang/String;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/badguy/terrortime/Contact;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 58
    :cond_0
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

    .line 22
    .local p1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    iput-object p1, p0, Lcom/badguy/terrortime/Contact;->rsaPublicKeySet:Ljava/util/Set;

    .line 23
    return-void
.end method

.method public final toggleRefreshOn()V
    .locals 1

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badguy/terrortime/Contact;->refreshKeys:Z

    .line 38
    return-void
.end method
