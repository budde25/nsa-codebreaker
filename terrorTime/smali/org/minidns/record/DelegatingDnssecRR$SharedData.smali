.class public Lorg/minidns/record/DelegatingDnssecRR$SharedData;
.super Ljava/lang/Object;
.source "DelegatingDnssecRR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/record/DelegatingDnssecRR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SharedData"
.end annotation


# instance fields
.field protected final algorithm:B

.field protected final digest:[B

.field protected final digestType:B

.field protected final keyTag:I


# direct methods
.method private constructor <init>(IBB[B)V
    .locals 0
    .param p1, "keyTag"    # I
    .param p2, "algorithm"    # B
    .param p3, "digestType"    # B
    .param p4, "digest"    # [B

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->keyTag:I

    .line 84
    iput-byte p2, p0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->algorithm:B

    .line 85
    iput-byte p3, p0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->digestType:B

    .line 86
    iput-object p4, p0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->digest:[B

    .line 87
    return-void
.end method

.method synthetic constructor <init>(IBB[BLorg/minidns/record/DelegatingDnssecRR$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # B
    .param p3, "x2"    # B
    .param p4, "x3"    # [B
    .param p5, "x4"    # Lorg/minidns/record/DelegatingDnssecRR$1;

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/record/DelegatingDnssecRR$SharedData;-><init>(IBB[B)V

    return-void
.end method
