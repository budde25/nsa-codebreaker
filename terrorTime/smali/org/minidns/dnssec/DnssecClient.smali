.class public Lorg/minidns/dnssec/DnssecClient;
.super Lorg/minidns/iterative/ReliableDnsClient;
.source "DnssecClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_DLV:Lorg/minidns/dnsname/DnsName;

.field private static final rootEntryKey:Ljava/math/BigInteger;


# instance fields
.field private dlv:Lorg/minidns/dnsname/DnsName;

.field private final knownSeps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/minidns/dnsname/DnsName;",
            "[B>;"
        }
    .end annotation
.end field

.field private stripSignatureRecords:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1628686155461064465348252249725010996177649738666492500572664444461532807739744536029771810659241049343994038053541290419968870563183856865780916376571550372513476957870843322273120879361960335192976656756972171258658400305760429696147778001233984421619267530978084631948434496468785021389956803104620471232008587410372348519229650742022804219634190734272506220018657920136902014393834092648785514548876370028925405557661759399901378816916683122474038734912535425670533237815676134840739565610963796427401855723026687073600445461090736240030247906095053875491225879656640052743394090544036297390104110989318819106653199917493"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/minidns/dnssec/DnssecClient;->rootEntryKey:Ljava/math/BigInteger;

    .line 57
    const-string v0, "dlv.isc.org"

    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    sput-object v0, Lorg/minidns/dnssec/DnssecClient;->DEFAULT_DLV:Lorg/minidns/dnsname/DnsName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    sget-object v0, Lorg/minidns/dnssec/DnssecClient;->DEFAULT_CACHE:Lorg/minidns/cache/LruCache;

    invoke-direct {p0, v0}, Lorg/minidns/dnssec/DnssecClient;-><init>(Lorg/minidns/DnsCache;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/minidns/DnsCache;)V
    .locals 2
    .param p1, "cache"    # Lorg/minidns/DnsCache;

    .line 72
    invoke-direct {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;-><init>(Lorg/minidns/DnsCache;)V

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/minidns/dnssec/DnssecClient;->knownSeps:Ljava/util/Map;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords:Z

    .line 73
    sget-object v0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    sget-object v1, Lorg/minidns/dnssec/DnssecClient;->rootEntryKey:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/minidns/dnssec/DnssecClient;->addSecureEntryPoint(Lorg/minidns/dnsname/DnsName;[B)V

    .line 74
    return-void
.end method

.method private static isParentOrSelf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "child"    # Ljava/lang/String;
    .param p1, "parent"    # Ljava/lang/String;

    .line 350
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 351
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 352
    :cond_1
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "childSplit":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "parentSplit":[Ljava/lang/String;
    array-length v3, v0

    array-length v4, v2

    const/4 v5, 0x0

    if-le v3, v4, :cond_2

    return v5

    .line 355
    :cond_2
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-gt v3, v4, :cond_4

    .line 356
    array-length v4, v0

    sub-int/2addr v4, v3

    aget-object v4, v0, v4

    array-length v6, v2

    sub-int/2addr v6, v3

    aget-object v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 357
    return v5

    .line 355
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    .end local v3    # "i":I
    :cond_4
    return v1
.end method

.method private performVerification(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;)Lorg/minidns/dnssec/DnssecQueryResult;
    .locals 9
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .param p2, "dnsQueryResult"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 113
    .local v0, "dnsMessage":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage;->asBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v1

    .line 115
    .local v1, "messageBuilder":Lorg/minidns/dnsmessage/DnsMessage$Builder;
    invoke-direct {p0, v0}, Lorg/minidns/dnssec/DnssecClient;->verify(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;

    move-result-object v2

    .line 117
    .local v2, "unverifiedReasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setAuthenticData(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 119
    iget-object v3, v0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 120
    .local v3, "answers":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    iget-object v4, v0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 121
    .local v4, "nameserverRecords":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    iget-object v5, v0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 122
    .local v5, "additionalResourceRecords":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v6, "signatures":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/Record<Lorg/minidns/record/RRSIG;>;>;"
    const-class v7, Lorg/minidns/record/RRSIG;

    invoke-static {v6, v7, v3}, Lorg/minidns/record/Record;->filter(Ljava/util/Collection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 124
    const-class v7, Lorg/minidns/record/RRSIG;

    invoke-static {v6, v7, v4}, Lorg/minidns/record/Record;->filter(Ljava/util/Collection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 125
    const-class v7, Lorg/minidns/record/RRSIG;

    invoke-static {v6, v7, v5}, Lorg/minidns/record/Record;->filter(Ljava/util/Collection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 127
    iget-boolean v7, p0, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords:Z

    if-eqz v7, :cond_1

    .line 128
    invoke-static {v3}, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setAnswers(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 129
    invoke-static {v4}, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setNameserverRecords(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 130
    invoke-static {v5}, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setAdditionalResourceRecords(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 133
    :cond_1
    new-instance v7, Lorg/minidns/dnssec/DnssecQueryResult;

    invoke-virtual {v1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->build()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v8

    invoke-direct {v7, v8, p2, v6, v2}, Lorg/minidns/dnssec/DnssecQueryResult;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/Set;Ljava/util/Set;)V

    return-object v7
.end method

.method private static stripSignatureRecords(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;"
        }
    .end annotation

    .line 137
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 138
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v0, "recordList":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record;

    .line 140
    .local v2, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v3, v2, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v4, Lorg/minidns/record/Record$TYPE;->RRSIG:Lorg/minidns/record/Record$TYPE;

    if-eq v3, v4, :cond_1

    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    :cond_1
    goto :goto_0

    .line 144
    :cond_2
    return-object v0
.end method

.method private verify(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;
    .locals 1
    .param p1, "dnsMessage"    # Lorg/minidns/dnsmessage/DnsMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lorg/minidns/dnssec/DnssecClient;->verifyAnswer(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lorg/minidns/dnssec/DnssecClient;->verifyNsec(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private verifyAnswer(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;
    .locals 12
    .param p1, "dnsMessage"    # Lorg/minidns/dnsmessage/DnsMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnsmessage/Question;

    .line 157
    .local v0, "q":Lorg/minidns/dnsmessage/Question;
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 158
    .local v1, "answers":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->copyAnswers()Ljava/util/List;

    move-result-object v2

    .line 159
    .local v2, "toBeVerified":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-direct {p0, v0, v1, v2}, Lorg/minidns/dnssec/DnssecClient;->verifySignatures(Lorg/minidns/dnsmessage/Question;Ljava/util/Collection;Ljava/util/List;)Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;

    move-result-object v3

    .line 160
    .local v3, "verifiedSignatures":Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;
    iget-object v4, v3, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/Set;

    .line 161
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    return-object v4

    .line 166
    :cond_0
    const/4 v5, 0x0

    .line 167
    .local v5, "sepSignatureValid":Z
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 168
    .local v6, "sepReasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 169
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/minidns/record/Record;

    const-class v9, Lorg/minidns/record/DNSKEY;

    invoke-virtual {v8, v9}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v8

    .line 170
    .local v8, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;"
    if-nez v8, :cond_1

    .line 171
    goto :goto_0

    .line 175
    :cond_1
    invoke-direct {p0, v0, v8}, Lorg/minidns/dnssec/DnssecClient;->verifySecureEntryPoint(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/Record;)Ljava/util/Set;

    move-result-object v9

    .line 176
    .local v9, "reasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 177
    const/4 v5, 0x1

    goto :goto_1

    .line 179
    :cond_2
    invoke-interface {v6, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 181
    :goto_1
    iget-boolean v10, v3, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignaturePresent:Z

    if-nez v10, :cond_3

    .line 182
    sget-object v10, Lorg/minidns/dnssec/DnssecClient;->LOGGER:Ljava/util/logging/Logger;

    const-string v11, "SEP key is not self-signed."

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 184
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 185
    .end local v8    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;"
    .end local v9    # "reasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    goto :goto_0

    .line 187
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    :cond_4
    iget-boolean v7, v3, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignaturePresent:Z

    if-eqz v7, :cond_5

    if-nez v5, :cond_5

    .line 188
    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 190
    :cond_5
    iget-boolean v7, v3, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignatureRequired:Z

    if-eqz v7, :cond_6

    iget-boolean v7, v3, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignaturePresent:Z

    if-nez v7, :cond_6

    .line 191
    new-instance v7, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoSecureEntryPointReason;

    iget-object v8, v0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    invoke-direct {v7, v8}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoSecureEntryPointReason;-><init>(Lorg/minidns/dnsname/DnsName;)V

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 194
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 197
    new-instance v7, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoSignaturesReason;

    invoke-direct {v7, v0}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoSignaturesReason;-><init>(Lorg/minidns/dnsmessage/Question;)V

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 195
    :cond_7
    new-instance v7, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v8, "Only some records are signed!"

    invoke-direct {v7, v0, v8}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/dnsmessage/Question;Ljava/lang/String;)V

    throw v7

    .line 200
    :cond_8
    :goto_2
    return-object v4
.end method

.method private verifyNsec(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;
    .locals 10
    .param p1, "dnsMessage"    # Lorg/minidns/dnsmessage/DnsMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 205
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/dnsmessage/Question;

    .line 206
    .local v1, "q":Lorg/minidns/dnsmessage/Question;
    const/4 v2, 0x0

    .line 207
    .local v2, "validNsec":Z
    const/4 v3, 0x0

    .line 213
    .local v3, "nsecPresent":Z
    const/4 v4, 0x0

    .line 214
    .local v4, "zone":Lorg/minidns/dnsname/DnsName;
    iget-object v5, p1, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 215
    .local v5, "authoritySection":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/Record;

    .line 216
    .local v7, "authorityRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v8, v7, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v9, Lorg/minidns/record/Record$TYPE;->SOA:Lorg/minidns/record/Record$TYPE;

    if-ne v8, v9, :cond_0

    .line 217
    iget-object v4, v7, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 218
    goto :goto_1

    .line 220
    .end local v7    # "authorityRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    :cond_0
    goto :goto_0

    .line 221
    :cond_1
    :goto_1
    if-eqz v4, :cond_b

    .line 229
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/Record;

    .line 232
    .local v7, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    sget-object v8, Lorg/minidns/dnssec/DnssecClient$1;->$SwitchMap$org$minidns$record$Record$TYPE:[I

    iget-object v9, v7, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v9}, Lorg/minidns/record/Record$TYPE;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 244
    goto :goto_2

    .line 239
    :cond_2
    const/4 v3, 0x1

    .line 240
    const-class v8, Lorg/minidns/record/NSEC3;

    invoke-virtual {v7, v8}, Lorg/minidns/record/Record;->as(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v8

    .line 241
    .local v8, "nsec3Record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NSEC3;>;"
    invoke-static {v4, v8, v1}, Lorg/minidns/dnssec/Verifier;->verifyNsec3(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnssec/DnssecUnverifiedReason;

    move-result-object v9

    .line 242
    .local v9, "reason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    goto :goto_3

    .line 234
    .end local v8    # "nsec3Record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NSEC3;>;"
    .end local v9    # "reason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    :cond_3
    const/4 v3, 0x1

    .line 235
    const-class v8, Lorg/minidns/record/NSEC;

    invoke-virtual {v7, v8}, Lorg/minidns/record/Record;->as(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v8

    .line 236
    .local v8, "nsecRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NSEC;>;"
    invoke-static {v8, v1}, Lorg/minidns/dnssec/Verifier;->verifyNsec(Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnssec/DnssecUnverifiedReason;

    move-result-object v9

    .line 237
    .restart local v9    # "reason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    nop

    .line 247
    .end local v8    # "nsecRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NSEC;>;"
    :goto_3
    if-eqz v9, :cond_4

    .line 248
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 250
    :cond_4
    const/4 v2, 0x1

    .line 252
    .end local v7    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .end local v9    # "reason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    :goto_4
    goto :goto_2

    .line 255
    :cond_5
    if-eqz v3, :cond_7

    if-eqz v2, :cond_6

    goto :goto_5

    .line 256
    :cond_6
    new-instance v6, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v7, "Invalid NSEC!"

    invoke-direct {v6, v1, v7}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/dnsmessage/Question;Ljava/lang/String;)V

    throw v6

    .line 259
    :cond_7
    :goto_5
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->copyAuthority()Ljava/util/List;

    move-result-object v6

    .line 260
    .local v6, "toBeVerified":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-direct {p0, v1, v5, v6}, Lorg/minidns/dnssec/DnssecClient;->verifySignatures(Lorg/minidns/dnsmessage/Question;Ljava/util/Collection;Ljava/util/List;)Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;

    move-result-object v7

    .line 261
    .local v7, "verifiedSignatures":Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;
    if-eqz v2, :cond_8

    iget-object v8, v7, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 262
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_6

    .line 264
    :cond_8
    iget-object v8, v7, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 267
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_9

    goto :goto_7

    .line 269
    :cond_9
    new-instance v8, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v9, "Only some resource records from the authority section are signed!"

    invoke-direct {v8, v1, v9}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/dnsmessage/Question;Ljava/lang/String;)V

    throw v8

    .line 272
    :cond_a
    :goto_7
    return-object v0

    .line 222
    .end local v6    # "toBeVerified":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    .end local v7    # "verifiedSignatures":Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;
    :cond_b
    new-instance v6, Lorg/minidns/dnssec/DnssecValidationFailedException$AuthorityDoesNotContainSoa;

    invoke-direct {v6, p1}, Lorg/minidns/dnssec/DnssecValidationFailedException$AuthorityDoesNotContainSoa;-><init>(Lorg/minidns/dnsmessage/DnsMessage;)V

    throw v6
.end method

.method private verifySecureEntryPoint(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/Record;)Ljava/util/Set;
    .locals 12
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/Question;",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/DNSKEY;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    .local p2, "sepRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;"
    iget-object v0, p2, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v0, Lorg/minidns/record/DNSKEY;

    .line 407
    .local v0, "dnskey":Lorg/minidns/record/DNSKEY;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 408
    .local v1, "unverifiedReasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 409
    .local v2, "activeReasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    iget-object v3, p0, Lorg/minidns/dnssec/DnssecClient;->knownSeps:Ljava/util/Map;

    iget-object v4, p2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    iget-object v3, p0, Lorg/minidns/dnssec/DnssecClient;->knownSeps:Ljava/util/Map;

    iget-object v4, p2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v3}, Lorg/minidns/record/DNSKEY;->keyEquals([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    return-object v1

    .line 413
    :cond_0
    new-instance v3, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;

    invoke-direct {v3, p2}, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;-><init>(Lorg/minidns/record/Record;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    return-object v1

    .line 420
    :cond_1
    iget-object v3, p2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v3}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    new-instance v3, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoRootSecureEntryPointReason;

    invoke-direct {v3}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoRootSecureEntryPointReason;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    return-object v1

    .line 425
    :cond_2
    const/4 v3, 0x0

    .line 426
    .local v3, "delegation":Lorg/minidns/record/DelegatingDnssecRR;
    iget-object v4, p2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    sget-object v5, Lorg/minidns/record/Record$TYPE;->DS:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, v4, v5}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnssec/DnssecQueryResult;

    move-result-object v4

    .line 427
    .local v4, "dsResp":Lorg/minidns/dnssec/DnssecQueryResult;
    invoke-virtual {v4}, Lorg/minidns/dnssec/DnssecQueryResult;->getUnverifiedReasons()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 429
    iget-object v5, v4, Lorg/minidns/dnssec/DnssecQueryResult;->dnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    iget-object v5, v5, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    const-class v6, Lorg/minidns/record/DS;

    invoke-virtual {v5, v6}, Lorg/minidns/dnsmessage/DnsMessage;->filterAnswerSectionBy(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 430
    .local v5, "dsRrs":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<Lorg/minidns/record/DS;>;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/Record;

    .line 431
    .local v7, "dsRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DS;>;"
    iget-object v8, v7, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v8, Lorg/minidns/record/DS;

    .line 432
    .local v8, "ds":Lorg/minidns/record/DS;
    invoke-virtual {v0}, Lorg/minidns/record/DNSKEY;->getKeyTag()I

    move-result v9

    iget v10, v8, Lorg/minidns/record/DS;->keyTag:I

    if-ne v9, v10, :cond_3

    .line 433
    move-object v3, v8

    .line 434
    invoke-virtual {v4}, Lorg/minidns/dnssec/DnssecQueryResult;->getUnverifiedReasons()Ljava/util/Set;

    move-result-object v2

    .line 435
    goto :goto_1

    .line 437
    .end local v7    # "dsRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DS;>;"
    .end local v8    # "ds":Lorg/minidns/record/DS;
    :cond_3
    goto :goto_0

    .line 439
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 440
    sget-object v6, Lorg/minidns/dnssec/DnssecClient;->LOGGER:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There is no DS record for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", server gives empty result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 443
    :cond_5
    if-nez v3, :cond_7

    iget-object v6, p0, Lorg/minidns/dnssec/DnssecClient;->dlv:Lorg/minidns/dnsname/DnsName;

    if-eqz v6, :cond_7

    iget-object v7, p2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v6, v7}, Lorg/minidns/dnsname/DnsName;->isChildOf(Lorg/minidns/dnsname/DnsName;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 444
    iget-object v6, p2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v7, p0, Lorg/minidns/dnssec/DnssecClient;->dlv:Lorg/minidns/dnsname/DnsName;

    invoke-static {v6, v7}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object v6

    sget-object v7, Lorg/minidns/record/Record$TYPE;->DLV:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, v6, v7}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnssec/DnssecQueryResult;

    move-result-object v6

    .line 445
    .local v6, "dlvResp":Lorg/minidns/dnssec/DnssecQueryResult;
    invoke-virtual {v6}, Lorg/minidns/dnssec/DnssecQueryResult;->getUnverifiedReasons()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 447
    iget-object v7, v6, Lorg/minidns/dnssec/DnssecQueryResult;->dnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    iget-object v7, v7, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    const-class v8, Lorg/minidns/record/DLV;

    invoke-virtual {v7, v8}, Lorg/minidns/dnsmessage/DnsMessage;->filterAnswerSectionBy(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 448
    .local v7, "dlvRrs":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<Lorg/minidns/record/DLV;>;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/minidns/record/Record;

    .line 449
    .local v9, "dlvRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DLV;>;"
    iget-object v10, p2, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v10, Lorg/minidns/record/DNSKEY;

    invoke-virtual {v10}, Lorg/minidns/record/DNSKEY;->getKeyTag()I

    move-result v10

    iget-object v11, v9, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v11, Lorg/minidns/record/DLV;

    iget v11, v11, Lorg/minidns/record/DLV;->keyTag:I

    if-ne v10, v11, :cond_6

    .line 450
    sget-object v8, Lorg/minidns/dnssec/DnssecClient;->LOGGER:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found DLV for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", awesome."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 451
    iget-object v8, v9, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    move-object v3, v8

    check-cast v3, Lorg/minidns/record/DelegatingDnssecRR;

    .line 452
    invoke-virtual {v6}, Lorg/minidns/dnssec/DnssecQueryResult;->getUnverifiedReasons()Ljava/util/Set;

    move-result-object v2

    .line 453
    goto :goto_3

    .line 455
    .end local v9    # "dlvRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DLV;>;"
    :cond_6
    goto :goto_2

    .line 458
    .end local v6    # "dlvResp":Lorg/minidns/dnssec/DnssecQueryResult;
    .end local v7    # "dlvRrs":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<Lorg/minidns/record/DLV;>;>;"
    :cond_7
    :goto_3
    if-eqz v3, :cond_a

    .line 459
    invoke-static {p2, v3}, Lorg/minidns/dnssec/Verifier;->verify(Lorg/minidns/record/Record;Lorg/minidns/record/DelegatingDnssecRR;)Lorg/minidns/dnssec/DnssecUnverifiedReason;

    move-result-object v6

    .line 460
    .local v6, "unverifiedReason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    if-eqz v6, :cond_8

    .line 461
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 463
    :cond_8
    move-object v1, v2

    .line 465
    .end local v6    # "unverifiedReason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    :cond_9
    :goto_4
    goto :goto_5

    :cond_a
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 466
    new-instance v6, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;

    iget-object v7, p2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-direct {v6, v7}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;-><init>(Lorg/minidns/dnsname/DnsName;)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    :goto_5
    return-object v1
.end method

.method private verifySignatures(Lorg/minidns/dnsmessage/Question;Ljava/util/Collection;Ljava/util/List;)Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;
    .locals 16
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/Question;",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)",
            "Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    .local p2, "reference":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    .local p3, "toBeVerified":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 283
    .local v3, "now":Ljava/util/Date;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 284
    .local v4, "outdatedRrSigs":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/RRSIG;>;"
    new-instance v5, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;-><init>(Lorg/minidns/dnssec/DnssecClient;Lorg/minidns/dnssec/DnssecClient$1;)V

    .line 285
    .local v5, "result":Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .local v6, "rrsigs":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<Lorg/minidns/record/RRSIG;>;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/minidns/record/Record;

    .line 288
    .local v8, "recordToBeVerified":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    const-class v9, Lorg/minidns/record/RRSIG;

    invoke-virtual {v8, v9}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v9

    .line 289
    .local v9, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/RRSIG;>;"
    if-nez v9, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object v10, v9, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v10, Lorg/minidns/record/RRSIG;

    .line 292
    .local v10, "rrsig":Lorg/minidns/record/RRSIG;
    iget-object v11, v10, Lorg/minidns/record/RRSIG;->signatureExpiration:Ljava/util/Date;

    invoke-virtual {v11, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v11

    if-ltz v11, :cond_2

    iget-object v11, v10, Lorg/minidns/record/RRSIG;->signatureInception:Ljava/util/Date;

    invoke-virtual {v11, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v11

    if-lez v11, :cond_1

    goto :goto_1

    .line 297
    :cond_1
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v8    # "recordToBeVerified":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .end local v9    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/RRSIG;>;"
    .end local v10    # "rrsig":Lorg/minidns/record/RRSIG;
    goto :goto_0

    .line 294
    .restart local v8    # "recordToBeVerified":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .restart local v9    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/RRSIG;>;"
    .restart local v10    # "rrsig":Lorg/minidns/record/RRSIG;
    :cond_2
    :goto_1
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    goto :goto_0

    .line 300
    .end local v8    # "recordToBeVerified":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .end local v9    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/RRSIG;>;"
    .end local v10    # "rrsig":Lorg/minidns/record/RRSIG;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 301
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 302
    iget-object v7, v5, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/Set;

    new-instance v8, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoActiveSignaturesReason;

    invoke-direct {v8, v1, v4}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoActiveSignaturesReason;-><init>(Lorg/minidns/dnsmessage/Question;Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 306
    :cond_4
    iget-object v7, v5, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/Set;

    new-instance v8, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoSignaturesReason;

    invoke-direct {v8, v1}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoSignaturesReason;-><init>(Lorg/minidns/dnsmessage/Question;)V

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    :goto_2
    return-object v5

    .line 311
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/minidns/record/Record;

    .line 312
    .local v8, "sigRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/RRSIG;>;"
    iget-object v9, v8, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v9, Lorg/minidns/record/RRSIG;

    .line 314
    .local v9, "rrsig":Lorg/minidns/record/RRSIG;
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    .local v10, "records":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/minidns/record/Record;

    .line 316
    .local v12, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v13, v12, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    iget-object v14, v9, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    if-ne v13, v14, :cond_6

    iget-object v13, v12, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v14, v8, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v13, v14}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 317
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v12    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    :cond_6
    goto :goto_4

    .line 321
    :cond_7
    invoke-direct {v0, v1, v9, v10}, Lorg/minidns/dnssec/DnssecClient;->verifySignedRecords(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/RRSIG;Ljava/util/List;)Ljava/util/Set;

    move-result-object v11

    .line 322
    .local v11, "reasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    iget-object v12, v5, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 324
    iget-object v12, v1, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v13, v9, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v12, v13}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, v9, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    sget-object v13, Lorg/minidns/record/Record$TYPE;->DNSKEY:Lorg/minidns/record/Record$TYPE;

    if-ne v12, v13, :cond_a

    .line 325
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 326
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/minidns/record/Record;

    const-class v15, Lorg/minidns/record/DNSKEY;

    invoke-virtual {v13, v15}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v13

    .line 328
    .local v13, "dnsKeyRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;"
    iget-object v15, v13, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v15, Lorg/minidns/record/DNSKEY;

    .line 330
    .local v15, "dnskey":Lorg/minidns/record/DNSKEY;
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 331
    invoke-virtual {v15}, Lorg/minidns/record/DNSKEY;->getKeyTag()I

    move-result v14

    iget v0, v9, Lorg/minidns/record/RRSIG;->keyTag:I

    if-ne v14, v0, :cond_8

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, v5, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignaturePresent:Z

    .line 334
    .end local v13    # "dnsKeyRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;"
    .end local v15    # "dnskey":Lorg/minidns/record/DNSKEY;
    :cond_8
    move-object/from16 v0, p0

    goto :goto_5

    .line 325
    :cond_9
    const/4 v0, 0x1

    .line 336
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    iput-boolean v0, v5, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignatureRequired:Z

    .line 339
    :cond_a
    iget-object v0, v8, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v0, v0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v12, v9, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    iget-object v12, v12, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-static {v0, v12}, Lorg/minidns/dnssec/DnssecClient;->isParentOrSelf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 340
    sget-object v0, Lorg/minidns/dnssec/DnssecClient;->LOGGER:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Records at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " are cross-signed with a key from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_6

    .line 342
    :cond_b
    invoke-interface {v2, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 344
    :goto_6
    invoke-interface {v2, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 345
    .end local v8    # "sigRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/RRSIG;>;"
    .end local v9    # "rrsig":Lorg/minidns/record/RRSIG;
    .end local v10    # "records":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    .end local v11    # "reasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 346
    :cond_c
    return-object v5
.end method

.method private verifySignedRecords(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/RRSIG;Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .param p2, "rrsig"    # Lorg/minidns/record/RRSIG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/Question;",
            "Lorg/minidns/record/RRSIG;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    .local p3, "records":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 365
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    const/4 v1, 0x0

    .line 367
    .local v1, "dnskey":Lorg/minidns/record/DNSKEY;
    iget-object v2, p2, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    sget-object v3, Lorg/minidns/record/Record$TYPE;->DNSKEY:Lorg/minidns/record/Record$TYPE;

    if-ne v2, v3, :cond_2

    .line 369
    const-class v2, Lorg/minidns/record/DNSKEY;

    invoke-static {v2, p3}, Lorg/minidns/record/Record;->filter(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 370
    .local v2, "dnskeyRrs":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/minidns/record/Record;

    .line 371
    .local v4, "dnsKeyRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;"
    iget-object v5, v4, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v5, Lorg/minidns/record/DNSKEY;

    invoke-virtual {v5}, Lorg/minidns/record/DNSKEY;->getKeyTag()I

    move-result v5

    iget v6, p2, Lorg/minidns/record/RRSIG;->keyTag:I

    if-ne v5, v6, :cond_0

    .line 372
    iget-object v3, v4, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    move-object v1, v3

    check-cast v1, Lorg/minidns/record/DNSKEY;

    .line 373
    goto :goto_1

    .line 375
    .end local v4    # "dnsKeyRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;"
    :cond_0
    goto :goto_0

    .line 376
    .end local v2    # "dnskeyRrs":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;>;"
    :cond_1
    :goto_1
    goto :goto_3

    :cond_2
    iget-object v2, p1, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v3, Lorg/minidns/record/Record$TYPE;->DS:Lorg/minidns/record/Record$TYPE;

    if-ne v2, v3, :cond_3

    iget-object v2, p2, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    iget-object v3, p1, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v2, v3}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 378
    new-instance v2, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;

    iget-object v3, p1, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    invoke-direct {v2, v3}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;-><init>(Lorg/minidns/dnsname/DnsName;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    return-object v0

    .line 381
    :cond_3
    iget-object v2, p2, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    sget-object v3, Lorg/minidns/record/Record$TYPE;->DNSKEY:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, v2, v3}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnssec/DnssecQueryResult;

    move-result-object v2

    .line 382
    .local v2, "dnskeyRes":Lorg/minidns/dnssec/DnssecQueryResult;
    invoke-virtual {v2}, Lorg/minidns/dnssec/DnssecQueryResult;->getUnverifiedReasons()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 383
    iget-object v3, v2, Lorg/minidns/dnssec/DnssecQueryResult;->dnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    iget-object v3, v3, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    const-class v4, Lorg/minidns/record/DNSKEY;

    invoke-virtual {v3, v4}, Lorg/minidns/dnsmessage/DnsMessage;->filterAnswerSectionBy(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 384
    .local v3, "dnskeyRrs":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/minidns/record/Record;

    .line 385
    .local v5, "dnsKeyRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;"
    iget-object v6, v5, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v6, Lorg/minidns/record/DNSKEY;

    invoke-virtual {v6}, Lorg/minidns/record/DNSKEY;->getKeyTag()I

    move-result v6

    iget v7, p2, Lorg/minidns/record/RRSIG;->keyTag:I

    if-ne v6, v7, :cond_4

    .line 386
    iget-object v4, v5, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    move-object v1, v4

    check-cast v1, Lorg/minidns/record/DNSKEY;

    .line 387
    goto :goto_3

    .line 389
    .end local v5    # "dnsKeyRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;"
    :cond_4
    goto :goto_2

    .line 392
    .end local v2    # "dnskeyRes":Lorg/minidns/dnssec/DnssecQueryResult;
    .end local v3    # "dnskeyRrs":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;>;"
    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    .line 396
    invoke-static {p3, p2, v1}, Lorg/minidns/dnssec/Verifier;->verify(Ljava/util/List;Lorg/minidns/record/RRSIG;Lorg/minidns/record/DNSKEY;)Lorg/minidns/dnssec/DnssecUnverifiedReason;

    move-result-object v2

    .line 397
    .local v2, "unverifiedReason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    if-eqz v2, :cond_6

    .line 398
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_6
    return-object v0

    .line 393
    .end local v2    # "unverifiedReason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    :cond_7
    new-instance v2, Lorg/minidns/dnssec/DnssecValidationFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " record(s) are signed using an unknown key."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/dnsmessage/Question;Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addSecureEntryPoint(Lorg/minidns/dnsname/DnsName;[B)V
    .locals 1
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "key"    # [B

    .line 508
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecClient;->knownSeps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method

.method public clearSecureEntryPoints()V
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecClient;->knownSeps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 529
    return-void
.end method

.method public configureLookasideValidation(Lorg/minidns/dnsname/DnsName;)V
    .locals 0
    .param p1, "dlv"    # Lorg/minidns/dnsname/DnsName;

    .line 571
    iput-object p1, p0, Lorg/minidns/dnssec/DnssecClient;->dlv:Lorg/minidns/dnsname/DnsName;

    .line 572
    return-void
.end method

.method public disableLookasideValidation()V
    .locals 1

    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/minidns/dnssec/DnssecClient;->configureLookasideValidation(Lorg/minidns/dnsname/DnsName;)V

    .line 563
    return-void
.end method

.method public enableLookasideValidation()V
    .locals 1

    .line 554
    sget-object v0, Lorg/minidns/dnssec/DnssecClient;->DEFAULT_DLV:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p0, v0}, Lorg/minidns/dnssec/DnssecClient;->configureLookasideValidation(Lorg/minidns/dnsname/DnsName;)V

    .line 555
    return-void
.end method

.method protected isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 480
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->isDnssecOk()Z

    move-result v0

    .line 481
    .local v0, "dnssecOk":Z
    if-nez v0, :cond_0

    .line 485
    const-string v1, "DNSSEC OK (DO) flag not set in response"

    return-object v1

    .line 487
    :cond_0
    iget-boolean v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    .line 488
    .local v1, "checkingDisabled":Z
    if-nez v1, :cond_1

    .line 489
    const-string v2, "CHECKING DISABLED (CD) flag not set in response"

    return-object v2

    .line 491
    :cond_1
    invoke-super {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isStripSignatureRecords()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords:Z

    return v0
.end method

.method protected newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 473
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->getEdnsBuilder()Lorg/minidns/edns/Edns$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/minidns/dnssec/DnssecClient;->dataSource:Lorg/minidns/source/DnsDataSource;

    invoke-interface {v1}, Lorg/minidns/source/DnsDataSource;->getUdpPayloadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/minidns/edns/Edns$Builder;->setUdpPayloadSize(I)Lorg/minidns/edns/Edns$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/minidns/edns/Edns$Builder;->setDnssecOk()Lorg/minidns/edns/Edns$Builder;

    .line 474
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setCheckingDisabled(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 475
    invoke-super {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public query(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 2
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnssec/DnssecQueryResult;

    move-result-object v0

    .line 91
    .local v0, "dnssecQueryResult":Lorg/minidns/dnssec/DnssecQueryResult;
    invoke-virtual {v0}, Lorg/minidns/dnssec/DnssecQueryResult;->isAuthenticData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, v0, Lorg/minidns/dnssec/DnssecQueryResult;->dnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    return-object v1

    .line 93
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method public queryDnssec(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnssec/DnssecQueryResult;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Lorg/minidns/dnsmessage/Question;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, p1, p2, v1}, Lorg/minidns/dnsmessage/Question;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 100
    .local v0, "q":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v0}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnssec/DnssecQueryResult;

    move-result-object v1

    return-object v1
.end method

.method public queryDnssec(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnssec/DnssecQueryResult;
    .locals 2
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-super {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->query(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v0

    .line 105
    .local v0, "dnsQueryResult":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    invoke-direct {p0, p1, v0}, Lorg/minidns/dnssec/DnssecClient;->performVerification(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;)Lorg/minidns/dnssec/DnssecQueryResult;

    move-result-object v1

    .line 106
    .local v1, "dnssecQueryResult":Lorg/minidns/dnssec/DnssecQueryResult;
    return-object v1
.end method

.method public removeSecureEntryPoint(Lorg/minidns/dnsname/DnsName;)V
    .locals 1
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;

    .line 518
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecClient;->knownSeps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    return-void
.end method

.method public setStripSignatureRecords(Z)V
    .locals 0
    .param p1, "stripSignatureRecords"    # Z

    .line 547
    iput-boolean p1, p0, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords:Z

    .line 548
    return-void
.end method
