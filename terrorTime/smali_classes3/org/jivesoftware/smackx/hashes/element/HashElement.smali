.class public Lorg/jivesoftware/smackx/hashes/element/HashElement;
.super Ljava/lang/Object;
.source "HashElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ATTR_ALGO:Ljava/lang/String; = "algo"

.field public static final ELEMENT:Ljava/lang/String; = "hash"


# instance fields
.field private final algorithm:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field private final hash:[B

.field private final hashB64:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    .param p2, "hashB64"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->algorithm:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 59
    invoke-static {p2}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->hash:[B

    .line 60
    iput-object p2, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->hashB64:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;[B)V
    .locals 1
    .param p1, "algorithm"    # Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    .param p2, "hash"    # [B

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    iput-object v0, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->algorithm:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 48
    invoke-static {p2}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->hash:[B

    .line 49
    invoke-static {p2}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->hashB64:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 112
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/jivesoftware/smackx/hashes/element/HashElement;

    if-nez v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/hashes/element/HashElement;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 113
    :cond_2
    :goto_0
    return v0
.end method

.method public getAlgorithm()Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->algorithm:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "hash"

    return-object v0
.end method

.method public getHash()[B
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->hash:[B

    return-object v0
.end method

.method public getHashB64()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->hashB64:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->V2:Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/hashes/element/HashElement;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 97
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 98
    .local v0, "sb":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->algorithm:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "algo"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 99
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 100
    iget-object v1, p0, Lorg/jivesoftware/smackx/hashes/element/HashElement;->hashB64:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 101
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 102
    return-object v0
.end method
