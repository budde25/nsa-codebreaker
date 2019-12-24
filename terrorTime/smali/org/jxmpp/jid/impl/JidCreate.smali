.class public Lorg/jxmpp/jid/impl/JidCreate;
.super Ljava/lang/Object;
.source "JidCreate.java"


# static fields
.field private static final BAREJID_CACHE:Lorg/jxmpp/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/Cache<",
            "Ljava/lang/String;",
            "Lorg/jxmpp/jid/BareJid;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOMAINJID_CACHE:Lorg/jxmpp/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/Cache<",
            "Ljava/lang/String;",
            "Lorg/jxmpp/jid/DomainBareJid;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOMAINRESOURCEJID_CACHE:Lorg/jxmpp/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/Cache<",
            "Ljava/lang/String;",
            "Lorg/jxmpp/jid/DomainFullJid;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITYJID_CACHE:Lorg/jxmpp/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/Cache<",
            "Ljava/lang/String;",
            "Lorg/jxmpp/jid/EntityJid;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_BAREJID_CACHE:Lorg/jxmpp/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/Cache<",
            "Ljava/lang/String;",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_FULLJID_CACHE:Lorg/jxmpp/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/Cache<",
            "Ljava/lang/String;",
            "Lorg/jxmpp/jid/EntityFullJid;",
            ">;"
        }
    .end annotation
.end field

.field private static final FULLJID_CACHE:Lorg/jxmpp/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/Cache<",
            "Ljava/lang/String;",
            "Lorg/jxmpp/jid/FullJid;",
            ">;"
        }
    .end annotation
.end field

.field private static final JID_CACHE:Lorg/jxmpp/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/Cache<",
            "Ljava/lang/String;",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jxmpp/jid/impl/JidCreate;->JID_CACHE:Lorg/jxmpp/util/cache/Cache;

    .line 59
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jxmpp/jid/impl/JidCreate;->BAREJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    .line 60
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jxmpp/jid/impl/JidCreate;->ENTITYJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    .line 61
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jxmpp/jid/impl/JidCreate;->FULLJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    .line 62
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jxmpp/jid/impl/JidCreate;->ENTITY_BAREJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    .line 63
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jxmpp/jid/impl/JidCreate;->ENTITY_FULLJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    .line 64
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jxmpp/jid/impl/JidCreate;->DOMAINJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    .line 65
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jxmpp/jid/impl/JidCreate;->DOMAINRESOURCEJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bareFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/BareJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->bareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    return-object v0
.end method

.method public static bareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/BareJid;
    .locals 5
    .param p0, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 281
    sget-object v0, Lorg/jxmpp/jid/impl/JidCreate;->BAREJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v0, p0}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/BareJid;

    .line 282
    .local v0, "bareJid":Lorg/jxmpp/jid/BareJid;
    if-eqz v0, :cond_0

    .line 283
    return-object v0

    .line 286
    :cond_0
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "localpart":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "domainpart":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    new-instance v3, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;

    invoke-direct {v3, v1, v2}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 292
    :cond_1
    new-instance v3, Lorg/jxmpp/jid/impl/DomainpartJid;

    invoke-direct {v3, v2}, Lorg/jxmpp/jid/impl/DomainpartJid;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 296
    :goto_0
    nop

    .line 297
    sget-object v3, Lorg/jxmpp/jid/impl/JidCreate;->BAREJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v3, p0, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-object v0

    .line 294
    :catch_0
    move-exception v3

    .line 295
    .local v3, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v4, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v4, p0, v3}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public static bareFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/DomainBareJid;)Lorg/jxmpp/jid/BareJid;
    .locals 1
    .param p0, "localpart"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p1, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;

    .line 309
    invoke-interface {p1}, Lorg/jxmpp/jid/DomainBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jxmpp/jid/impl/JidCreate;->bareFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;)Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    return-object v0
.end method

