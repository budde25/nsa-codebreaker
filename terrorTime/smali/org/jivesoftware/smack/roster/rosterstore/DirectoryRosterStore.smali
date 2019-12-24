.class public final Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;
.super Ljava/lang/Object;
.source "DirectoryRosterStore.java"

# interfaces
.implements Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;


# static fields
.field private static final ENTRY_PREFIX:Ljava/lang/String; = "entry-"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final STORE_ID:Ljava/lang/String; = "DEFAULT_ROSTER_STORE"

.field private static final VERSION_FILE_NAME:Ljava/lang/String; = "__version__"

.field private static final rosterDirFilter:Ljava/io/FileFilter;


# instance fields
.field private final fileDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->LOGGER:Ljava/util/logging/Logger;

    .line 59
    new-instance v0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore$1;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->rosterDirFilter:Ljava/io/FileFilter;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "baseDir"    # Ljava/io/File;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->fileDir:Ljava/io/File;

    .line 78
    return-void
.end method

.method private addEntryRaw(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)Z
    .locals 2
    .param p1, "item"    # Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 216
    invoke-virtual {p1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->getBareJidFile(Lorg/jxmpp/jid/Jid;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/FileUtils;->writeFile(Ljava/io/File;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private getBareJidFile(Lorg/jxmpp/jid/Jid;)Ljava/io/File;
    .locals 5
    .param p1, "bareJid"    # Lorg/jxmpp/jid/Jid;

    .line 220
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/stringencoder/Base32;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "encodedJid":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->fileDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entry-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getVersionFile()Ljava/io/File;
    .locals 3

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->fileDir:Ljava/io/File;

    const-string v2, "__version__"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Ljava/io/File;)Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;
    .locals 2
    .param p0, "baseDir"    # Ljava/io/File;

    .line 90
    new-instance v0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;-><init>(Ljava/io/File;)V

    .line 91
    .local v0, "store":Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;
    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->setRosterVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    return-object v0

    .line 95
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static open(Ljava/io/File;)Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;
    .locals 3
    .param p0, "baseDir"    # Ljava/io/File;

    .line 107
    new-instance v0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;-><init>(Ljava/io/File;)V

    .line 108
    .local v0, "store":Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;
    invoke-direct {v0}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->getVersionFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/FileUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "DEFAULT_ROSTER_STORE\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    return-object v0

    .line 113
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static readEntry(Ljava/io/File;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 193
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 197
    .local v1, "reader":Ljava/io/Reader;
    nop

    .line 200
    :try_start_1
    invoke-static {v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getParserFor(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 201
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v2}, Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v3

    .line 202
    .local v3, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    return-object v3

    .line 204
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 206
    .local v3, "deleted":Z
    const-string v4, "Exception while parsing roster entry."

    .line 207
    .local v4, "message":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " File was deleted."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    :cond_0
    sget-object v5, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    return-object v0

    .line 194
    .end local v1    # "reader":Ljava/io/Reader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "deleted":Z
    .end local v4    # "message":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Roster entry file not found"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    return-object v0
.end method

.method private setRosterVersion(Ljava/lang/String;)Z
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->getVersionFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEFAULT_ROSTER_STORE\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/FileUtils;->writeFile(Ljava/io/File;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addEntry(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Ljava/lang/String;)Z
    .locals 1
    .param p1, "item"    # Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .param p2, "version"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->addEntryRaw(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->setRosterVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->fileDir:Ljava/io/File;

    sget-object v2, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->rosterDirFilter:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 126
    .local v4, "file":Ljava/io/File;
    invoke-static {v4}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->readEntry(Ljava/io/File;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v5

    .line 127
    .local v5, "entry":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    if-nez v5, :cond_0

    .line 129
    const/4 v1, 0x0

    return-object v1

    .line 131
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "entry":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_1
    return-object v0
.end method

.method public getEntry(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .locals 1
    .param p1, "bareJid"    # Lorg/jxmpp/jid/Jid;

    .line 139
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->getBareJidFile(Lorg/jxmpp/jid/Jid;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->readEntry(Ljava/io/File;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v0

    return-object v0
.end method

.method public getRosterVersion()Ljava/lang/String;
    .locals 5

    .line 144
    invoke-direct {p0}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->getVersionFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/FileUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 146
    return-object v1

    .line 148
    :cond_0
    const/4 v2, 0x2

    const-string v3, "\n"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "lines":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v2, :cond_1

    .line 150
    return-object v1

    .line 152
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v3, v1

    return-object v1
.end method

.method public removeEntry(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Z
    .locals 1
    .param p1, "bareJid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "version"    # Ljava/lang/String;

    .line 166
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->getBareJidFile(Lorg/jxmpp/jid/Jid;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->setRosterVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetEntries(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 5
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 171
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->fileDir:Ljava/io/File;

    sget-object v1, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->rosterDirFilter:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 172
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 171
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 175
    .local v1, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->addEntryRaw(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    return v2

    .line 178
    .end local v1    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    :cond_1
    goto :goto_1

    .line 179
    :cond_2
    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->setRosterVersion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetStore()V
    .locals 2

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/roster/rosterstore/DirectoryRosterStore;->resetEntries(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 186
    return-void
.end method
