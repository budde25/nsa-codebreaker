.class public Lorg/minidns/dnssec/DnssecQueryResult;
.super Ljava/lang/Object;
.source "DnssecQueryResult.java"


# instance fields
.field public final dnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;

.field private final dnssecUnverifiedReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation
.end field

.field private final signatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/RRSIG;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthesizedResponse:Lorg/minidns/dnsmessage/DnsMessage;


# direct methods
.method constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "synthesizedResponse"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "dnsQueryResult"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Lorg/minidns/dnsqueryresult/DnsQueryResult;",
            "Ljava/util/Set<",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/RRSIG;",
            ">;>;",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p3, "signatures":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/Record<Lorg/minidns/record/RRSIG;>;>;"
    .local p4, "dnssecUnverifiedReasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/minidns/dnssec/DnssecQueryResult;->synthesizedResponse:Lorg/minidns/dnsmessage/DnsMessage;

    .line 32
    iput-object p2, p0, Lorg/minidns/dnssec/DnssecQueryResult;->dnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 33
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnssec/DnssecQueryResult;->signatures:Ljava/util/Set;

    .line 34
    if-nez p4, :cond_0

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnssec/DnssecQueryResult;->dnssecUnverifiedReasons:Ljava/util/Set;

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnssec/DnssecQueryResult;->dnssecUnverifiedReasons:Ljava/util/Set;

    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method public getSignatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/RRSIG;",
            ">;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecQueryResult;->signatures:Ljava/util/Set;

    return-object v0
.end method

.method public getUnverifiedReasons()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecQueryResult;->dnssecUnverifiedReasons:Ljava/util/Set;

    return-object v0
.end method

.method public isAuthenticData()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecQueryResult;->dnssecUnverifiedReasons:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
