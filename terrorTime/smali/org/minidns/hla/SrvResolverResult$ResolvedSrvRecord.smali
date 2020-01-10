.class public Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;
.super Ljava/lang/Object;
.source "SrvResolverResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/hla/SrvResolverResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolvedSrvRecord"
.end annotation


# instance fields
.field public final aRecordsResult:Lorg/minidns/hla/ResolverResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/hla/ResolverResult<",
            "Lorg/minidns/record/A;",
            ">;"
        }
    .end annotation
.end field

.field public final aaaaRecordsResult:Lorg/minidns/hla/ResolverResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/hla/ResolverResult<",
            "Lorg/minidns/record/AAAA;",
            ">;"
        }
    .end annotation
.end field

.field public final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/InternetAddressRR;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Lorg/minidns/dnsname/DnsName;

.field public final port:I

.field public final srv:Lorg/minidns/record/SRV;

.field public final srvServiceProto:Lorg/minidns/hla/srv/SrvServiceProto;


# direct methods
.method private constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/hla/srv/SrvServiceProto;Lorg/minidns/record/SRV;Ljava/util/List;Lorg/minidns/hla/ResolverResult;Lorg/minidns/hla/ResolverResult;)V
    .locals 1
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "srvServiceProto"    # Lorg/minidns/hla/srv/SrvServiceProto;
    .param p3, "srv"    # Lorg/minidns/record/SRV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/hla/srv/SrvServiceProto;",
            "Lorg/minidns/record/SRV;",
            "Ljava/util/List<",
            "Lorg/minidns/record/InternetAddressRR;",
            ">;",
            "Lorg/minidns/hla/ResolverResult<",
            "Lorg/minidns/record/A;",
            ">;",
            "Lorg/minidns/hla/ResolverResult<",
            "Lorg/minidns/record/AAAA;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p4, "addresses":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/InternetAddressRR;>;"
    .local p5, "aRecordsResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/A;>;"
    .local p6, "aaaaRecordsResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/AAAA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;->name:Lorg/minidns/dnsname/DnsName;

    .line 154
    iput-object p2, p0, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;->srvServiceProto:Lorg/minidns/hla/srv/SrvServiceProto;

    .line 155
    iput-object p3, p0, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;->srv:Lorg/minidns/record/SRV;

    .line 156
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;->addresses:Ljava/util/List;

    .line 157
    iget v0, p3, Lorg/minidns/record/SRV;->port:I

    iput v0, p0, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;->port:I

    .line 158
    iput-object p5, p0, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;->aRecordsResult:Lorg/minidns/hla/ResolverResult;

    .line 159
    iput-object p6, p0, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;->aaaaRecordsResult:Lorg/minidns/hla/ResolverResult;

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/hla/srv/SrvServiceProto;Lorg/minidns/record/SRV;Ljava/util/List;Lorg/minidns/hla/ResolverResult;Lorg/minidns/hla/ResolverResult;Lorg/minidns/hla/SrvResolverResult$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "x1"    # Lorg/minidns/hla/srv/SrvServiceProto;
    .param p3, "x2"    # Lorg/minidns/record/SRV;
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Lorg/minidns/hla/ResolverResult;
    .param p6, "x5"    # Lorg/minidns/hla/ResolverResult;
    .param p7, "x6"    # Lorg/minidns/hla/SrvResolverResult$1;

    .line 137
    invoke-direct/range {p0 .. p6}, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/hla/srv/SrvServiceProto;Lorg/minidns/record/SRV;Ljava/util/List;Lorg/minidns/hla/ResolverResult;Lorg/minidns/hla/ResolverResult;)V

    return-void
.end method
