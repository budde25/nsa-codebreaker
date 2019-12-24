.class public final enum Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;
.super Ljava/lang/Enum;
.source "ExplicitMessageEncryptionElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExplicitMessageEncryptionProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

.field public static final enum legacyOpenPGP:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

.field public static final enum omemoVAxolotl:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

.field public static final enum openpgpV0:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

.field public static final enum otrV0:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;


# instance fields
.field private final name:Ljava/lang/String;

.field private final namespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 41
    new-instance v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    const/4 v1, 0x0

    const-string v2, "openpgpV0"

    const-string v3, "urn:xmpp:openpgp:0"

    const-string v4, "OpenPGP for XMPP (XEP-0373)"

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->openpgpV0:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    .line 43
    new-instance v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    const/4 v2, 0x1

    const-string v3, "otrV0"

    const-string v4, "urn:xmpp:otr:0"

    const-string v5, "Off-the-Record Messaging (XEP-0364)"

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->otrV0:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    .line 45
    new-instance v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    const/4 v3, 0x2

    const-string v4, "omemoVAxolotl"

    const-string v5, "eu.siacs.conversations.axolotl"

    const-string v6, "OMEMO Multi End Message and Object Encryption (XEP-0384)"

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->omemoVAxolotl:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    .line 47
    new-instance v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    const/4 v4, 0x3

    const-string v5, "legacyOpenPGP"

    const-string v6, "jabber:x:encrypted"

    const-string v7, "Legacy OpenPGP for XMPP [DANGEROUS, DO NOT USE!]"

    invoke-direct {v0, v5, v4, v6, v7}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->legacyOpenPGP:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    sget-object v5, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->openpgpV0:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    aput-object v5, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->otrV0:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->omemoVAxolotl:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->legacyOpenPGP:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->$VALUES:[Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->namespace:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->name:Ljava/lang/String;

    .line 56
    invoke-static {}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->access$000()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public static from(Ljava/lang/String;)Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;

    .line 68
    invoke-static {}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;
    .locals 1

    .line 35
    sget-object v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->$VALUES:[Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->namespace:Ljava/lang/String;

    return-object v0
.end method
