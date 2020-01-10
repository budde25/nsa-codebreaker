.class public Lorg/jivesoftware/smack/tcp/TCPInitializer;
.super Lorg/jivesoftware/smack/initializer/UrlInitializer;
.source "TCPInitializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/jivesoftware/smack/initializer/UrlInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getProvidersUri()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "classpath:org.jivesoftware.smack.tcp/smacktcp.providers"

    return-object v0
.end method
