.class public final enum Lorg/jivesoftware/smack/packet/StanzaError$Condition;
.super Ljava/lang/Enum;
.source "StanzaError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/StanzaError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Condition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/packet/StanzaError$Condition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum conflict:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum feature_not_implemented:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum forbidden:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum gone:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum internal_server_error:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum item_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum jid_malformed:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum not_acceptable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum not_allowed:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum not_authorized:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum policy_violation:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum recipient_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum redirect:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum registration_required:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum remote_server_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum remote_server_timeout:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum resource_constraint:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum service_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum subscription_required:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum undefined_condition:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field public static final enum unexpected_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 365
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/4 v1, 0x0

    const-string v2, "bad_request"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 366
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/4 v2, 0x1

    const-string v3, "conflict"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->conflict:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 367
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/4 v3, 0x2

    const-string v4, "feature_not_implemented"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 368
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/4 v4, 0x3

    const-string v5, "forbidden"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 369
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/4 v5, 0x4

    const-string v6, "gone"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->gone:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 370
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/4 v6, 0x5

    const-string v7, "internal_server_error"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->internal_server_error:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 371
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/4 v7, 0x6

    const-string v8, "item_not_found"

    invoke-direct {v0, v8, v7}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 372
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/4 v8, 0x7

    const-string v9, "jid_malformed"

    invoke-direct {v0, v9, v8}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->jid_malformed:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 373
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v9, 0x8

    const-string v10, "not_acceptable"

    invoke-direct {v0, v10, v9}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_acceptable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 374
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v10, 0x9

    const-string v11, "not_allowed"

    invoke-direct {v0, v11, v10}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_allowed:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 375
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v11, 0xa

    const-string v12, "not_authorized"

    invoke-direct {v0, v12, v11}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_authorized:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 376
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v12, 0xb

    const-string v13, "policy_violation"

    invoke-direct {v0, v13, v12}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->policy_violation:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 377
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v13, 0xc

    const-string v14, "recipient_unavailable"

    invoke-direct {v0, v14, v13}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->recipient_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 378
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v14, 0xd

    const-string v15, "redirect"

    invoke-direct {v0, v15, v14}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->redirect:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 379
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v15, 0xe

    const-string v14, "registration_required"

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->registration_required:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 380
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const-string v14, "remote_server_not_found"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->remote_server_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 381
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const-string v14, "remote_server_timeout"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 382
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const-string v14, "resource_constraint"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->resource_constraint:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 383
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const-string v14, "service_unavailable"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 384
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const-string v14, "subscription_required"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->subscription_required:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 385
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const-string v14, "undefined_condition"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->undefined_condition:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 386
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const-string v14, "unexpected_request"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->unexpected_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 364
    const/16 v0, 0x16

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v14, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v14, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->conflict:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->gone:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->internal_server_error:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->jid_malformed:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_acceptable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_allowed:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_authorized:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->policy_violation:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->recipient_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    aput-object v1, v0, v13

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->redirect:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->registration_required:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->remote_server_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->resource_constraint:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->subscription_required:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->undefined_condition:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->unexpected_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->$VALUES:[Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .line 394
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, "condition":Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    :try_start_0
    invoke-static {p0}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 400
    nop

    .line 401
    return-object v0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not transform string \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' to XMPPErrorCondition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 364
    const-class v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    .locals 1

    .line 364
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->$VALUES:[Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/packet/StanzaError$Condition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 390
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
