.class public Lorg/minidns/hla/srv/SrvServiceProto;
.super Ljava/lang/Object;
.source "SrvServiceProto.java"


# instance fields
.field public final proto:Lorg/minidns/dnslabel/DnsLabel;

.field public final service:Lorg/minidns/dnslabel/DnsLabel;


# direct methods
.method public constructor <init>(Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnslabel/DnsLabel;)V
    .locals 0
    .param p1, "service"    # Lorg/minidns/dnslabel/DnsLabel;
    .param p2, "proto"    # Lorg/minidns/dnslabel/DnsLabel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/minidns/hla/srv/SrvServiceProto;->service:Lorg/minidns/dnslabel/DnsLabel;

    .line 25
    iput-object p2, p0, Lorg/minidns/hla/srv/SrvServiceProto;->proto:Lorg/minidns/dnslabel/DnsLabel;

    .line 26
    return-void
.end method
