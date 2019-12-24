.class public Lorg/jivesoftware/smack/util/dns/SRVRecord;
.super Lorg/jivesoftware/smack/util/dns/HostAddress;
.source "SRVRecord.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/util/dns/HostAddress;",
        "Ljava/lang/Comparable<",
        "Lorg/jivesoftware/smack/util/dns/SRVRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private priority:I

.field private weight:I


# direct methods
.method public constructor <init>(Lorg/minidns/dnsname/DnsName;IIILjava/util/List;)V
    .locals 3
    .param p1, "fqdn"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "port"    # I
    .param p3, "priority"    # I
    .param p4, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "III",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p5, "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-direct {p0, p1, p2, p5}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(Lorg/minidns/dnsname/DnsName;ILjava/util/List;)V

    .line 51
    const-string v0, "The FQDN must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 52
    if-ltz p4, :cond_1

    const v0, 0xffff

    if-gt p4, v0, :cond_1

    .line 57
    if-ltz p3, :cond_0

    if-gt p3, v0, :cond_0

    .line 62
    iput p3, p0, Lorg/jivesoftware/smack/util/dns/SRVRecord;->priority:I

    .line 63
    iput p4, p0, Lorg/jivesoftware/smack/util/dns/SRVRecord;->weight:I

    .line 65
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS SRV records priority must be a 16-bit unsigned integer (i.e. between 0-65535. Priority was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS SRV records weight must be a 16-bit unsigned integer (i.e. between 0-65535. Weight was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/dns/SRVRecord;->compareTo(Lorg/jivesoftware/smack/util/dns/SRVRecord;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/jivesoftware/smack/util/dns/SRVRecord;)I
    .locals 3
    .param p1, "other"    # Lorg/jivesoftware/smack/util/dns/SRVRecord;

    .line 80
    iget v0, p1, Lorg/jivesoftware/smack/util/dns/SRVRecord;->priority:I

    iget v1, p0, Lorg/jivesoftware/smack/util/dns/SRVRecord;->priority:I

    sub-int/2addr v0, v1

    .line 81
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 82
    iget v1, p0, Lorg/jivesoftware/smack/util/dns/SRVRecord;->weight:I

    iget v2, p1, Lorg/jivesoftware/smack/util/dns/SRVRecord;->weight:I

    sub-int v0, v1, v2

    .line 84
    :cond_0
    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/jivesoftware/smack/util/dns/SRVRecord;->priority:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/jivesoftware/smack/util/dns/SRVRecord;->weight:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/jivesoftware/smack/util/dns/HostAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jivesoftware/smack/util/dns/SRVRecord;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jivesoftware/smack/util/dns/SRVRecord;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
