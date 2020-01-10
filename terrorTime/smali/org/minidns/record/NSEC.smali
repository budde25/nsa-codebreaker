.class public Lorg/minidns/record/NSEC;
.super Lorg/minidns/record/Data;
.source "NSEC.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field public final next:Lorg/minidns/dnsname/DnsName;

.field private final typeBitmap:[B

.field public final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/Record$TYPE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/minidns/record/NSEC;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/minidns/record/NSEC;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "next"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record$TYPE;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record$TYPE;>;"
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/minidns/record/NSEC;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/util/List;)V

    .line 57
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lorg/minidns/record/Record$TYPE;)V
    .locals 2
    .param p1, "next"    # Ljava/lang/String;
    .param p2, "types"    # [Lorg/minidns/record/Record$TYPE;

    .line 60
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/minidns/record/NSEC;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/util/List;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Ljava/util/List;)V
    .locals 1
    .param p1, "next"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record$TYPE;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record$TYPE;>;"
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/minidns/record/NSEC;->next:Lorg/minidns/dnsname/DnsName;

    .line 65
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/NSEC;->types:Ljava/util/List;

    .line 66
    invoke-static {p2}, Lorg/minidns/record/NSEC;->createTypeBitMap(Ljava/util/List;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/NSEC;->typeBitmap:[B

    .line 67
    return-void
.end method

.method static createTypeBitMap(Ljava/util/List;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record$TYPE;",
            ">;)[B"
        }
    .end annotation

    .line 91
    .local p0, "types":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record$TYPE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v0, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record$TYPE;

    .line 93
    .local v2, "type":Lorg/minidns/record/Record$TYPE;
    invoke-virtual {v2}, Lorg/minidns/record/Record$TYPE;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v2    # "type":Lorg/minidns/record/Record$TYPE;
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 97
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    .local v2, "dos":Ljava/io/DataOutputStream;
    const/4 v3, -0x1

    .line 102
    .local v3, "windowBlock":I
    const/4 v4, 0x0

    .line 103
    .local v4, "bitmap":[B
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 104
    .local v6, "type":Ljava/lang/Integer;
    const/16 v8, 0x20

    if-eq v3, v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    if-eq v9, v3, :cond_3

    .line 105
    :cond_1
    if-eq v3, v7, :cond_2

    invoke-static {v4, v2}, Lorg/minidns/record/NSEC;->writeOutBlock([BLjava/io/DataOutputStream;)V

    .line 106
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shr-int/lit8 v3, v7, 0x8

    .line 107
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 108
    new-array v7, v8, [B

    move-object v4, v7

    .line 110
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shr-int/lit8 v7, v7, 0x3

    rem-int/2addr v7, v8

    .line 111
    .local v7, "a":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rem-int/lit8 v8, v8, 0x8

    .line 112
    .local v8, "b":I
    aget-byte v9, v4, v7

    const/16 v10, 0x80

    shr-int/2addr v10, v8

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 113
    .end local v6    # "type":Ljava/lang/Integer;
    .end local v7    # "a":I
    .end local v8    # "b":I
    goto :goto_1

    .line 114
    :cond_4
    if-eq v3, v7, :cond_5

    invoke-static {v4, v2}, Lorg/minidns/record/NSEC;->writeOutBlock([BLjava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v3    # "windowBlock":I
    .end local v4    # "bitmap":[B
    :cond_5
    nop

    .line 120
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 115
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static parse(Ljava/io/DataInputStream;[BI)Lorg/minidns/record/NSEC;
    .locals 4
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    .line 49
    .local v0, "next":Lorg/minidns/dnsname/DnsName;
    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->size()I

    move-result v1

    sub-int v1, p2, v1

    new-array v1, v1, [B

    .line 50
    .local v1, "typeBitmap":[B
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    array-length v3, v1

    if-ne v2, v3, :cond_0

    .line 51
    invoke-static {v1}, Lorg/minidns/record/NSEC;->readTypeBitMap([B)Ljava/util/List;

    move-result-object v2

    .line 52
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record$TYPE;>;"
    new-instance v3, Lorg/minidns/record/NSEC;

    invoke-direct {v3, v0, v2}, Lorg/minidns/record/NSEC;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/util/List;)V

    return-object v3

    .line 50
    .end local v2    # "types":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record$TYPE;>;"
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
.end method

.method static readTypeBitMap([B)Ljava/util/List;
    .locals 13
    .param p0, "typeBitmap"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record$TYPE;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    .local v0, "dis":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 138
    .local v1, "read":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/minidns/record/Record$TYPE;>;"
    :goto_0
    array-length v3, p0

    if-le v3, v1, :cond_4

    .line 140
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 141
    .local v3, "windowBlock":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 142
    .local v4, "bitmapLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 143
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 144
    .local v6, "b":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    const/16 v8, 0x8

    if-ge v7, v8, :cond_2

    .line 145
    shr-int v8, v6, v7

    and-int/lit8 v8, v8, 0x1

    if-lez v8, :cond_1

    .line 146
    shl-int/lit8 v8, v3, 0x8

    mul-int/lit8 v9, v5, 0x8

    add-int/2addr v8, v9

    rsub-int/lit8 v9, v7, 0x7

    add-int/2addr v8, v9

    .line 147
    .local v8, "typeInt":I
    invoke-static {v8}, Lorg/minidns/record/Record$TYPE;->getType(I)Lorg/minidns/record/Record$TYPE;

    move-result-object v9

    .line 148
    .local v9, "type":Lorg/minidns/record/Record$TYPE;
    sget-object v10, Lorg/minidns/record/Record$TYPE;->UNKNOWN:Lorg/minidns/record/Record$TYPE;

    if-ne v9, v10, :cond_0

    .line 149
    sget-object v10, Lorg/minidns/record/NSEC;->LOGGER:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping unknown type in type bitmap: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 150
    goto :goto_3

    .line 152
    :cond_0
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v8    # "typeInt":I
    .end local v9    # "type":Lorg/minidns/record/Record$TYPE;
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 142
    .end local v6    # "b":I
    .end local v7    # "j":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 156
    .end local v5    # "i":I
    :cond_3
    add-int/lit8 v5, v4, 0x2

    add-int/2addr v1, v5

    .line 157
    .end local v3    # "windowBlock":I
    .end local v4    # "bitmapLength":I
    goto :goto_0

    .line 158
    :cond_4
    return-object v2
.end method

.method private static writeOutBlock([BLjava/io/DataOutputStream;)V
    .locals 3
    .param p0, "values"    # [B
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 126
    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    .line 125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 129
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 130
    aget-byte v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 71
    sget-object v0, Lorg/minidns/record/Record$TYPE;->NSEC:Lorg/minidns/record/Record$TYPE;

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

    .line 76
    iget-object v0, p0, Lorg/minidns/record/NSEC;->next:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 77
    iget-object v0, p0, Lorg/minidns/record/NSEC;->typeBitmap:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/record/NSEC;->next:Lorg/minidns/dnsname/DnsName;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/minidns/record/NSEC;->types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record$TYPE;

    .line 85
    .local v2, "type":Lorg/minidns/record/Record$TYPE;
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .end local v2    # "type":Lorg/minidns/record/Record$TYPE;
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
