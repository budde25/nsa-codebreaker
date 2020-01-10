.class public Lorg/jivesoftware/smack/android/AndroidSmackInitializer;
.super Ljava/lang/Object;
.source "AndroidSmackInitializer.java"

# interfaces
.implements Lorg/jivesoftware/smack/initializer/SmackInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    invoke-static {p0}, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;->setup(Landroid/content/Context;)Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;

    .line 55
    return-void
.end method


# virtual methods
.method public initialize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 42
    invoke-static {}, Lorg/jivesoftware/smack/util/stringencoder/android/AndroidBase64Encoder;->getInstance()Lorg/jivesoftware/smack/util/stringencoder/android/AndroidBase64Encoder;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->setEncoder(Lorg/jivesoftware/smack/util/stringencoder/Base64$Encoder;)V

    .line 43
    invoke-static {}, Lorg/jivesoftware/smack/util/stringencoder/android/AndroidBase64UrlSafeEncoder;->getInstance()Lorg/jivesoftware/smack/util/stringencoder/android/AndroidBase64UrlSafeEncoder;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/stringencoder/Base64UrlSafeEncoder;->setEncoder(Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;)V

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method
