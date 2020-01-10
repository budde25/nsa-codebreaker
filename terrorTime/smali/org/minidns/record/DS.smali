.class public Lorg/minidns/record/DS;
.super Lorg/minidns/record/DelegatingDnssecRR;
.source "DS.java"


# direct methods
.method public constructor <init>(IBB[B)V
    .locals 0
    .param p1, "keyTag"    # I
    .param p2, "algorithm"    # B
    .param p3, "digestType"    # B
    .param p4, "digest"    # [B

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/record/DelegatingDnssecRR;-><init>(IBB[B)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;B[B)V
    .locals 0
    .param p1, "keyTag"    # I
    .param p2, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .param p3, "digestType"    # B
    .param p4, "digest"    # [B

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/record/DelegatingDnssecRR;-><init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;B[B)V

    .line 37
    return-void
.end method

.method public constructor <init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;[B)V
    .locals 0
    .param p1, "keyTag"    # I
    .param p2, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .param p3, "digestType"    # Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .param p4, "digest"    # [B

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/record/DelegatingDnssecRR;-><init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;[B)V

    .line 41
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/DS;
    .locals 6
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lorg/minidns/record/DelegatingDnssecRR;->parseSharedData(Ljava/io/DataInputStream;I)Lorg/minidns/record/DelegatingDnssecRR$SharedData;

    move-result-object v0

    .line 28
    .local v0, "parsedData":Lorg/minidns/record/DelegatingDnssecRR$SharedData;
    new-instance v1, Lorg/minidns/record/DS;

    iget v2, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->keyTag:I

    iget-byte v3, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->algorithm:B

    iget-byte v4, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->digestType:B

    iget-object v5, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->digest:[B

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/minidns/record/DS;-><init>(IBB[B)V

    return-object v1
.end method


# virtual methods
.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 45
    sget-object v0, Lorg/minidns/record/Record$TYPE;->DS:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method
