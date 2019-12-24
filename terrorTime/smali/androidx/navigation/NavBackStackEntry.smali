.class final Landroidx/navigation/NavBackStackEntry;
.super Ljava/lang/Object;
.source "NavBackStackEntry.java"


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mDestination:Landroidx/navigation/NavDestination;


# direct methods
.method constructor <init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "destination"    # Landroidx/navigation/NavDestination;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->mDestination:Landroidx/navigation/NavDestination;

    .line 32
    iput-object p2, p0, Landroidx/navigation/NavBackStackEntry;->mArgs:Landroid/os/Bundle;

    .line 33
    return-void
.end method


# virtual methods
.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mArgs:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mDestination:Landroidx/navigation/NavDestination;

    return-object v0
.end method
