.class Landroidx/navigation/NavController$1;
.super Landroidx/navigation/NavigatorProvider;
.source "NavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/navigation/NavController;

    .line 83
    iput-object p1, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    invoke-direct {p0}, Landroidx/navigation/NavigatorProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 88
    .local p2, "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/NavDestination;>;"
    nop

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 90
    .local v0, "previousNavigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/NavDestination;>;"
    if-eq v0, p2, :cond_1

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    iget-object v1, v1, Landroidx/navigation/NavController;->mOnBackPressListener:Landroidx/navigation/Navigator$OnNavigatorBackPressListener;

    invoke-virtual {v0, v1}, Landroidx/navigation/Navigator;->removeOnNavigatorBackPressListener(Landroidx/navigation/Navigator$OnNavigatorBackPressListener;)V

    .line 94
    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    iget-object v1, v1, Landroidx/navigation/NavController;->mOnBackPressListener:Landroidx/navigation/Navigator$OnNavigatorBackPressListener;

    invoke-virtual {p2, v1}, Landroidx/navigation/Navigator;->addOnNavigatorBackPressListener(Landroidx/navigation/Navigator$OnNavigatorBackPressListener;)V

    .line 96
    :cond_1
    return-object v0
.end method
