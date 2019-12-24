.class public Lorg/minidns/record/UNKNOWN;
.super Lorg/minidns/record/Data;
.source "UNKNOWN.java"


# instance fields
.field private final data:[B

.field private final type:Lorg/minidns/record/Record$TYPE;


# direct methods
.method private constructor <init>(Ljava/io/DataInputStream;ILorg/minidns/record/Record$TYPE;)V
    .locals 1
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .param p2, "payloadLength"    # I
    .param p3, "type"    # Lorg/minidns/record/Record$TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 25
    iput-object p3, p0, Lorg/minidns/record/UNKNOWN;->type:Lorg/minidns/record/Record$TYPE;

    .line 26
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/minidns/record/UNKNOWN;->data:[B

    .line 27
    iget-object v0, p0, Lorg/minidns/record/UNKNOWN;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 28
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;ILorg/minidns/record/Record$TYPE;)Lorg/minidns/record/UNKNOWN;
    .locals 1
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "payloadLength"    # I
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/minidns/record/UNKNOWN;

    invoke-direct {v0, p0, p1, p2}, Lorg/minidns/record/UNKNOWN;-><init>(Ljava/io/DataInputStream;ILorg/minidns/record/Record$TYPE;)V

    return-object v0
.end method


# virtual methods
.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/minidns/record/UNKNOWN;->type:Lorg/minidns/record/Record$TYPE;

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

    .line 37
    iget-object v0, p0, Lorg/minidns/record/UNKNOWN;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 38
    return-void
.end method
