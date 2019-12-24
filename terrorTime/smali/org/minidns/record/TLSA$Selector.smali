.class public final enum Lorg/minidns/record/TLSA$Selector;
.super Ljava/lang/Enum;
.source "TLSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/record/TLSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Selector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/record/TLSA$Selector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/record/TLSA$Selector;

.field public static final enum fullCertificate:Lorg/minidns/record/TLSA$Selector;

.field public static final enum subjectPublicKeyInfo:Lorg/minidns/record/TLSA$Selector;


# instance fields
.field public final byteValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lorg/minidns/record/TLSA$Selector;

    const/4 v1, 0x0

    const-string v2, "fullCertificate"

    invoke-direct {v0, v2, v1, v1}, Lorg/minidns/record/TLSA$Selector;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/minidns/record/TLSA$Selector;->fullCertificate:Lorg/minidns/record/TLSA$Selector;

    .line 45
    new-instance v0, Lorg/minidns/record/TLSA$Selector;

    const/4 v2, 0x1

    const-string v3, "subjectPublicKeyInfo"

    invoke-direct {v0, v3, v2, v2}, Lorg/minidns/record/TLSA$Selector;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/minidns/record/TLSA$Selector;->subjectPublicKeyInfo:Lorg/minidns/record/TLSA$Selector;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/minidns/record/TLSA$Selector;

    sget-object v3, Lorg/minidns/record/TLSA$Selector;->fullCertificate:Lorg/minidns/record/TLSA$Selector;

    aput-object v3, v0, v1

    sget-object v1, Lorg/minidns/record/TLSA$Selector;->subjectPublicKeyInfo:Lorg/minidns/record/TLSA$Selector;

    aput-object v1, v0, v2

    sput-object v0, Lorg/minidns/record/TLSA$Selector;->$VALUES:[Lorg/minidns/record/TLSA$Selector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "byteValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-byte p3, p0, Lorg/minidns/record/TLSA$Selector;->byteValue:B

    .line 52
    invoke-static {}, Lorg/minidns/record/TLSA;->access$100()Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/record/TLSA$Selector;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lorg/minidns/record/TLSA$Selector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/TLSA$Selector;

    return-object v0
.end method

.method public static values()[Lorg/minidns/record/TLSA$Selector;
    .locals 1

    .line 43
    sget-object v0, Lorg/minidns/record/TLSA$Selector;->$VALUES:[Lorg/minidns/record/TLSA$Selector;

    invoke-virtual {v0}, [Lorg/minidns/record/TLSA$Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/record/TLSA$Selector;

    return-object v0
.end method