.method public static bareFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;)Lorg/jxmpp/jid/BareJid;
    .locals 1
    .param p0, "localpart"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p1, "domain"    # Lorg/jxmpp/jid/parts/Domainpart;

    .line 320
    if-eqz p0, :cond_0

    .line 321
    new-instance v0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;

    invoke-direct {v0, p0, p1}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;-><init>(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;)V

    return-object v0

    .line 323
    :cond_0
    new-instance v0, Lorg/jxmpp/jid/impl/DomainpartJid;

    invoke-direct {v0, p1}, Lorg/jxmpp/jid/impl/DomainpartJid;-><init>(Lorg/jxmpp/jid/parts/Domainpart;)V

    return-object v0
.end method

.method public static bareFromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/BareJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 335
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->bareFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/BareJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static bareFromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/BareJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 256
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->bareFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/BareJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static domainBareFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/DomainBareJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 1019
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->domainBareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    return-object v0
.end method

.method public static domainBareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainBareJid;
    .locals 4
    .param p0, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 1030
    sget-object v0, Lorg/jxmpp/jid/impl/JidCreate;->DOMAINJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v0, p0}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/DomainBareJid;

    .line 1031
    .local v0, "domainJid":Lorg/jxmpp/jid/DomainBareJid;
    if-eqz v0, :cond_0

    .line 1032
    return-object v0

    .line 1035
    :cond_0
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, "domain":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/jxmpp/jid/impl/DomainpartJid;

    invoke-direct {v2, v1}, Lorg/jxmpp/jid/impl/DomainpartJid;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1040
    nop

    .line 1041
    sget-object v2, Lorg/jxmpp/jid/impl/JidCreate;->DOMAINJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v2, p0, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    return-object v0

    .line 1038
    :catch_0
    move-exception v2

    .line 1039
    .local v2, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v3, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v3, p0, v2}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public static domainBareFrom(Lorg/jxmpp/jid/parts/Domainpart;)Lorg/jxmpp/jid/DomainBareJid;
    .locals 1
    .param p0, "domainpart"    # Lorg/jxmpp/jid/parts/Domainpart;

    .line 1052
    new-instance v0, Lorg/jxmpp/jid/impl/DomainpartJid;

    invoke-direct {v0, p0}, Lorg/jxmpp/jid/impl/DomainpartJid;-><init>(Lorg/jxmpp/jid/parts/Domainpart;)V

    return-object v0
.end method

.method public static domainBareFromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/DomainBareJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 1063
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->domainBareFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static domainBareFromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/DomainBareJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 1005
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->domainBareFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static domainFullFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/DomainFullJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 1121
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->domainFullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainFullJid;

    move-result-object v0

    return-object v0
.end method

