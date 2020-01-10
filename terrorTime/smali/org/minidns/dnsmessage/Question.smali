.class public Lorg/minidns/dnsmessage/Question;
.super Ljava/lang/Object;
.source "Question.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private byteArray:[B

.field public final clazz:Lorg/minidns/record/Record$CLASS;

.field public final name:Lorg/minidns/dnsname/DnsName;

.field public final type:Lorg/minidns/record/Record$TYPE;

.field private final unicastQuery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;[B)V
    .locals 1
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 120
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Lorg/minidns/record/Record$TYPE;->getType(I)Lorg/minidns/record/Record$TYPE;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    .line 121
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Lorg/minidns/record/Record$CLASS;->getClass(I)Lorg/minidns/record/Record$CLASS;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/Question;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/Question;->unicastQuery:Z

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;

    .line 109
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/CharSequence;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;

    .line 100
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/CharSequence;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;
    .param p4, "unicastQuery"    # Z

    .line 61
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/CharSequence;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V
    .locals 1
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;

    .line 90
    sget-object v0, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {p0, p1, p2, v0}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V
    .locals 1
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Z)V
    .locals 0
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;
    .param p4, "unicastQuery"    # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    nop

    .line 66
    nop

    .line 67
    nop

    .line 68
    iput-object p1, p0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 69
    iput-object p2, p0, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    .line 70
    iput-object p3, p0, Lorg/minidns/dnsmessage/Question;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 71
    iput-boolean p4, p0, Lorg/minidns/dnsmessage/Question;->unicastQuery:Z

    .line 72
    return-void
.end method


# virtual methods
.method public asMessageBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 1

    .line 172
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage;->builder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    .line 173
    .local v0, "builder":Lorg/minidns/dnsmessage/DnsMessage$Builder;
    invoke-virtual {v0, p0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setQuestion(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 174
    return-object v0
.end method

.method public asQueryMessage()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/Question;->asMessageBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->build()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 155
    if-ne p0, p1, :cond_0

    .line 156
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_0
    instance-of v0, p1, Lorg/minidns/dnsmessage/Question;

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/Question;->toByteArray()[B

    move-result-object v0

    .line 162
    .local v0, "t":[B
    move-object v1, p1

    check-cast v1, Lorg/minidns/dnsmessage/Question;

    invoke-virtual {v1}, Lorg/minidns/dnsmessage/Question;->toByteArray()[B

    move-result-object v1

    .line 163
    .local v1, "o":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 150
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/Question;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 130
    iget-object v0, p0, Lorg/minidns/dnsmessage/Question;->byteArray:[B

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 132
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v2, p0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v2, v1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 136
    iget-object v2, p0, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v2}, Lorg/minidns/record/Record$TYPE;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 137
    iget-object v2, p0, Lorg/minidns/dnsmessage/Question;->clazz:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v2}, Lorg/minidns/record/Record$CLASS;->getValue()I

    move-result v2

    iget-boolean v3, p0, Lorg/minidns/dnsmessage/Question;->unicastQuery:Z

    if-eqz v3, :cond_0

    const v3, 0x8000

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 138
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 143
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/minidns/dnsmessage/Question;->byteArray:[B

    goto :goto_1

    .line 139
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 145
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/minidns/dnsmessage/Question;->byteArray:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v1}, Lorg/minidns/dnsname/DnsName;->getRawAce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/Question;->clazz:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
