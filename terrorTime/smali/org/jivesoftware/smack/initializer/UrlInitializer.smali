.class public abstract Lorg/jivesoftware/smack/initializer/UrlInitializer;
.super Ljava/lang/Object;
.source "UrlInitializer.java"

# interfaces
.implements Lorg/jivesoftware/smack/initializer/SmackInitializer;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/jivesoftware/smack/initializer/UrlInitializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/initializer/UrlInitializer;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfigUri()Ljava/lang/String;
    .locals 1

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getProvidersUri()Ljava/lang/String;
    .locals 1

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 44
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 45
    .local v1, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/initializer/UrlInitializer;->getProvidersUri()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "providerUriString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 48
    :try_start_0
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 49
    .local v3, "providerUri":Ljava/net/URI;
    invoke-static {v3, v0}, Lorg/jivesoftware/smack/util/FileUtils;->getStreamForUri(Ljava/net/URI;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v4

    .line 51
    .local v4, "is":Ljava/io/InputStream;
    sget-object v5, Lorg/jivesoftware/smack/initializer/UrlInitializer;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading providers for providerUri ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 52
    new-instance v5, Lorg/jivesoftware/smack/provider/ProviderFileLoader;

    invoke-direct {v5, v4, v0}, Lorg/jivesoftware/smack/provider/ProviderFileLoader;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 53
    .local v5, "pfl":Lorg/jivesoftware/smack/provider/ProviderFileLoader;
    invoke-static {v5}, Lorg/jivesoftware/smack/provider/ProviderManager;->addLoader(Lorg/jivesoftware/smack/provider/ProviderLoader;)V

    .line 54
    invoke-virtual {v5}, Lorg/jivesoftware/smack/provider/ProviderFileLoader;->getLoadingExceptions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    nop

    .end local v3    # "providerUri":Ljava/net/URI;
    .end local v5    # "pfl":Lorg/jivesoftware/smack/provider/ProviderFileLoader;
    goto :goto_0

    .line 56
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/jivesoftware/smack/initializer/UrlInitializer;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to load provider file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/initializer/UrlInitializer;->getConfigUri()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "configUriString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 64
    :try_start_1
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 65
    .local v4, "configUri":Ljava/net/URI;
    invoke-static {v4, v0}, Lorg/jivesoftware/smack/util/FileUtils;->getStreamForUri(Ljava/net/URI;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v5

    .line 66
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {v5, v1, v0}, Lorg/jivesoftware/smack/SmackInitialization;->processConfigFile(Ljava/io/InputStream;Ljava/util/Collection;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .end local v4    # "configUri":Ljava/net/URI;
    goto :goto_1

    .line 68
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .line 69
    .local v4, "e":Ljava/lang/Exception;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v1
.end method
