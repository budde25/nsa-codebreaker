.class public final enum Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
.super Ljava/lang/Enum;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/httpfileupload/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

.field public static final enum v0_2:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

.field public static final enum v0_3:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    const/4 v1, 0x0

    const-string v2, "v0_2"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->v0_2:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    .line 38
    new-instance v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    const/4 v2, 0x1

    const-string v3, "v0_3"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->v0_3:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    sget-object v3, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->v0_2:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->v0_3:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->$VALUES:[Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    .locals 1

    .line 25
    sget-object v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->$VALUES:[Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    return-object v0
.end method