.method public static domainFullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainFullJid;
    .locals 5
    .param p0, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 1132
    sget-object v0, Lorg/jxmpp/jid/impl/JidCreate;->DOMAINRESOURCEJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v0, p0}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/DomainFullJid;

    .line 1133
    .local v0, "domainResourceJid":Lorg/jxmpp/jid/DomainFullJid;
    if-eqz v0, :cond_0

    .line 1134
    return-object v0

    .line 1137
    :cond_0
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1138
    .local v1, "domain":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1140
    .local v2, "resource":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;

    invoke-direct {v3, v1, v2}, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1143
    nop

    .line 1144
    sget-object v3, Lorg/jxmpp/jid/impl/JidCreate;->DOMAINRESOURCEJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v3, p0, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    return-object v0

    .line 1141
    :catch_0
    move-exception v3

    .line 1142
    .local v3, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v4, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v4, p0, v3}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public static domainFullFrom(Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/DomainFullJid;
    .locals 1
    .param p0, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p1, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 1167
    new-instance v0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;

    invoke-direct {v0, p0, p1}, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;-><init>(Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)V

    return-object v0
.end method

.method public static domainFullFrom(Lorg/jxmpp/jid/parts/Domainpart;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/DomainFullJid;
    .locals 1
    .param p0, "domainpart"    # Lorg/jxmpp/jid/parts/Domainpart;
    .param p1, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 1156
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->domainBareFrom(Lorg/jxmpp/jid/parts/Domainpart;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jxmpp/jid/impl/JidCreate;->domainFullFrom(Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/DomainFullJid;

    move-result-object v0

    return-object v0
.end method

.method public static domainFullFromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/DomainFullJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 1178
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->domainFullFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/DomainFullJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static domainFullFromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/DomainFullJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 1107
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->domainFullFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/DomainFullJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static donmainFullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainFullJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1092
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->domainFullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainFullJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityBareFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 654
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityBareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 5
    .param p0, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 665
    sget-object v0, Lorg/jxmpp/jid/impl/JidCreate;->ENTITY_BAREJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v0, p0}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/EntityBareJid;

    .line 666
    .local v0, "bareJid":Lorg/jxmpp/jid/EntityBareJid;
    if-eqz v0, :cond_0

    .line 667
    return-object v0

    .line 670
    :cond_0
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "localpart":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "domainpart":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;

    invoke-direct {v3, v1, v2}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 676
    nop

    .line 677
    sget-object v3, Lorg/jxmpp/jid/impl/JidCreate;->ENTITY_BAREJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v3, p0, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    return-object v0

    .line 674
    :catch_0
    move-exception v3

    .line 675
    .local v3, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v4, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v4, p0, v3}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public static entityBareFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/DomainBareJid;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 1
    .param p0, "localpart"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p1, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;

    .line 759
    invoke-interface {p1}, Lorg/jxmpp/jid/DomainBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityBareFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 1
    .param p0, "localpart"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p1, "domain"    # Lorg/jxmpp/jid/parts/Domainpart;

    .line 770
    new-instance v0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;

    invoke-direct {v0, p0, p1}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;-><init>(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;)V

    return-object v0
.end method

.method public static entityBareFromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 781
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static entityBareFromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 640
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static entityBareFromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 1
    .param p0, "unescapedJid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 707
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityBareFromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 5
    .param p0, "unescapedJidString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 718
    sget-object v0, Lorg/jxmpp/jid/impl/JidCreate;->ENTITY_BAREJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v0, p0}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/EntityBareJid;

    .line 719
    .local v0, "bareJid":Lorg/jxmpp/jid/EntityBareJid;
    if-eqz v0, :cond_0

    .line 720
    return-object v0

    .line 723
    :cond_0
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "localpart":Ljava/lang/String;
    invoke-static {v1}, Lorg/jxmpp/util/XmppStringUtils;->escapeLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "domainpart":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;

    invoke-direct {v3, v1, v2}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 732
    nop

    .line 733
    sget-object v3, Lorg/jxmpp/jid/impl/JidCreate;->ENTITY_BAREJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v3, p0, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    return-object v0

    .line 730
    :catch_0
    move-exception v3

    .line 731
    .local v3, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v4, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v4, p0, v3}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public static entityBareFromUnescapedOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 745
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static entityBareFromUnescapedOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 693
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static entityFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 493
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFrom(Ljava/lang/String;)Lorg/jxmpp/jid/EntityJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityFrom(Ljava/lang/String;)Lorg/jxmpp/jid/EntityJid;
    .locals 1
    .param p0, "jidString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 504
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFrom(Ljava/lang/String;Z)Lorg/jxmpp/jid/EntityJid;

    move-result-object v0

    return-object v0
.end method

