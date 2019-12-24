.class public abstract Lorg/minidns/record/InternetAddressRR;
.super Lorg/minidns/record/Data;
.source "InternetAddressRR.java"


# instance fields
.field private transient inetAddress:Ljava/net/InetAddress;

.field protected final ip:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0
    .param p1, "ip"    # [B

    .line 34
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/minidns/record/InternetAddressRR;->ip:[B

    .line 36
    return-void
.end method


# virtual methods
.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 3

    .line 53
    iget-object v0, p0, Lorg/minidns/record/InternetAddressRR;->inetAddress:Ljava/net/InetAddress;

    .line 54
    .local v0, "i":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 56
    :try_start_0
    iget-object v1, p0, Lorg/minidns/record/InternetAddressRR;->ip:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 59
    nop

    .line 60
    iput-object v0, p0, Lorg/minidns/record/InternetAddressRR;->inetAddress:Ljava/net/InetAddress;

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 62
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getIp()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/minidns/record/InternetAddressRR;->ip:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final serialize(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/minidns/record/InternetAddressRR;->ip:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 41
    return-void
.end method
