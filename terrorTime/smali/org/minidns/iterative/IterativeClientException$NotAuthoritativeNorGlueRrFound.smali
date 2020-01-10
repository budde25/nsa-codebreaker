.class public Lorg/minidns/iterative/IterativeClientException$NotAuthoritativeNorGlueRrFound;
.super Lorg/minidns/iterative/IterativeClientException;
.source "IterativeClientException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/iterative/IterativeClientException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotAuthoritativeNorGlueRrFound"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final authoritativeZone:Lorg/minidns/dnsname/DnsName;

.field private final request:Lorg/minidns/dnsmessage/DnsMessage;

.field private final result:Lorg/minidns/dnsqueryresult/DnsQueryResult;


# direct methods
.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;Lorg/minidns/dnsname/DnsName;)V
    .locals 1
    .param p1, "request"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .param p3, "authoritativeZone"    # Lorg/minidns/dnsname/DnsName;

    .line 75
    const-string v0, "Did not receive an authoritative answer, nor did the result contain any glue records"

    invoke-direct {p0, v0}, Lorg/minidns/iterative/IterativeClientException;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lorg/minidns/iterative/IterativeClientException$NotAuthoritativeNorGlueRrFound;->request:Lorg/minidns/dnsmessage/DnsMessage;

    .line 77
    iput-object p2, p0, Lorg/minidns/iterative/IterativeClientException$NotAuthoritativeNorGlueRrFound;->result:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 78
    iput-object p3, p0, Lorg/minidns/iterative/IterativeClientException$NotAuthoritativeNorGlueRrFound;->authoritativeZone:Lorg/minidns/dnsname/DnsName;

    .line 79
    return-void
.end method


# virtual methods
.method public getAuthoritativeZone()Lorg/minidns/dnsname/DnsName;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/minidns/iterative/IterativeClientException$NotAuthoritativeNorGlueRrFound;->authoritativeZone:Lorg/minidns/dnsname/DnsName;

    return-object v0
.end method

.method public getRequest()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/minidns/iterative/IterativeClientException$NotAuthoritativeNorGlueRrFound;->request:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method

.method public getResult()Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/minidns/iterative/IterativeClientException$NotAuthoritativeNorGlueRrFound;->result:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    return-object v0
.end method
