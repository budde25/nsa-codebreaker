.class public Lorg/minidns/record/OPENPGPKEY;
.super Lorg/minidns/record/Data;
.source "OPENPGPKEY.java"


# instance fields
.field private final publicKeyPacket:[B

.field private transient publicKeyPacketBase64Cache:Ljava/lang/String;


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "publicKeyPacket"    # [B

    .line 29
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacket:[B

    .line 31
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/OPENPGPKEY;
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-array v0, p1, [B

    .line 25
    .local v0, "publicKeyPacket":[B
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 26
    new-instance v1, Lorg/minidns/record/OPENPGPKEY;

    invoke-direct {v1, v0}, Lorg/minidns/record/OPENPGPKEY;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public getPublicKeyPacket()[B
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacket:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPublicKeyPacketBase64()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacketBase64Cache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacket:[B

    invoke-static {v0}, Lorg/minidns/util/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacketBase64Cache:Ljava/lang/String;

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacketBase64Cache:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 35
    sget-object v0, Lorg/minidns/record/Record$TYPE;->OPENPGPKEY:Lorg/minidns/record/Record$TYPE;

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

    .line 40
    iget-object v0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacket:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/minidns/record/OPENPGPKEY;->getPublicKeyPacketBase64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
