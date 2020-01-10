.class public final Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;
.super Ljava/lang/Object;
.source "ReflectionDebuggerFactory.java"

# interfaces
.implements Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;


# static fields
.field private static final DEBUGGER_CLASS_PROPERTY_NAME:Ljava/lang/String; = "smack.debuggerClass"

.field private static final DEFAULT_DEBUGGERS:[Ljava/lang/String;

.field public static final INSTANCE:Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;

.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    const-class v0, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->LOGGER:Ljava/util/logging/Logger;

    .line 30
    new-instance v0, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;

    invoke-direct {v0}, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->INSTANCE:Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;

    .line 39
    const-string v0, "org.jivesoftware.smackx.debugger.EnhancedDebugger"

    const-string v1, "org.jivesoftware.smackx.debugger.android.AndroidDebugger"

    const-string v2, "org.jivesoftware.smack.debugger.ConsoleDebugger"

    const-string v3, "org.jivesoftware.smack.debugger.LiteDebugger"

    const-string v4, "org.jivesoftware.smack.debugger.JulDebugger"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->DEFAULT_DEBUGGERS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static getCustomDebuggerClassName()Ljava/lang/String;
    .locals 2

    .line 99
    :try_start_0
    const-string v0, "smack.debuggerClass"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    .line 102
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDebuggerClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lorg/jivesoftware/smack/debugger/SmackDebugger;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->getCustomDebuggerClassName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "customDebuggerClassName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->getOneOfDefaultDebuggerClasses()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 70
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate debugger class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getOneOfDefaultDebuggerClasses()Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lorg/jivesoftware/smack/debugger/SmackDebugger;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->DEFAULT_DEBUGGERS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 109
    .local v3, "debugger":Ljava/lang/String;
    invoke-static {v3}, Lorg/jivesoftware/smack/SmackConfiguration;->isDisabledSmackClass(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    goto :goto_2

    .line 113
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :catch_0
    move-exception v4

    .line 119
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v5, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->LOGGER:Ljava/util/logging/Logger;

    const-string v6, "Unable to instantiate either Smack debugger class"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 116
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 117
    .local v4, "ex":Ljava/lang/ClassCastException;
    sget-object v5, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->LOGGER:Ljava/util/logging/Logger;

    const-string v6, "Found debugger class that does not appears to implement SmackDebugger interface"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/ClassCastException;
    goto :goto_1

    .line 114
    :catch_2
    move-exception v4

    .line 115
    .local v4, "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->LOGGER:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Did not find debugger class \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 120
    .end local v4    # "cnfe":Ljava/lang/ClassNotFoundException;
    :goto_1
    nop

    .line 108
    .end local v3    # "debugger":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setDebuggerClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jivesoftware/smack/debugger/SmackDebugger;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p0, "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/debugger/SmackDebugger;>;"
    const-string v0, "smack.debuggerClass"

    if-nez p0, :cond_0

    .line 53
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    :goto_0
    return-void
.end method


# virtual methods
.method public create(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/debugger/SmackDebugger;
    .locals 5
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 81
    invoke-static {}, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->getDebuggerClass()Ljava/lang/Class;

    move-result-object v0

    .line 82
    .local v0, "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/jivesoftware/smack/debugger/SmackDebugger;>;"
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/jivesoftware/smack/XMPPConnection;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 87
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/jivesoftware/smack/debugger/SmackDebugger;>;"
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/debugger/SmackDebugger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 88
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/jivesoftware/smack/debugger/SmackDebugger;>;"
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t initialize the configured debugger!"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
