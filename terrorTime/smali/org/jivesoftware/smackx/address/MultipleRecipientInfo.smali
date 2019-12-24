.class public Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;
.super Ljava/lang/Object;
.source "MultipleRecipientInfo.java"


# instance fields
.field extension:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;)V
    .locals 0
    .param p1, "extension"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->extension:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    .line 38
    return-void
.end method


# virtual methods
.method public getCCAddresses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->extension:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    sget-object v1, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->cc:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->getAddressesOfType(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReplyAddress()Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->extension:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    sget-object v1, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->replyto:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->getAddressesOfType(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "replyTo":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;

    :goto_0
    return-object v1
.end method

.method public getReplyRoom()Lorg/jxmpp/jid/Jid;
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->extension:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    sget-object v1, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->replyroom:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->getAddressesOfType(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "replyRoom":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getTOAddresses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->extension:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    sget-object v1, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->to:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->getAddressesOfType(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shouldNotReply()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->extension:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    sget-object v1, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->noreply:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->getAddressesOfType(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
