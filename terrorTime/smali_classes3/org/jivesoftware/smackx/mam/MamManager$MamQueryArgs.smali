.class public final Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;
.super Ljava/lang/Object;
.source "MamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/mam/MamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MamQueryArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    }
.end annotation


# instance fields
.field private final afterUid:Ljava/lang/String;

.field private final beforeUid:Ljava/lang/String;

.field private dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

.field private final formFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;"
        }
    .end annotation
.end field

.field private final maxResults:Ljava/lang/Integer;

.field private final node:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->access$000(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->node:Ljava/lang/String;

    .line 256
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->access$100(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->formFields:Ljava/util/Map;

    .line 257
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->access$200(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->access$200(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->maxResults:Ljava/lang/Integer;

    goto :goto_0

    .line 260
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->maxResults:Ljava/lang/Integer;

    .line 262
    :goto_0
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->access$300(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->afterUid:Ljava/lang/String;

    .line 263
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->access$400(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->beforeUid:Ljava/lang/String;

    .line 264
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;Lorg/jivesoftware/smackx/mam/MamManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/mam/MamManager$1;

    .line 243
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;-><init>(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)V

    return-void
.end method

.method static synthetic access$900(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;

    .line 243
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->node:Ljava/lang/String;

    return-object v0
.end method

.method public static builder()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 1

    .line 294
    new-instance v0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method getDataForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 2

    .line 269
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    if-eqz v0, :cond_0

    .line 270
    return-object v0

    .line 272
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/mam/MamManager;->access$500()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 273
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->formFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addFields(Ljava/util/Collection;)Z

    .line 274
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    return-object v0
.end method

.method maybeAddRsmSet(Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)V
    .locals 11
    .param p1, "mamQueryIQ"    # Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;

    .line 278
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->maxResults:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->afterUid:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->beforeUid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 279
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->maxResults:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "max":I
    goto :goto_0

    .line 286
    .end local v0    # "max":I
    :cond_1
    const/4 v0, -0x1

    .line 289
    .restart local v0    # "max":I
    :goto_0
    new-instance v10, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    iget-object v2, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->afterUid:Ljava/lang/String;

    iget-object v3, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->beforeUid:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v1, v10

    move v7, v0

    invoke-direct/range {v1 .. v9}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    .line 290
    .local v1, "rsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 291
    return-void
.end method
