.class public Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "VCard.java"


# static fields
.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final ELEMENT:Ljava/lang/String; = "vCard"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final NAMESPACE:Ljava/lang/String; = "vcard-temp"


# instance fields
.field private emailHome:Ljava/lang/String;

.field private emailWork:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private final homeAddr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final homePhones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastName:Ljava/lang/String;

.field private middleName:Ljava/lang/String;

.field private organization:Ljava/lang/String;

.field private organizationUnit:Ljava/lang/String;

.field private final otherSimpleFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final otherUnescapableFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photoBinval:Ljava/lang/String;

.field private photoMimeType:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;

.field private final workAddr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final workPhones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    const-class v0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 134
    const-string v0, "vCard"

    const-string v1, "vcard-temp"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homePhones:Ljava/util/Map;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workPhones:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homeAddr:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workAddr:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    .line 135
    return-void
.end method

.method private copyFieldsFrom(Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V
    .locals 6
    .param p1, "from"    # Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    .line 706
    const-class v0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 707
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 708
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 709
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 711
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 712
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    goto :goto_1

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This cannot happen:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 707
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 719
    :cond_1
    return-void
.end method

.method public static getBytes(Ljava/net/URL;)[B
    .locals 3
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    invoke-static {v1}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->getFileBytes(Ljava/io/File;)[B

    move-result-object v2

    return-object v2

    .line 490
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getFileBytes(Ljava/io/File;)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 497
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 498
    .local v1, "bytes":I
    new-array v2, v1, [B

    .line 499
    .local v2, "buffer":[B
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .line 500
    .local v3, "readBytes":I
    array-length v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    .line 503
    nop

    .line 506
    nop

    .line 507
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 503
    return-object v2

    .line 501
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Entire file not read"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local p0    # "file":Ljava/io/File;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    .end local v1    # "bytes":I
    .end local v2    # "buffer":[B
    .end local v3    # "readBytes":I
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    throw v1
.end method

.method private hasContent()Z
    .locals 1

    .line 723
    invoke-direct {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->hasNameField()Z

    move-result v0

    if-nez v0, :cond_1

    .line 724
    invoke-direct {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->hasOrganizationFields()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailHome:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailWork:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    .line 727
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    .line 728
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homeAddr:Ljava/util/Map;

    .line 729
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homePhones:Ljava/util/Map;

    .line 730
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workAddr:Ljava/util/Map;

    .line 731
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workPhones:Ljava/util/Map;

    .line 732
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoBinval:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 723
    :goto_1
    return v0
.end method

.method private hasNameField()Z
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->firstName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->lastName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->middleName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->prefix:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->suffix:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasOrganizationFields()Z
    .locals 1

    .line 743
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organization:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateFN()V
    .locals 3

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->firstName:Ljava/lang/String;

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    .line 539
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 542
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 545
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 547
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FN"

    invoke-virtual {p0, v2, v1}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 750
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 751
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_8

    .line 753
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    .line 755
    .local v1, "vCard":Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailHome:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailHome:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailHome:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 756
    :goto_0
    return v0

    .line 758
    :cond_3
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailWork:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailWork:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailWork:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 759
    :goto_1
    return v0

    .line 761
    :cond_5
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 762
    :goto_2
    return v0

    .line 764
    :cond_7
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homeAddr:Ljava/util/Map;

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 765
    return v0

    .line 767
    :cond_8
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homePhones:Ljava/util/Map;

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 768
    return v0

    .line 770
    :cond_9
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_a
    iget-object v2, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 771
    :goto_3
    return v0

    .line 773
    :cond_b
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->middleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_c
    iget-object v2, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 774
    :goto_4
    return v0

    .line 776
    :cond_d
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organization:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organization:Ljava/lang/String;

    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_5

    :cond_e
    iget-object v2, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organization:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 778
    :goto_5
    return v0

    .line 780
    :cond_f
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organizationUnit:Ljava/lang/String;

    .line 781
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_6

    :cond_10
    iget-object v2, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 782
    :goto_6
    return v0

    .line 784
    :cond_11
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 785
    return v0

    .line 787
    :cond_12
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workAddr:Ljava/util/Map;

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 788
    return v0

    .line 790
    :cond_13
    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoBinval:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v3, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoBinval:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_7

    :cond_14
    iget-object v2, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoBinval:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 791
    :goto_7
    return v0

    .line 794
    :cond_15
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workPhones:Ljava/util/Map;

    iget-object v2, v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 751
    .end local v1    # "vCard":Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    :cond_16
    :goto_8
    return v0
.end method

.method public getAddressFieldHome(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "addrField"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddressFieldWork(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "addrField"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()[B
    .locals 1

    .line 461
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoBinval:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 462
    const/4 v0, 0x0

    return-object v0

    .line 464
    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getAvatarHash()Ljava/lang/String;
    .locals 6

    .line 518
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->getAvatar()[B

    move-result-object v0

    .line 519
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 520
    return-object v1

    .line 525
    :cond_0
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .local v1, "digest":Ljava/security/MessageDigest;
    nop

    .line 532
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 533
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 527
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 528
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Failed to get message digest"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 529
    return-object v1
.end method

.method public getAvatarMimeType()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailHome()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailHome:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailWork()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailWork:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 8
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 602
    invoke-direct {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->hasContent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 604
    return-object p1

    .line 606
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 607
    invoke-direct {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->hasNameField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    const-string v0, "N"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 609
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->lastName:Ljava/lang/String;

    const-string v2, "FAMILY"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 610
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->firstName:Ljava/lang/String;

    const-string v2, "GIVEN"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 611
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->middleName:Ljava/lang/String;

    const-string v2, "MIDDLE"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 612
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->prefix:Ljava/lang/String;

    const-string v2, "PREFIX"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 613
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->suffix:Ljava/lang/String;

    const-string v2, "SUFFIX"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 614
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 616
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->hasOrganizationFields()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    const-string v0, "ORG"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 618
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organization:Ljava/lang/String;

    const-string v2, "ORGNAME"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 619
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organizationUnit:Ljava/lang/String;

    const-string v2, "ORGUNIT"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 620
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 622
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 623
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 624
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 625
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 626
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 627
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 628
    goto :goto_1

    .line 630
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 631
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 632
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 633
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 634
    :cond_5
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoBinval:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 635
    const-string v0, "PHOTO"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 636
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoBinval:Ljava/lang/String;

    const-string v2, "BINVAL"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->escapedElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 637
    iget-object v1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoMimeType:Ljava/lang/String;

    const-string v2, "TYPE"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 638
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 640
    :cond_6
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailWork:Ljava/lang/String;

    const-string v1, "USERID"

    const-string v2, "PREF"

    const-string v3, "INTERNET"

    const-string v4, "WORK"

    const-string v5, "EMAIL"

    if-eqz v0, :cond_7

    .line 641
    invoke-virtual {p1, v5}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 642
    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 643
    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 644
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 645
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailWork:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 646
    invoke-virtual {p1, v5}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 648
    :cond_7
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailHome:Ljava/lang/String;

    const-string v6, "HOME"

    if-eqz v0, :cond_8

    .line 649
    invoke-virtual {p1, v5}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 650
    invoke-virtual {p1, v6}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 651
    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 652
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 653
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailHome:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 654
    invoke-virtual {p1, v5}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 656
    :cond_8
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "NUMBER"

    const-string v3, "TEL"

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 657
    .local v1, "phone":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 658
    .local v5, "number":Ljava/lang/String;
    if-nez v5, :cond_9

    .line 659
    goto :goto_2

    .line 661
    :cond_9
    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 662
    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 663
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 664
    invoke-virtual {p1, v2, v5}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 665
    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 666
    .end local v1    # "phone":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "number":Ljava/lang/String;
    goto :goto_2

    .line 667
    :cond_a
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 668
    .restart local v1    # "phone":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 669
    .restart local v5    # "number":Ljava/lang/String;
    if-nez v5, :cond_b

    .line 670
    goto :goto_3

    .line 672
    :cond_b
    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 673
    invoke-virtual {p1, v6}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 674
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 675
    invoke-virtual {p1, v2, v5}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 676
    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 677
    .end local v1    # "phone":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "number":Ljava/lang/String;
    goto :goto_3

    .line 678
    :cond_c
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "ADR"

    if-nez v0, :cond_f

    .line 679
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 680
    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 681
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 682
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 683
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_d

    .line 684
    goto :goto_4

    .line 686
    :cond_d
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 687
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_4

    .line 688
    :cond_e
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 690
    :cond_f
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 691
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 692
    invoke-virtual {p1, v6}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 693
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 694
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 695
    .restart local v3    # "value":Ljava/lang/String;
    if-nez v3, :cond_10

    .line 696
    goto :goto_5

    .line 698
    :cond_10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 699
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_5

    .line 700
    :cond_11
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 702
    :cond_12
    return-object p1
.end method

.method public getJabberId()Ljava/lang/String;
    .locals 2

    .line 249
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    const-string v1, "JABBERID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    const-string v1, "NICKNAME"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationUnit()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organizationUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneHome(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneType"    # Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneWork(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneType"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 800
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    .line 801
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 802
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 803
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 804
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->firstName:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    .line 805
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v1, v2

    .line 806
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    .line 807
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailHome:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    add-int/2addr v1, v2

    .line 808
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailWork:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    add-int/2addr v0, v2

    .line 809
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organization:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    add-int/2addr v1, v2

    .line 810
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    add-int/2addr v0, v2

    .line 811
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 812
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoBinval:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_7
    add-int/2addr v0, v3

    .line 813
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public load(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->load(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/EntityBareJid;)V

    .line 580
    return-void
.end method

.method public load(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/EntityBareJid;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "user"    # Lorg/jxmpp/jid/EntityBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 596
    invoke-static {p1}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->loadVCard(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    move-result-object v0

    .line 597
    .local v0, "result":Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->copyFieldsFrom(Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V

    .line 598
    return-void
.end method

.method public removeAvatar()V
    .locals 1

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoBinval:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoMimeType:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public save(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    invoke-static {p1}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->saveVCard(Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V

    .line 564
    return-void
.end method

.method public setAddressFieldHome(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "addrField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method public setAddressFieldWork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "addrField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    return-void
.end method

.method public setAvatar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "encodedImage"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 422
    iput-object p1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoBinval:Ljava/lang/String;

    .line 423
    iput-object p2, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->photoMimeType:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setAvatar(Ljava/net/URL;)V
    .locals 6
    .param p1, "avatarURL"    # Ljava/net/URL;

    .line 363
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 365
    .local v0, "bytes":[B
    :try_start_0
    invoke-static {p1}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->getBytes(Ljava/net/URL;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting bytes from URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setAvatar([B)V

    .line 372
    return-void
.end method

.method public setAvatar([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 393
    const-string v0, "image/jpeg"

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setAvatar([BLjava/lang/String;)V

    .line 394
    return-void
.end method

.method public setAvatar([BLjava/lang/String;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 404
    if-nez p1, :cond_0

    .line 405
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->removeAvatar()V

    .line 406
    return-void

    .line 410
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "encodedImage":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setAvatar(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setEmailHome(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailHome:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setEmailWork(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailWork"    # Ljava/lang/String;

    .line 245
    iput-object p1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->emailWork:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setEncodedImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedAvatar"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 434
    const-string v0, "image/jpeg"

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setAvatar(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isUnescapable"    # Z

    .line 168
    if-nez p3, :cond_0

    .line 169
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_0
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->firstName:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->updateFN()V

    .line 184
    return-void
.end method

.method public setJabberId(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "jabberId"    # Ljava/lang/CharSequence;

    .line 253
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JABBERID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->lastName:Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->updateFN()V

    .line 194
    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "middleName"    # Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->middleName:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->updateFN()V

    .line 204
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 2
    .param p1, "nickName"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    const-string v1, "NICKNAME"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 0
    .param p1, "organization"    # Ljava/lang/String;

    .line 261
    iput-object p1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organization:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setOrganizationUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "organizationUnit"    # Ljava/lang/String;

    .line 269
    iput-object p1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->organizationUnit:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setPhoneHome(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneType"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void
.end method

.method public setPhoneWork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneType"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 211
    iput-object p1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->prefix:Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->updateFN()V

    .line 213
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffix"    # Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->suffix:Ljava/lang/String;

    .line 221
    invoke-direct {p0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->updateFN()V

    .line 222
    return-void
.end method
