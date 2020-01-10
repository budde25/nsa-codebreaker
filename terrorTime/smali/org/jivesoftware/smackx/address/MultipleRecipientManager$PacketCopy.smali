.class final Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;
.super Lorg/jivesoftware/smack/packet/Stanza;
.source "MultipleRecipientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/address/MultipleRecipientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PacketCopy"
.end annotation


# instance fields
.field private final text:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 307
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Stanza;-><init>()V

    .line 308
    iput-object p1, p0, Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;->text:Ljava/lang/CharSequence;

    .line 309
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lorg/jivesoftware/smackx/address/MultipleRecipientManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/address/MultipleRecipientManager$1;

    .line 297
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;->text:Ljava/lang/CharSequence;

    return-object v0
.end method
