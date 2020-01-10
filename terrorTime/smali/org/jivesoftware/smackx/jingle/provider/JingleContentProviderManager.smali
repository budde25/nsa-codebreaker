.class public Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;
.super Ljava/lang/Object;
.source "JingleContentProviderManager.java"


# static fields
.field private static final jingleContentDescriptionProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final jingleContentTransportProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;->jingleContentDescriptionProviders:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;->jingleContentTransportProviders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addJingleContentDescriptionProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;)Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider<",
            "*>;)",
            "Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider<",
            "*>;"
        }
    .end annotation

    .line 30
    .local p1, "provider":Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;, "Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider<*>;"
    sget-object v0, Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;->jingleContentDescriptionProviders:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;

    return-object v0
.end method

.method public static addJingleContentTransportProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;)Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider<",
            "*>;)",
            "Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider<",
            "*>;"
        }
    .end annotation

    .line 39
    .local p1, "provider":Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;, "Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider<*>;"
    sget-object v0, Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;->jingleContentTransportProviders:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;

    return-object v0
.end method

.method public static getJingleContentDescriptionProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider<",
            "*>;"
        }
    .end annotation

    .line 34
    sget-object v0, Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;->jingleContentDescriptionProviders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;

    return-object v0
.end method

.method public static getJingleContentTransportProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider<",
            "*>;"
        }
    .end annotation

    .line 43
    sget-object v0, Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;->jingleContentTransportProviders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;

    return-object v0
.end method