.method private static entityFrom(Ljava/lang/String;Z)Lorg/jxmpp/jid/EntityJid;
    .locals 8
    .param p0, "jidString"    # Ljava/lang/String;
    .param p1, "unescaped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 570
    sget-object v0, Lorg/jxmpp/jid/impl/JidCreate;->ENTITYJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v0, p0}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/EntityJid;

    .line 571
    .local v0, "entityJid":Lorg/jxmpp/jid/EntityJid;
    if-eqz v0, :cond_0

    .line 572
    return-object v0

    .line 574
    :cond_0
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "localpartString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 580
    if-eqz p1, :cond_1

    .line 581
    :try_start_0
    invoke-static {v1}, Lorg/jxmpp/jid/parts/Localpart;->fromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v2

    .local v2, "localpart":Lorg/jxmpp/jid/parts/Localpart;
    goto :goto_0

    .line 583
    .end local v2    # "localpart":Lorg/jxmpp/jid/parts/Localpart;
    :cond_1
    invoke-static {v1}, Lorg/jxmpp/jid/parts/Localpart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v2
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_2

    .line 587
    .restart local v2    # "localpart":Lorg/jxmpp/jid/parts/Localpart;
    :goto_0
    nop

    .line 589
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "domainpartString":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Lorg/jxmpp/jid/parts/Domainpart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v4
    :try_end_1
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_1 .. :try_end_1} :catch_1

    .line 595
    .local v4, "domainpart":Lorg/jxmpp/jid/parts/Domainpart;
    nop

    .line 597
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 598
    .local v5, "resourceString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 601
    :try_start_2
    invoke-static {v5}, Lorg/jxmpp/jid/parts/Resourcepart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v6
    :try_end_2
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_2 .. :try_end_2} :catch_0

    .line 604
    .local v6, "resourcepart":Lorg/jxmpp/jid/parts/Resourcepart;
    nop

    .line 605
    invoke-static {v2, v4, v6}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    .line 606
    .end local v6    # "resourcepart":Lorg/jxmpp/jid/parts/Resourcepart;
    goto :goto_1

    .line 602
    :catch_0
    move-exception v6

    .line 603
    .local v6, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v7, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v7, p0, v6}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 607
    .end local v6    # "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    :cond_2
    invoke-static {v2, v4}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    .line 610
    :goto_1
    sget-object v6, Lorg/jxmpp/jid/impl/JidCreate;->ENTITYJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v6, p0, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    return-object v0

    .line 593
    .end local v4    # "domainpart":Lorg/jxmpp/jid/parts/Domainpart;
    .end local v5    # "resourceString":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 594
    .local v4, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v5, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v5, p0, v4}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 585
    .end local v2    # "localpart":Lorg/jxmpp/jid/parts/Localpart;
    .end local v3    # "domainpartString":Ljava/lang/String;
    .end local v4    # "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    :catch_2
    move-exception v2

    .line 586
    .local v2, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v3, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v3, p0, v2}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 576
    .end local v2    # "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    :cond_3
    new-instance v2, Lorg/jxmpp/stringprep/XmppStringprepException;

    const-string v3, "Does not contain a localpart"

    invoke-direct {v2, v3, p0}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public static entityFromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 622
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static entityFromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 468
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static entityFromUnesacpedOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 555
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/EntityJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static entityFromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 533
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/EntityJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityFromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/EntityJid;
    .locals 1
    .param p0, "jidString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 544
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFrom(Ljava/lang/String;Z)Lorg/jxmpp/jid/EntityJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityFromUnescapedOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 519
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static entityFullFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 813
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityFullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 6
    .param p0, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 824
    sget-object v0, Lorg/jxmpp/jid/impl/JidCreate;->ENTITY_FULLJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v0, p0}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/EntityFullJid;

    .line 825
    .local v0, "fullJid":Lorg/jxmpp/jid/EntityFullJid;
    if-eqz v0, :cond_0

    .line 826
    return-object v0

    .line 829
    :cond_0
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "localpart":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "domainpart":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, "resource":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v2, v3}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 836
    nop

    .line 837
    sget-object v4, Lorg/jxmpp/jid/impl/JidCreate;->ENTITY_FULLJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v4, p0, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    return-object v0

    .line 834
    :catch_0
    move-exception v4

    .line 835
    .local v4, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v5, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v5, p0, v4}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method public static entityFullFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 4
    .param p0, "localpart"    # Ljava/lang/String;
    .param p1, "domainpart"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 939
    :try_start_0
    new-instance v0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;

    invoke-direct {v0, p0, p1, p2}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    .local v0, "fullJid":Lorg/jxmpp/jid/EntityFullJid;
    nop

    .line 943
    return-object v0

    .line 940
    .end local v0    # "fullJid":Lorg/jxmpp/jid/EntityFullJid;
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Lorg/jxmpp/stringprep/XmppStringprepException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static entityFullFrom(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 1
    .param p0, "bareJid"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p1, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 978
    new-instance v0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;

    invoke-direct {v0, p0, p1}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;-><init>(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)V

    return-object v0
.end method

.method public static entityFullFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 1
    .param p0, "localpart"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p1, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 955
    invoke-interface {p1}, Lorg/jxmpp/jid/DomainBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityFullFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 1
    .param p0, "localpart"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p1, "domainpart"    # Lorg/jxmpp/jid/parts/Domainpart;
    .param p2, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 967
    invoke-static {p0, p1}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFrom(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityFullFromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 849
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static entityFullFromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 799
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static entityFullFromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 1
    .param p0, "unescapedJid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 881
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    return-object v0
.end method

.method public static entityFullFromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 6
    .param p0, "unescapedJidString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 892
    sget-object v0, Lorg/jxmpp/jid/impl/JidCreate;->ENTITY_FULLJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v0, p0}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/EntityFullJid;

    .line 893
    .local v0, "fullJid":Lorg/jxmpp/jid/EntityFullJid;
    if-eqz v0, :cond_0

    .line 894
    return-object v0

    .line 897
    :cond_0
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "localpart":Ljava/lang/String;
    invoke-static {v1}, Lorg/jxmpp/util/XmppStringUtils;->escapeLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 901
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, "domainpart":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 904
    .local v3, "resource":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;

    invoke-direct {v4, v1, v2, v3}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 907
    nop

    .line 909
    sget-object v4, Lorg/jxmpp/jid/impl/JidCreate;->ENTITY_FULLJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v4, p0, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    return-object v0

    .line 905
    :catch_0
    move-exception v4

    .line 906
    .local v4, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v5, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v5, p0, v4}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method public static entityFullFromUnescapedOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 921
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static entityFullFromUnescapedOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 867
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static from(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 144
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;
    .locals 3
    .param p0, "localpart"    # Ljava/lang/CharSequence;
    .param p1, "domainpart"    # Ljava/lang/CharSequence;
    .param p2, "resource"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 81
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;
    .locals 5
    .param p0, "jidString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 156
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "localpart":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "domainpart":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "resource":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v1, v2}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v3
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v4, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v4, p0, v3}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public static from(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;
    .locals 4
    .param p0, "localpart"    # Ljava/lang/String;
    .param p1, "domainpart"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 97
    invoke-static {p0, p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->completeJidFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "jidString":Ljava/lang/String;
    sget-object v1, Lorg/jxmpp/jid/impl/JidCreate;->JID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v1, v0}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jxmpp/jid/Jid;

    .line 99
    .local v1, "jid":Lorg/jxmpp/jid/Jid;
    if-eqz v1, :cond_0

    .line 100
    return-object v1

    .line 102
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 103
    new-instance v2, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;

    invoke-direct {v2, p0, p1, p2}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 105
    new-instance v2, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;

    invoke-direct {v2, p0, p1}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 107
    new-instance v2, Lorg/jxmpp/jid/impl/DomainpartJid;

    invoke-direct {v2, p1}, Lorg/jxmpp/jid/impl/DomainpartJid;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 109
    new-instance v2, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;

    invoke-direct {v2, p1, p2}, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 113
    :goto_0
    sget-object v2, Lorg/jxmpp/jid/impl/JidCreate;->JID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v2, v0, v1}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object v1

    .line 111
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not a valid combination of localpart, domainpart and resource"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static fromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 174
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static fromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 129
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;
    .locals 1
    .param p0, "unescapedJid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 206
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->fromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    return-object v0
.end method

