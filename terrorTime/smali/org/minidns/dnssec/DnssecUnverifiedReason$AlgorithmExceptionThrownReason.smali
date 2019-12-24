.class public Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;
.super Lorg/minidns/dnssec/DnssecUnverifiedReason;
.source "DnssecUnverifiedReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnssec/DnssecUnverifiedReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgorithmExceptionThrownReason"
.end annotation


# instance fields
.field private final algorithmNumber:I

.field private final kind:Ljava/lang/String;

.field private final reason:Ljava/lang/Exception;

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


# direct methods
.method public constructor <init>(Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;Ljava/lang/String;Lorg/minidns/record/Record;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "algorithm"    # Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .param p2, "kind"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;",
            "Ljava/lang/String;",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 66
    .local p3, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-direct {p0}, Lorg/minidns/dnssec/DnssecUnverifiedReason;-><init>()V

    .line 67
    iget-byte v0, p1, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->value:B

    iput v0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->algorithmNumber:I

    .line 68
    iput-object p2, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->kind:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->record:Lorg/minidns/record/Record;

    .line 70
    iput-object p4, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->reason:Ljava/lang/Exception;

    .line 71
    return-void
.end method


# virtual methods
.method public getReasonString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->algorithmNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " threw exception while verifying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->record:Lorg/minidns/record/Record;

    iget-object v1, v1, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->reason:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
