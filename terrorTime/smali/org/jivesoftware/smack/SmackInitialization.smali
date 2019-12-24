.class public final Lorg/jivesoftware/smack/SmackInitialization;
.super Ljava/lang/Object;
.source "SmackInitialization.java"


# static fields
.field private static final DEFAULT_CONFIG_FILE:Ljava/lang/String; = "org.jivesoftware.smack/smack-config.xml"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field static final SMACK_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    const-class v0, Lorg/jivesoftware/smack/SmackInitialization;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/SmackInitialization;->LOGGER:Ljava/util/logging/Logger;

    .line 65
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "org.jivesoftware.smack/version"

    invoke-static {v3, v0}, Lorg/jivesoftware/smack/util/FileUtils;->getStreamForClasspathFile(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .local v2, "smackVersion":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lorg/jivesoftware/smack/SmackInitialization;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "IOException closing stream"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 75
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 72
    .end local v2    # "smackVersion":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/jivesoftware/smack/SmackInitialization;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Could not determine Smack version"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    const-string v2, "unknown"

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "smackVersion":Ljava/lang/String;
    :goto_1
    sput-object v2, Lorg/jivesoftware/smack/SmackInitialization;->SMACK_VERSION:Ljava/lang/String;

    .line 78
    const-string v1, "smack.disabledClasses"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "disabledClasses":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 80
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "splitDisabledClasses":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .local v6, "s":Ljava/lang/String;
    sget-object v7, Lorg/jivesoftware/smack/SmackConfiguration;->disabledSmackClasses:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .end local v6    # "s":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 86
    .end local v3    # "splitDisabledClasses":[Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v3, "org.jivesoftware.smack/smack-config.xml"

    invoke-static {v3, v0}, Lorg/jivesoftware/smack/util/FileUtils;->getStreamForClasspathFile(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 90
    .local v3, "configFileStream":Ljava/io/InputStream;
    nop

    .line 93
    :try_start_4
    invoke-static {v3, v0}, Lorg/jivesoftware/smack/SmackInitialization;->processConfigFile(Ljava/io/InputStream;Ljava/util/Collection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 97
    nop

    .line 100
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->compressionHandlers:Ljava/util/List;

    new-instance v4, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;

    invoke-direct {v4}, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v0, 0x1

    :try_start_5
    const-string v4, "smack.debugEnabled"

    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    sput-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->DEBUG:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 113
    :cond_1
    goto :goto_3

    .line 111
    :catch_2
    move-exception v4

    .line 112
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/jivesoftware/smack/SmackInitialization;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Could not handle debugEnable property on Smack initialization"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    new-instance v4, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;

    invoke-direct {v4}, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;-><init>()V

    invoke-static {v4}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Lorg/jivesoftware/smack/sasl/SASLMechanism;)V

    .line 116
    new-instance v4, Lorg/jivesoftware/smack/sasl/core/ScramSha1PlusMechanism;

    invoke-direct {v4}, Lorg/jivesoftware/smack/sasl/core/ScramSha1PlusMechanism;-><init>()V

    invoke-static {v4}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Lorg/jivesoftware/smack/sasl/SASLMechanism;)V

    .line 117
    new-instance v4, Lorg/jivesoftware/smack/sasl/core/SASLXOauth2Mechanism;

    invoke-direct {v4}, Lorg/jivesoftware/smack/sasl/core/SASLXOauth2Mechanism;-><init>()V

    invoke-static {v4}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Lorg/jivesoftware/smack/sasl/SASLMechanism;)V

    .line 118
    new-instance v4, Lorg/jivesoftware/smack/sasl/core/SASLAnonymous;

    invoke-direct {v4}, Lorg/jivesoftware/smack/sasl/core/SASLAnonymous;-><init>()V

    invoke-static {v4}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Lorg/jivesoftware/smack/sasl/SASLMechanism;)V

    .line 120
    new-instance v4, Lorg/jivesoftware/smack/provider/BindIQProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smack/provider/BindIQProvider;-><init>()V

    const-string v5, "bind"

    const-string v6, "urn:ietf:params:xml:ns:xmpp-bind"

    invoke-static {v5, v6, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    new-instance v4, Lorg/jivesoftware/smack/provider/BodyElementProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smack/provider/BodyElementProvider;-><init>()V

    const-string v5, "body"

    const-string v6, "jabber:client"

    invoke-static {v5, v6, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    sput-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->smackInitialized:Z

    .line 124
    .end local v1    # "disabledClasses":Ljava/lang/String;
    .end local v2    # "smackVersion":Ljava/lang/String;
    .end local v3    # "configFileStream":Ljava/io/InputStream;
    return-void

    .line 95
    .restart local v1    # "disabledClasses":Ljava/lang/String;
    .restart local v2    # "smackVersion":Ljava/lang/String;
    .restart local v3    # "configFileStream":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Could not parse Smack configuration file"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "configFileStream":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    .line 89
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not load Smack configuration file"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadSmackClass(Ljava/lang/String;ZLjava/lang/ClassLoader;)V
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "optional"    # Z
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .local v0, "initClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 210
    const-class v1, Lorg/jivesoftware/smack/initializer/SmackInitializer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/initializer/SmackInitializer;

    .line 212
    .local v1, "initializer":Lorg/jivesoftware/smack/initializer/SmackInitializer;
    invoke-interface {v1}, Lorg/jivesoftware/smack/initializer/SmackInitializer;->initialize()Ljava/util/List;

    move-result-object v2

    .line 213
    .local v2, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    .line 217
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/jivesoftware/smack/SmackInitialization;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "Exception in loadSmackClass"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 214
    :cond_1
    :goto_1
    sget-object v3, Lorg/jivesoftware/smack/SmackInitialization;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded SmackInitializer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 220
    .end local v1    # "initializer":Lorg/jivesoftware/smack/initializer/SmackInitializer;
    .end local v2    # "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    :cond_2
    goto :goto_2

    .line 221
    :cond_3
    sget-object v1, Lorg/jivesoftware/smack/SmackInitialization;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 223
    :goto_2
    return-void

    .line 195
    .end local v0    # "initClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 197
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    if-eqz p1, :cond_4

    .line 198
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .local v1, "logLevel":Ljava/util/logging/Level;
    goto :goto_3

    .line 201
    .end local v1    # "logLevel":Ljava/util/logging/Level;
    :cond_4
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 203
    .restart local v1    # "logLevel":Ljava/util/logging/Level;
    :goto_3
    sget-object v2, Lorg/jivesoftware/smack/SmackInitialization;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A startup class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' could not be loaded."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 204
    if-eqz p1, :cond_5

    .line 207
    return-void

    .line 205
    :cond_5
    throw v0
.end method

.method private static parseClassesToLoad(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/Collection;Ljava/lang/ClassLoader;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "optional"    # Z
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    .local p2, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Exception;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "startName":Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 165
    .local v1, "eventType":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const-string v3, "className"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "classToLoad":Ljava/lang/String;
    invoke-static {v3}, Lorg/jivesoftware/smack/SmackConfiguration;->isDisabledSmackClass(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    goto :goto_1

    .line 173
    :cond_0
    :try_start_0
    invoke-static {v3, p1, p3}, Lorg/jivesoftware/smack/SmackInitialization;->loadSmackClass(Ljava/lang/String;ZLjava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_1

    .line 174
    :catch_0
    move-exception v4

    .line 177
    .local v4, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_1

    .line 178
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_1
    throw v4

    .line 185
    .end local v3    # "classToLoad":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    return-void

    .line 185
    :cond_3
    goto :goto_0
.end method

.method public static processConfigFile(Ljava/io/InputStream;Ljava/util/Collection;)V
    .locals 1
    .param p0, "cfgFileStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Collection<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    .local p1, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Exception;>;"
    const-class v0, Lorg/jivesoftware/smack/SmackInitialization;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jivesoftware/smack/SmackInitialization;->processConfigFile(Ljava/io/InputStream;Ljava/util/Collection;Ljava/lang/ClassLoader;)V

    .line 129
    return-void
.end method

.method public static processConfigFile(Ljava/io/InputStream;Ljava/util/Collection;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p0, "cfgFileStream"    # Ljava/io/InputStream;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Collection<",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    .local p1, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Exception;>;"
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 134
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x1

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 135
    const-string v2, "UTF-8"

    invoke-interface {v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 136
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 138
    .local v2, "eventType":I
    :goto_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 139
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "startupClasses"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const/4 v3, 0x0

    invoke-static {v0, v3, p1, p2}, Lorg/jivesoftware/smack/SmackInitialization;->parseClassesToLoad(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/Collection;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 142
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "optionalStartupClasses"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-static {v0, v1, p1, p2}, Lorg/jivesoftware/smack/SmackInitialization;->parseClassesToLoad(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/Collection;Ljava/lang/ClassLoader;)V

    .line 146
    :cond_1
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 148
    if-ne v2, v1, :cond_2

    .line 150
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_2

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lorg/jivesoftware/smack/SmackInitialization;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Error while closing config file input stream"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 148
    :cond_2
    goto :goto_0
.end method
