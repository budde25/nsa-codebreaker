.class public final Landroidx/navigation/ActivityNavigator$Extras$Builder;
.super Ljava/lang/Object;
.source "ActivityNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/ActivityNavigator$Extras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActivityOptions:Landroid/support/v4/app/ActivityOptionsCompat;

.field private mFlags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFlags(I)Landroidx/navigation/ActivityNavigator$Extras$Builder;
    .locals 1
    .param p1, "flags"    # I

    .line 426
    iget v0, p0, Landroidx/navigation/ActivityNavigator$Extras$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/navigation/ActivityNavigator$Extras$Builder;->mFlags:I

    .line 427
    return-object p0
.end method

.method public build()Landroidx/navigation/ActivityNavigator$Extras;
    .locals 3

    .line 450
    new-instance v0, Landroidx/navigation/ActivityNavigator$Extras;

    iget v1, p0, Landroidx/navigation/ActivityNavigator$Extras$Builder;->mFlags:I

    iget-object v2, p0, Landroidx/navigation/ActivityNavigator$Extras$Builder;->mActivityOptions:Landroid/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0, v1, v2}, Landroidx/navigation/ActivityNavigator$Extras;-><init>(ILandroid/support/v4/app/ActivityOptionsCompat;)V

    return-object v0
.end method

.method public setActivityOptions(Landroid/support/v4/app/ActivityOptionsCompat;)Landroidx/navigation/ActivityNavigator$Extras$Builder;
    .locals 0
    .param p1, "activityOptions"    # Landroid/support/v4/app/ActivityOptionsCompat;

    .line 439
    iput-object p1, p0, Landroidx/navigation/ActivityNavigator$Extras$Builder;->mActivityOptions:Landroid/support/v4/app/ActivityOptionsCompat;

    .line 440
    return-object p0
.end method
