.class public Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;
.super Lorg/minidns/dnssec/DnssecUnverifiedReason;
.source "DnssecUnverifiedReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnssec/DnssecUnverifiedReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgorithmNotSupportedReason"
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final record:Lorg/minidns/record/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lorg/minidns/record/Record$TYPE;


# direct methods
.method public constructor <init>(BLorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record;)V
    .locals 1
    .param p1, "algorithm"    # B
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Lorg/minidns/record/Record$TYPE;",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p3, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-direct {p0}, Lorg/minidns/dnssec/DnssecUnverifiedReason;-><init>()V

    .line 49
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->algorithm:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->type:Lorg/minidns/record/Record$TYPE;

    .line 51
    iput-object p3, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->record:Lorg/minidns/record/Record;

    .line 52
    return-void
.end method


# virtual methods
.method public getReasonString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v1}, Lorg/minidns/record/Record$TYPE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " required to verify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->record:Lorg/minidns/record/Record;

    iget-object v1, v1, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is unknown or not supported by platform"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
