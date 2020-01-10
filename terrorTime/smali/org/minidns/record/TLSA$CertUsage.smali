.class public final enum Lorg/minidns/record/TLSA$CertUsage;
.super Ljava/lang/Enum;
.source "TLSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/record/TLSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/record/TLSA$CertUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/record/TLSA$CertUsage;

.field public static final enum caConstraint:Lorg/minidns/record/TLSA$CertUsage;

.field public static final enum domainIssuedCertificate:Lorg/minidns/record/TLSA$CertUsage;

.field public static final enum serviceCertificateConstraint:Lorg/minidns/record/TLSA$CertUsage;

.field public static final enum trustAnchorAssertion:Lorg/minidns/record/TLSA$CertUsage;


# instance fields
.field public final byteValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lorg/minidns/record/TLSA$CertUsage;

    const/4 v1, 0x0

    const-string v2, "caConstraint"

    invoke-direct {v0, v2, v1, v1}, Lorg/minidns/record/TLSA$CertUsage;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/minidns/record/TLSA$CertUsage;->caConstraint:Lorg/minidns/record/TLSA$CertUsage;

    .line 28
    new-instance v0, Lorg/minidns/record/TLSA$CertUsage;

    const/4 v2, 0x1

    const-string v3, "serviceCertificateConstraint"

    invoke-direct {v0, v3, v2, v2}, Lorg/minidns/record/TLSA$CertUsage;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/minidns/record/TLSA$CertUsage;->serviceCertificateConstraint:Lorg/minidns/record/TLSA$CertUsage;

    .line 29
    new-instance v0, Lorg/minidns/record/TLSA$CertUsage;

    const/4 v3, 0x2

    const-string v4, "trustAnchorAssertion"

    invoke-direct {v0, v4, v3, v3}, Lorg/minidns/record/TLSA$CertUsage;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/minidns/record/TLSA$CertUsage;->trustAnchorAssertion:Lorg/minidns/record/TLSA$CertUsage;

    .line 30
    new-instance v0, Lorg/minidns/record/TLSA$CertUsage;

    const/4 v4, 0x3

    const-string v5, "domainIssuedCertificate"

    invoke-direct {v0, v5, v4, v4}, Lorg/minidns/record/TLSA$CertUsage;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/minidns/record/TLSA$CertUsage;->domainIssuedCertificate:Lorg/minidns/record/TLSA$CertUsage;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/minidns/record/TLSA$CertUsage;

    sget-object v5, Lorg/minidns/record/TLSA$CertUsage;->caConstraint:Lorg/minidns/record/TLSA$CertUsage;

    aput-object v5, v0, v1

    sget-object v1, Lorg/minidns/record/TLSA$CertUsage;->serviceCertificateConstraint:Lorg/minidns/record/TLSA$CertUsage;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/record/TLSA$CertUsage;->trustAnchorAssertion:Lorg/minidns/record/TLSA$CertUsage;

    aput-object v1, v0, v3

    sget-object v1, Lorg/minidns/record/TLSA$CertUsage;->domainIssuedCertificate:Lorg/minidns/record/TLSA$CertUsage;

    aput-object v1, v0, v4

    sput-object v0, Lorg/minidns/record/TLSA$CertUsage;->$VALUES:[Lorg/minidns/record/TLSA$CertUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "byteValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-byte p3, p0, Lorg/minidns/record/TLSA$CertUsage;->byteValue:B

    .line 37
    invoke-static {}, Lorg/minidns/record/TLSA;->access$000()Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/record/TLSA$CertUsage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/minidns/record/TLSA$CertUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/TLSA$CertUsage;

    return-object v0
.end method

.method public static values()[Lorg/minidns/record/TLSA$CertUsage;
    .locals 1

    .line 25
    sget-object v0, Lorg/minidns/record/TLSA$CertUsage;->$VALUES:[Lorg/minidns/record/TLSA$CertUsage;

    invoke-virtual {v0}, [Lorg/minidns/record/TLSA$CertUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/record/TLSA$CertUsage;

    return-object v0
.end method
