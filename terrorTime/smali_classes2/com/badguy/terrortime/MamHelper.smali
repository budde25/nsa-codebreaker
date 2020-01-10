.class public Lcom/badguy/terrortime/MamHelper;
.super Ljava/lang/Object;
.source "MamHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageArchive()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getInstance()Lcom/badguy/terrortime/TerrorTimeApplication;

    move-result-object v0

    .line 22
    .local v0, "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    :try_start_0
    invoke-virtual {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->getMamManager()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/badguy/terrortime/-$$Lambda$MamHelper$TzcYVUR15MlXmeFc7Ce_u9xlcSI;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$TzcYVUR15MlXmeFc7Ce_u9xlcSI;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/mam/MamManager;

    .line 23
    .local v1, "mamManager":Lorg/jivesoftware/smackx/mam/MamManager;
    invoke-virtual {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->getContactList()Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/badguy/terrortime/-$$Lambda$MamHelper$0ioGksqsduZg6APM76XVutM6p20;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$0ioGksqsduZg6APM76XVutM6p20;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badguy/terrortime/ContactList;

    .line 24
    .local v2, "contactList":Lcom/badguy/terrortime/ContactList;
    invoke-virtual {v2}, Lcom/badguy/terrortime/ContactList;->getUserJid()Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/badguy/terrortime/-$$Lambda$MamHelper$IujRZy8pipkcFtIBvyXzqpoCoq8;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$IujRZy8pipkcFtIBvyXzqpoCoq8;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jxmpp/jid/Jid;

    .line 25
    .local v3, "clientJid":Lorg/jxmpp/jid/Jid;
    invoke-static {}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->builder()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v4

    .line 26
    .local v4, "queryArgs":Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->setResultPageSizeTo(I)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    .line 27
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->build()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;)Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->getMessages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/badguy/terrortime/-$$Lambda$MamHelper$qw8unbVl0Vef-LM3CMfYKStNRIo;

    invoke-direct {v6, v3}, Lcom/badguy/terrortime/-$$Lambda$MamHelper$qw8unbVl0Vef-LM3CMfYKStNRIo;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 29
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/badguy/terrortime/-$$Lambda$MamHelper$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    .line 51
    invoke-static {v6}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    return-object v5

    .line 53
    .end local v1    # "mamManager":Lorg/jivesoftware/smackx/mam/MamManager;
    .end local v2    # "contactList":Lcom/badguy/terrortime/ContactList;
    .end local v3    # "clientJid":Lorg/jxmpp/jid/Jid;
    .end local v4    # "queryArgs":Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    :catchall_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "EXCEPTION"

    const-string v3, "Failed to get message archive"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v1    # "e":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$Ncanx43zkIa2eF9FP7dskyobBek(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getMessageArchive$0()Ljava/lang/Exception;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No mam manager object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getMessageArchive$1()Ljava/lang/Exception;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No contact list object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getMessageArchive$2()Ljava/lang/Exception;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No user jid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getMessageArchive$4(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Message;)Lcom/badguy/terrortime/Message;
    .locals 11
    .param p0, "clientJid"    # Lorg/jxmpp/jid/Jid;
    .param p1, "msg"    # Lorg/jivesoftware/smack/packet/Message;

    .line 30
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    .line 31
    .local v0, "to":Lorg/jxmpp/jid/BareJid;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    .line 32
    .local v1, "from":Lorg/jxmpp/jid/BareJid;
    invoke-interface {p0}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/jxmpp/jid/BareJid;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 33
    .local v2, "fromClient":Z
    :goto_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "body":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 35
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBodies()Ljava/util/Set;

    move-result-object v4

    .line 36
    .local v4, "bodies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smack/packet/Message$Body;>;"
    if-nez v4, :cond_1

    .line 37
    const-string v3, ""

    move-object v9, v3

    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/badguy/terrortime/-$$Lambda$MamHelper$Ncanx43zkIa2eF9FP7dskyobBek;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$Ncanx43zkIa2eF9FP7dskyobBek;

    .line 40
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/badguy/terrortime/-$$Lambda$MamHelper$l5-OVETKytjsMGqc4b1miPg8OOk;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$l5-OVETKytjsMGqc4b1miPg8OOk;

    .line 41
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/badguy/terrortime/-$$Lambda$MamHelper$ysW_fvT8H1f4ly8te8Kd64ujJxw;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$ysW_fvT8H1f4ly8te8Kd64ujJxw;

    .line 42
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 43
    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    move-object v9, v3

    goto :goto_1

    .line 34
    .end local v4    # "bodies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smack/packet/Message$Body;>;"
    :cond_2
    move-object v9, v3

    .line 47
    .end local v3    # "body":Ljava/lang/String;
    .local v9, "body":Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/badguy/terrortime/Message;

    invoke-interface {p0}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/jxmpp/jid/BareJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lorg/jxmpp/jid/BareJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 48
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v10

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/badguy/terrortime/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;)V

    .line 49
    .local v3, "ttMessage":Lcom/badguy/terrortime/Message;
    return-object v3
.end method

.method static synthetic lambda$null$3(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # Lorg/jivesoftware/smack/packet/Message$Body;

    .line 41
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message$Body;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$ysW_fvT8H1f4ly8te8Kd64ujJxw(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
