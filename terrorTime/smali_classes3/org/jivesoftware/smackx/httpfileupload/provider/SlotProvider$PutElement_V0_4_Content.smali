.class public final Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;
.super Ljava/lang/Object;
.source "SlotProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PutElement_V0_4_Content"
.end annotation


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final putUrl:Ljava/net/URL;


# direct methods
.method private constructor <init>(Ljava/net/URL;Ljava/util/Map;)V
    .locals 0
    .param p1, "putUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;->putUrl:Ljava/net/URL;

    .line 152
    iput-object p2, p0, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;->headers:Ljava/util/Map;

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URL;Ljava/util/Map;Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/net/URL;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$1;

    .line 146
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;-><init>(Ljava/net/URL;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;

    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;->putUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;

    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;->headers:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getPutUrl()Ljava/net/URL;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;->putUrl:Ljava/net/URL;

    return-object v0
.end method
