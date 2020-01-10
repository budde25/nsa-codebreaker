.class public Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDane;
.super Ljava/lang/Object;
.source "MiniDnsDane.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDane;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDane;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDane;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDane;->INSTANCE:Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDane;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setup()V
    .locals 1

    .line 32
    sget-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDane;->INSTANCE:Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDane;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/DNSUtil;->setDaneProvider(Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;)V

    .line 33
    return-void
.end method


# virtual methods
.method public newInstance()Lorg/jivesoftware/smack/util/dns/SmackDaneVerifier;
    .locals 1

    .line 28
    new-instance v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;-><init>()V

    return-object v0
.end method
