.class public Lorg/jivesoftware/smack/debugger/JulDebugger;
.super Lorg/jivesoftware/smack/debugger/AbstractDebugger;
.source "JulDebugger.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/jivesoftware/smack/debugger/JulDebugger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/debugger/JulDebugger;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 41
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/debugger/AbstractDebugger;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "logMessage"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lorg/jivesoftware/smack/debugger/JulDebugger;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 51
    sget-object v0, Lorg/jivesoftware/smack/debugger/JulDebugger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
