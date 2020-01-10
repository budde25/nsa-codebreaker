.class public Landroidx/navigation/NavigatorProvider;
.super Ljava/lang/Object;
.source "NavigatorProvider.java"


# static fields
.field private static final sAnnotationNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNavigators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/navigation/NavigatorProvider;->sAnnotationNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavigatorProvider;->mNavigators:Ljava/util/HashMap;

    return-void
.end method

.method static getNameForNavigator(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/navigation/Navigator;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 42
    .local p0, "navigatorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/navigation/Navigator;>;"
    sget-object v0, Landroidx/navigation/NavigatorProvider;->sAnnotationNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 44
    const-class v1, Landroidx/navigation/Navigator$Name;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroidx/navigation/Navigator$Name;

    .line 45
    .local v1, "annotation":Landroidx/navigation/Navigator$Name;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/navigation/Navigator$Name;->value()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .line 46
    invoke-static {v0}, Landroidx/navigation/NavigatorProvider;->validateName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    sget-object v2, Landroidx/navigation/NavigatorProvider;->sAnnotationNames:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 47
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No @Navigator.Name annotation found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v1    # "annotation":Landroidx/navigation/Navigator$Name;
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static validateName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 116
    .local p1, "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/NavDestination;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/NavigatorProvider;->getNameForNavigator(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    move-result-object v1

    return-object v1
.end method

.method public addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 134
    .local p2, "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/NavDestination;>;"
    invoke-static {p1}, Landroidx/navigation/NavigatorProvider;->validateName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroidx/navigation/NavigatorProvider;->mNavigators:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/Navigator;

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "navigator name cannot be an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/navigation/Navigator<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 73
    .local p1, "navigatorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroidx/navigation/NavigatorProvider;->getNameForNavigator(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v1

    return-object v1
.end method

.method public getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/navigation/Navigator<",
            "*>;>(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 91
    invoke-static {p1}, Landroidx/navigation/NavigatorProvider;->validateName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Landroidx/navigation/NavigatorProvider;->mNavigators:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/Navigator;

    .line 96
    .local v0, "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/NavDestination;>;"
    if-eqz v0, :cond_0

    .line 100
    return-object v0

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find Navigator with name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\". You must call NavController.addNavigator() for each navigation type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .end local v0    # "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/NavDestination;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "navigator name cannot be an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getNavigators()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroidx/navigation/NavigatorProvider;->mNavigators:Ljava/util/HashMap;

    return-object v0
.end method
