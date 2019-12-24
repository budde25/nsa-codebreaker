.class public abstract Lorg/jivesoftware/smackx/sid/element/StableAndUniqueIdElement;
.super Ljava/lang/Object;
.source "StableAndUniqueIdElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ATTR_ID:Ljava/lang/String; = "id"


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/sid/element/StableAndUniqueIdElement;->id:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iput-object p1, p0, Lorg/jivesoftware/smackx/sid/element/StableAndUniqueIdElement;->id:Ljava/lang/String;

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'id\' cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/jivesoftware/smackx/sid/element/StableAndUniqueIdElement;->id:Ljava/lang/String;

    return-object v0
.end method
