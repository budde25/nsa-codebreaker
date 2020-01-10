.class public final Landroidx/navigation/ActivityNavigator$Extras;
.super Ljava/lang/Object;
.source "ActivityNavigator.java"

# interfaces
.implements Landroidx/navigation/Navigator$Extras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/ActivityNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extras"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/ActivityNavigator$Extras$Builder;
    }
.end annotation


# instance fields
.field private final mActivityOptions:Landroid/support/v4/app/ActivityOptionsCompat;

.field private final mFlags:I


# direct methods
.method constructor <init>(ILandroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "activityOptions"    # Landroid/support/v4/app/ActivityOptionsCompat;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput p1, p0, Landroidx/navigation/ActivityNavigator$Extras;->mFlags:I

    .line 391
    iput-object p2, p0, Landroidx/navigation/ActivityNavigator$Extras;->mActivityOptions:Landroid/support/v4/app/ActivityOptionsCompat;

    .line 392
    return-void
.end method


# virtual methods
.method public getActivityOptions()Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 1

    .line 407
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Extras;->mActivityOptions:Landroid/support/v4/app/ActivityOptionsCompat;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 398
    iget v0, p0, Landroidx/navigation/ActivityNavigator$Extras;->mFlags:I

    return v0
.end method
