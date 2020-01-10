.class public Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;
.super Ljava/lang/Object;
.source "SimpleDirectoryPersistentCache.java"

# interfaces
.implements Lorg/jivesoftware/smackx/caps/cache/EntityCapsPersistentCache;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final filenameEncoder:Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 59
    invoke-static {}, Lorg/jivesoftware/smack/util/stringencoder/Base32;->getStringEncoder()Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;-><init>(Ljava/io/File;Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;)V
    .locals 3
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "filenameEncoder"    # Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "Cache directory \""

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-object p1, p0, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    .line 79
    iput-object p2, p0, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->filenameEncoder:Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;

    .line 80
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not a directory"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not exist"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFileFor(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "nodeVer"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->filenameEncoder:Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static restoreInfoFromFile(Ljava/io/File;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 152
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v1, "fileContent":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 155
    nop

    .line 156
    if-nez v1, :cond_0

    .line 157
    const/4 v2, 0x0

    return-object v2

    .line 159
    :cond_0
    invoke-static {v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    return-object v2

    .line 154
    .end local v1    # "fileContent":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw v1
.end method

.method private static writeInfoToFile(Ljava/io/File;Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "info"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v0, "dos":Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw v1
.end method


# virtual methods
.method public addDiscoverInfoByNodePersistent(Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V
    .locals 5
    .param p1, "nodeVer"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 84
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->getFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, "nodeFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {v0, p2}, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->writeInfoToFile(Ljava/io/File;Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Failed to write disco info to file"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public emptyCache()V
    .locals 4

    .line 116
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 117
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 121
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 120
    .end local v3    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method public lookup(Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 6
    .param p1, "nodeVer"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->getFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, "nodeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_0
    const/4 v1, 0x0

    .line 101
    .local v1, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    :try_start_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->restoreInfoFromFile(Ljava/io/File;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 105
    goto :goto_0

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/jivesoftware/smackx/caps/cache/SimpleDirectoryPersistentCache;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Coud not restore info from file"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method