.method public static fromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;
    .locals 5
    .param p0, "unescapedJidString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 217
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "localpart":Ljava/lang/String;
    invoke-static {v0}, Lorg/jxmpp/util/XmppStringUtils;->escapeLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "domainpart":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "resource":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v1, v2}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v3
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 225
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v4, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v4, p0, v3}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public static fromUnescapedOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 238
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->fromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static fromUnescapedOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 192
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->fromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fullFrom(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 1
    .param p0, "bareJid"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p1, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 482
    new-instance v0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;

    invoke-direct {v0, p0, p1}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;-><init>(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)V

    return-object v0
.end method

.method public static fullFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/FullJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 367
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->fullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/FullJid;

    move-result-object v0

    return-object v0
.end method

.method public static fullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/FullJid;
    .locals 6
    .param p0, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 378
    sget-object v0, Lorg/jxmpp/jid/impl/JidCreate;->FULLJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v0, p0}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/FullJid;

    .line 379
    .local v0, "fullJid":Lorg/jxmpp/jid/FullJid;
    if-eqz v0, :cond_0

    .line 380
    return-object v0

    .line 383
    :cond_0
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "localpart":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "domainpart":Ljava/lang/String;
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "resource":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v2, v3}, Lorg/jxmpp/jid/impl/JidCreate;->fullFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/FullJid;

    move-result-object v4
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 390
    nop

    .line 391
    sget-object v4, Lorg/jxmpp/jid/impl/JidCreate;->FULLJID_CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v4, p0, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    return-object v0

    .line 388
    :catch_0
    move-exception v4

    .line 389
    .local v4, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v5, Lorg/jxmpp/stringprep/XmppStringprepException;

    invoke-direct {v5, p0, v4}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method public static fullFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/FullJid;
    .locals 4
    .param p0, "localpart"    # Ljava/lang/String;
    .param p1, "domainpart"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 407
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    new-instance v0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;

    invoke-direct {v0, p0, p1, p2}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "fullJid":Lorg/jxmpp/jid/FullJid;
    goto :goto_1

    .line 408
    .end local v0    # "fullJid":Lorg/jxmpp/jid/FullJid;
    :cond_1
    :goto_0
    new-instance v0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;

    invoke-direct {v0, p1, p2}, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .restart local v0    # "fullJid":Lorg/jxmpp/jid/FullJid;
    :goto_1
    nop

    .line 415
    return-object v0

    .line 412
    .end local v0    # "fullJid":Lorg/jxmpp/jid/FullJid;
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Lorg/jxmpp/stringprep/XmppStringprepException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static fullFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/FullJid;
    .locals 1
    .param p0, "localpart"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p1, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 427
    invoke-interface {p1}, Lorg/jxmpp/jid/DomainBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/jxmpp/jid/impl/JidCreate;->fullFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/FullJid;

    move-result-object v0

    return-object v0
.end method

.method public static fullFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/FullJid;
    .locals 1
    .param p0, "localpart"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p1, "domainpart"    # Lorg/jxmpp/jid/parts/Domainpart;
    .param p2, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 439
    invoke-static {p0, p1}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFrom(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/jxmpp/jid/impl/JidCreate;->fullFrom(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    return-object v0
.end method

.method public static fullFromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/FullJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 450
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->fullFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/FullJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static fullFromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/FullJid;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 353
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->fullFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/FullJid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static serverBareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainBareJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 991
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->domainBareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    return-object v0
.end method

.method public static serverFullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainFullJid;
    .locals 1
    .param p0, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1079
    invoke-static {p0}, Lorg/jxmpp/jid/impl/JidCreate;->donmainFullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainFullJid;

    move-result-object v0

    return-object v0
.end method
