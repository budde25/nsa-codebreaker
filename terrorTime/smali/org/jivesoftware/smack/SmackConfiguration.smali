.class public final Lorg/jivesoftware/smack/SmackConfiguration;
.super Ljava/lang/Object;
.source "SmackConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static DEFAULT_DEBUGGER_FACTORY:Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

.field static final compressionHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

.field private static final defaultConcurrencyLevelLimit:I

.field private static defaultHostnameVerififer:Ljavax/net/ssl/HostnameVerifier;

.field private static defaultMechs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultPacketReplyTimeout:I

.field static disabledSmackClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static packetCollectorSize:I

.field static smackInitialized:Z

.field private static unknownIqRequestReplyMode:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    const/16 v0, 0x1388

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultPacketReplyTimeout:I

    .line 53
    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->disabledSmackClasses:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->compressionHandlers:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->smackInitialized:Z

    .line 75
    sput-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->DEBUG:Z

    .line 77
    sget-object v0, Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;->INSTANCE:Lorg/jivesoftware/smack/debugger/ReflectionDebuggerFactory;

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->DEFAULT_DEBUGGER_FACTORY:Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

    .line 83
    new-instance v0, Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallbackWithHint;

    invoke-direct {v0}, Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallbackWithHint;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    .line 359
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->replyFeatureNotImplemented:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->unknownIqRequestReplyMode:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    .line 372
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 373
    .local v0, "availableProcessors":I
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 374
    sput v1, Lorg/jivesoftware/smack/SmackConfiguration;->defaultConcurrencyLevelLimit:I

    goto :goto_0

    .line 376
    :cond_0
    int-to-double v1, v0

    const-wide v3, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sput v1, Lorg/jivesoftware/smack/SmackConfiguration;->defaultConcurrencyLevelLimit:I

    .line 378
    .end local v0    # "availableProcessors":I
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCompressionHandler(Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;)V
    .locals 1
    .param p0, "xmppInputOutputStream"    # Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    .line 247
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->compressionHandlers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public static addDisabledSmackClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 288
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->addDisabledSmackClass(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public static addDisabledSmackClass(Ljava/lang/String;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 301
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->disabledSmackClasses:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public static varargs addDisabledSmackClasses([Ljava/lang/String;)V
    .locals 3
    .param p0, "classNames"    # [Ljava/lang/String;

    .line 311
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 312
    .local v2, "className":Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smack/SmackConfiguration;->addDisabledSmackClass(Ljava/lang/String;)V

    .line 311
    .end local v2    # "className":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method public static addSaslMech(Ljava/lang/String;)V
    .locals 1
    .param p0, "mech"    # Ljava/lang/String;

    .line 181
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    return-void
.end method

.method public static addSaslMechs(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p0, "mechs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    .local v1, "mech":Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smack/SmackConfiguration;->addSaslMech(Ljava/lang/String;)V

    .line 194
    .end local v1    # "mech":Ljava/lang/String;
    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method public static getCompresionHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getCompressionHandlers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCompressionHandlers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/jivesoftware/smack/SmackConfiguration;->compressionHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;>;"
    sget-object v1, Lorg/jivesoftware/smack/SmackConfiguration;->compressionHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    .line 263
    .local v2, "ios":Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v2    # "ios":Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;
    :cond_0
    goto :goto_0

    .line 267
    :cond_1
    return-object v0
.end method

.method public static getDefaultConcurrencyLevelLimit()I
    .locals 1

    .line 381
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultConcurrencyLevelLimit:I

    return v0
.end method

.method static getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 350
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultHostnameVerififer:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public static getDefaultPacketReplyTimeout()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getDefaultReplyTimeout()I

    move-result v0

    return v0
.end method

.method public static getDefaultParsingExceptionCallback()Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;
    .locals 1

    .line 243
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    return-object v0
.end method

.method public static getDefaultReplyTimeout()I
    .locals 1

    .line 128
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultPacketReplyTimeout:I

    if-gtz v0, :cond_0

    .line 129
    const/16 v0, 0x1388

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultPacketReplyTimeout:I

    .line 131
    :cond_0
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultPacketReplyTimeout:I

    return v0
.end method

.method public static getDefaultSmackDebuggerFactory()Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;
    .locals 1

    .line 152
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->DEFAULT_DEBUGGER_FACTORY:Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

    return-object v0
.end method

.method public static getSaslMechs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getStanzaCollectorSize()I
    .locals 1

    .line 162
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    return v0
.end method

.method public static getUnknownIqRequestReplyMode()Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;
    .locals 1

    .line 362
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->unknownIqRequestReplyMode:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lorg/jivesoftware/smack/SmackInitialization;->SMACK_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static isDisabledSmackClass(Ljava/lang/String;)Z
    .locals 5
    .param p0, "className"    # Ljava/lang/String;

    .line 317
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->disabledSmackClasses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    .local v1, "disabledClassOrPackage":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 319
    return v3

    .line 321
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 323
    .local v2, "lastDotIndex":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 325
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 327
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    return v3

    .line 331
    .end local v1    # "disabledClassOrPackage":Ljava/lang/String;
    .end local v2    # "lastDotIndex":I
    :cond_1
    goto :goto_0

    .line 332
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isSmackInitialized()Z
    .locals 1

    .line 341
    sget-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->smackInitialized:Z

    return v0
.end method

.method public static removeSaslMech(Ljava/lang/String;)V
    .locals 1
    .param p0, "mech"    # Ljava/lang/String;

    .line 203
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public static removeSaslMechs(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p0, "mechs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 213
    return-void
.end method

.method public static setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p0, "verifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 279
    sput-object p0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultHostnameVerififer:Ljavax/net/ssl/HostnameVerifier;

    .line 280
    return-void
.end method

.method public static setDefaultPacketReplyTimeout(I)V
    .locals 0
    .param p0, "timeout"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-static {p0}, Lorg/jivesoftware/smack/SmackConfiguration;->setDefaultReplyTimeout(I)V

    .line 118
    return-void
.end method

.method public static setDefaultParsingExceptionCallback(Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;)V
    .locals 0
    .param p0, "callback"    # Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    .line 233
    sput-object p0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    .line 234
    return-void
.end method

.method public static setDefaultReplyTimeout(I)V
    .locals 1
    .param p0, "timeout"    # I

    .line 141
    if-lez p0, :cond_0

    .line 144
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultPacketReplyTimeout:I

    .line 145
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static setDefaultSmackDebuggerFactory(Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;)V
    .locals 1
    .param p0, "debuggerFactory"    # Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

    .line 148
    const-string v0, "Debugger factory must not be null"

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->DEFAULT_DEBUGGER_FACTORY:Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

    .line 149
    return-void
.end method

.method public static setStanzaCollectorSize(I)V
    .locals 0
    .param p0, "collectorSize"    # I

    .line 172
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    .line 173
    return-void
.end method

.method public static setUnknownIqRequestReplyMode(Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;)V
    .locals 1
    .param p0, "unknownIqRequestReplyMode"    # Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    .line 366
    const-string v0, "Must set mode"

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->unknownIqRequestReplyMode:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    .line 367
    return-void
.end method
