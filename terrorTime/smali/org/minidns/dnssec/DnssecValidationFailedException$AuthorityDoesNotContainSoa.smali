.class public Lorg/minidns/dnssec/DnssecValidationFailedException$AuthorityDoesNotContainSoa;
.super Lorg/minidns/dnssec/DnssecValidationFailedException;
.source "DnssecValidationFailedException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnssec/DnssecValidationFailedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorityDoesNotContainSoa"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final response:Lorg/minidns/dnsmessage/DnsMessage;


# direct methods
.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 1
    .param p1, "response"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 96
    const-string v0, "Autority does not contain SOA"

    invoke-direct {p0, v0}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lorg/minidns/dnssec/DnssecValidationFailedException$AuthorityDoesNotContainSoa;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 98
    return-void
.end method


# virtual methods
.method public getResponse()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecValidationFailedException$AuthorityDoesNotContainSoa;->response:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method
