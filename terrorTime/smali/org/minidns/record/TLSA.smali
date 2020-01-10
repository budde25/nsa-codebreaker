.class public Lorg/minidns/record/TLSA;
.super Lorg/minidns/record/Data;
.source "TLSA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/record/TLSA$MatchingType;,
        Lorg/minidns/record/TLSA$Selector;,
        Lorg/minidns/record/TLSA$CertUsage;
    }
.end annotation


# static fields
.field private static final CERT_USAGE_LUT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/minidns/record/TLSA$CertUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static final MATCHING_TYPE_LUT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/minidns/record/TLSA$MatchingType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SELECTOR_LUT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/minidns/record/TLSA$Selector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final certUsage:Lorg/minidns/record/TLSA$CertUsage;

.field public final certUsageByte:B

.field private final certificateAssociation:[B

.field public final matchingType:Lorg/minidns/record/TLSA$MatchingType;

.field public final matchingTypeByte:B

.field public final selector:Lorg/minidns/record/TLSA$Selector;

.field public final selectorByte:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/minidns/record/TLSA;->CERT_USAGE_LUT:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/minidns/record/TLSA;->SELECTOR_LUT:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/minidns/record/TLSA;->MATCHING_TYPE_LUT:Ljava/util/Map;

    .line 74
    invoke-static {}, Lorg/minidns/record/TLSA$CertUsage;->values()[Lorg/minidns/record/TLSA$CertUsage;

    .line 75
    invoke-static {}, Lorg/minidns/record/TLSA$Selector;->values()[Lorg/minidns/record/TLSA$Selector;

    .line 76
    invoke-static {}, Lorg/minidns/record/TLSA$MatchingType;->values()[Lorg/minidns/record/TLSA$MatchingType;

    .line 77
    return-void
.end method

.method constructor <init>(BBB[B)V
    .locals 2
    .param p1, "certUsageByte"    # B
    .param p2, "selectorByte"    # B
    .param p3, "matchingTypeByte"    # B
    .param p4, "certificateAssociation"    # [B

    .line 116
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 117
    iput-byte p1, p0, Lorg/minidns/record/TLSA;->certUsageByte:B

    .line 118
    sget-object v0, Lorg/minidns/record/TLSA;->CERT_USAGE_LUT:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/TLSA$CertUsage;

    iput-object v0, p0, Lorg/minidns/record/TLSA;->certUsage:Lorg/minidns/record/TLSA$CertUsage;

    .line 120
    iput-byte p2, p0, Lorg/minidns/record/TLSA;->selectorByte:B

    .line 121
    sget-object v0, Lorg/minidns/record/TLSA;->SELECTOR_LUT:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/TLSA$Selector;

    iput-object v0, p0, Lorg/minidns/record/TLSA;->selector:Lorg/minidns/record/TLSA$Selector;

    .line 123
    iput-byte p3, p0, Lorg/minidns/record/TLSA;->matchingTypeByte:B

    .line 124
    sget-object v0, Lorg/minidns/record/TLSA;->MATCHING_TYPE_LUT:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/TLSA$MatchingType;

    iput-object v0, p0, Lorg/minidns/record/TLSA;->matchingType:Lorg/minidns/record/TLSA$MatchingType;

    .line 126
    iput-object p4, p0, Lorg/minidns/record/TLSA;->certificateAssociation:[B

    .line 127
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 21
    sget-object v0, Lorg/minidns/record/TLSA;->CERT_USAGE_LUT:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 21
    sget-object v0, Lorg/minidns/record/TLSA;->SELECTOR_LUT:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 21
    sget-object v0, Lorg/minidns/record/TLSA;->MATCHING_TYPE_LUT:Ljava/util/Map;

    return-object v0
.end method

.method public static parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/TLSA;
    .locals 6
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 109
    .local v0, "certUsage":B
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 110
    .local v1, "selector":B
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 111
    .local v2, "matchingType":B
    add-int/lit8 v3, p1, -0x3

    new-array v3, v3, [B

    .line 112
    .local v3, "certificateAssociation":[B
    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    array-length v5, v3

    if-ne v4, v5, :cond_0

    .line 113
    new-instance v4, Lorg/minidns/record/TLSA;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/minidns/record/TLSA;-><init>(BBB[B)V

    return-object v4

    .line 112
    :cond_0
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
.end method


# virtual methods
.method public certificateAssociationEquals([B)Z
    .locals 1
    .param p1, "otherCertificateAssociation"    # [B

    .line 156
    iget-object v0, p0, Lorg/minidns/record/TLSA;->certificateAssociation:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public getCertificateAssociation()[B
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/minidns/record/TLSA;->certificateAssociation:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 131
    sget-object v0, Lorg/minidns/record/Record$TYPE;->TLSA:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-byte v0, p0, Lorg/minidns/record/TLSA;->certUsageByte:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 137
    iget-byte v0, p0, Lorg/minidns/record/TLSA;->selectorByte:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 138
    iget-byte v0, p0, Lorg/minidns/record/TLSA;->matchingTypeByte:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 139
    iget-object v0, p0, Lorg/minidns/record/TLSA;->certificateAssociation:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lorg/minidns/record/TLSA;->certUsageByte:B

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/minidns/record/TLSA;->selectorByte:B

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/minidns/record/TLSA;->matchingTypeByte:B

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/minidns/record/TLSA;->certificateAssociation:[B

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 148
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method
