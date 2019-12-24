.class final enum Lorg/minidns/dnsmessage/DnsMessage$SectionName;
.super Ljava/lang/Enum;
.source "DnsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnsmessage/DnsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SectionName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/dnsmessage/DnsMessage$SectionName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/dnsmessage/DnsMessage$SectionName;

.field public static final enum additional:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

.field public static final enum answer:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

.field public static final enum authority:Lorg/minidns/dnsmessage/DnsMessage$SectionName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 820
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    const/4 v1, 0x0

    const-string v2, "answer"

    invoke-direct {v0, v2, v1}, Lorg/minidns/dnsmessage/DnsMessage$SectionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->answer:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    .line 821
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    const/4 v2, 0x1

    const-string v3, "authority"

    invoke-direct {v0, v3, v2}, Lorg/minidns/dnsmessage/DnsMessage$SectionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->authority:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    .line 822
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    const/4 v3, 0x2

    const-string v4, "additional"

    invoke-direct {v0, v4, v3}, Lorg/minidns/dnsmessage/DnsMessage$SectionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->additional:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    .line 819
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    sget-object v4, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->answer:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    aput-object v4, v0, v1

    sget-object v1, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->authority:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->additional:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    aput-object v1, v0, v3

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->$VALUES:[Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 819
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/dnsmessage/DnsMessage$SectionName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 819
    const-class v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    return-object v0
.end method

.method public static values()[Lorg/minidns/dnsmessage/DnsMessage$SectionName;
    .locals 1

    .line 819
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->$VALUES:[Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    invoke-virtual {v0}, [Lorg/minidns/dnsmessage/DnsMessage$SectionName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    return-object v0
.end method
