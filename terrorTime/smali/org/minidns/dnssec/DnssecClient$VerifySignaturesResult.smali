.class Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;
.super Ljava/lang/Object;
.source "DnssecClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnssec/DnssecClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifySignaturesResult"
.end annotation


# instance fields
.field reasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation
.end field

.field sepSignaturePresent:Z

.field sepSignatureRequired:Z

.field final synthetic this$0:Lorg/minidns/dnssec/DnssecClient;


# direct methods
.method private constructor <init>(Lorg/minidns/dnssec/DnssecClient;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->this$0:Lorg/minidns/dnssec/DnssecClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignatureRequired:Z

    .line 277
    iput-boolean p1, p0, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignaturePresent:Z

    .line 278
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/dnssec/DnssecClient;Lorg/minidns/dnssec/DnssecClient$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/minidns/dnssec/DnssecClient;
    .param p2, "x1"    # Lorg/minidns/dnssec/DnssecClient$1;

    .line 275
    invoke-direct {p0, p1}, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;-><init>(Lorg/minidns/dnssec/DnssecClient;)V

    return-void
.end method
