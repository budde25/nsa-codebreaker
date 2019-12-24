.class final Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;
.super Ljava/lang/Object;
.source "XmlStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/XmlStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XmlNsAttribute"
.end annotation


# instance fields
.field private final value:Ljava/lang/String;

.field private final xmlFragment:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const-string v0, "Value must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->value:Ljava/lang/String;

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " xmlns=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->xmlFragment:Ljava/lang/String;

    .line 365
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/util/XmlStringBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/jivesoftware/smack/util/XmlStringBuilder$1;

    .line 358
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;

    .line 358
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 379
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->xmlFragment:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->xmlFragment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 384
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->xmlFragment:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->xmlFragment:Ljava/lang/String;

    return-object v0
.end method
