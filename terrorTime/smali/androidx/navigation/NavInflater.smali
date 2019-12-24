.class public final Landroidx/navigation/NavInflater;
.super Ljava/lang/Object;
.source "NavInflater.java"


# static fields
.field private static final APPLICATION_ID_PLACEHOLDER:Ljava/lang/String; = "${applicationId}"

.field private static final TAG_ACTION:Ljava/lang/String; = "action"

.field private static final TAG_ARGUMENT:Ljava/lang/String; = "argument"

.field private static final TAG_DEEP_LINK:Ljava/lang/String; = "deepLink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final sTmpValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNavigatorProvider:Landroidx/navigation/NavigatorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navigatorProvider"    # Landroidx/navigation/NavigatorProvider;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Landroidx/navigation/NavInflater;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 55
    return-void
.end method

.method private static checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;
    .locals 3
    .param p0, "value"    # Landroid/util/TypedValue;
    .param p1, "navType"    # Landroidx/navigation/NavType;
    .param p2, "expectedNavType"    # Landroidx/navigation/NavType;
    .param p3, "argType"    # Ljava/lang/String;
    .param p4, "foundType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 260
    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    return-object v0
.end method

.method private inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "graphResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v0, v6, Landroidx/navigation/NavInflater;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v9

    .line 100
    .local v9, "navigator":Landroidx/navigation/Navigator;
    invoke-virtual {v9}, Landroidx/navigation/Navigator;->createDestination()Landroidx/navigation/NavDestination;

    move-result-object v10

    .line 102
    .local v10, "dest":Landroidx/navigation/NavDestination;
    iget-object v0, v6, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v0, v8}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x1

    .line 107
    .local v12, "innerDepth":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v13, v0

    .local v13, "type":I
    if-eq v0, v11, :cond_8

    .line 108
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    move v14, v0

    .local v14, "depth":I
    if-ge v0, v12, :cond_0

    const/4 v0, 0x3

    if-eq v13, v0, :cond_8

    .line 110
    :cond_0
    const/4 v0, 0x2

    if-eq v13, v0, :cond_1

    .line 111
    goto :goto_0

    .line 114
    :cond_1
    if-le v14, v12, :cond_2

    .line 115
    goto :goto_0

    .line 118
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 119
    .local v15, "name":Ljava/lang/String;
    const-string v0, "argument"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    move/from16 v5, p4

    invoke-direct {v6, v7, v10, v8, v5}, Landroidx/navigation/NavInflater;->inflateArgumentForDestination(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;I)V

    goto :goto_2

    .line 121
    :cond_3
    move/from16 v5, p4

    const-string v0, "deepLink"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    invoke-direct {v6, v7, v10, v8}, Landroidx/navigation/NavInflater;->inflateDeepLink(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 123
    :cond_4
    const-string v0, "action"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavInflater;->inflateAction(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;I)V

    goto :goto_2

    .line 125
    :cond_5
    const-string v0, "include"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, v10, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_6

    .line 126
    sget-object v0, Landroidx/navigation/R$styleable;->NavInclude:[I

    invoke-virtual {v7, v8, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/R$styleable;->NavInclude_graph:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 128
    .local v1, "id":I
    move-object v2, v10

    check-cast v2, Landroidx/navigation/NavGraph;

    invoke-virtual {v6, v1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "id":I
    goto :goto_1

    .line 130
    :cond_6
    instance-of v0, v10, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_7

    .line 131
    move-object v0, v10

    check-cast v0, Landroidx/navigation/NavGraph;

    invoke-direct/range {p0 .. p4}, Landroidx/navigation/NavInflater;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    goto :goto_2

    .line 130
    :cond_7
    :goto_1
    nop

    .line 133
    .end local v15    # "name":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 135
    .end local v14    # "depth":I
    :cond_8
    return-object v10
.end method

.method private inflateAction(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;I)V
    .locals 15
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "dest"    # Landroidx/navigation/NavDestination;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "graphResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 283
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    sget-object v2, Landroidx/navigation/R$styleable;->NavAction:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 284
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Landroidx/navigation/R$styleable;->NavAction_android_id:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 285
    .local v3, "id":I
    sget v5, Landroidx/navigation/R$styleable;->NavAction_destination:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 286
    .local v5, "destId":I
    new-instance v6, Landroidx/navigation/NavAction;

    invoke-direct {v6, v5}, Landroidx/navigation/NavAction;-><init>(I)V

    .line 288
    .local v6, "action":Landroidx/navigation/NavAction;
    new-instance v7, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v7}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 289
    .local v7, "builder":Landroidx/navigation/NavOptions$Builder;
    sget v8, Landroidx/navigation/R$styleable;->NavAction_launchSingleTop:I

    invoke-virtual {v2, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/navigation/NavOptions$Builder;->setLaunchSingleTop(Z)Landroidx/navigation/NavOptions$Builder;

    .line 290
    sget v8, Landroidx/navigation/R$styleable;->NavAction_popUpTo:I

    const/4 v9, -0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    sget v10, Landroidx/navigation/R$styleable;->NavAction_popUpToInclusive:I

    .line 291
    invoke-virtual {v2, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 290
    invoke-virtual {v7, v8, v4}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 292
    sget v4, Landroidx/navigation/R$styleable;->NavAction_enterAnim:I

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v7, v4}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 293
    sget v4, Landroidx/navigation/R$styleable;->NavAction_exitAnim:I

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v7, v4}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 294
    sget v4, Landroidx/navigation/R$styleable;->NavAction_popEnterAnim:I

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v7, v4}, Landroidx/navigation/NavOptions$Builder;->setPopEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 295
    sget v4, Landroidx/navigation/R$styleable;->NavAction_popExitAnim:I

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v7, v4}, Landroidx/navigation/NavOptions$Builder;->setPopExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 296
    invoke-virtual {v7}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/navigation/NavAction;->setNavOptions(Landroidx/navigation/NavOptions;)V

    .line 298
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v4, "args":Landroid/os/Bundle;
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 302
    .local v8, "innerDepth":I
    :goto_0
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    move v11, v10

    .local v11, "type":I
    if-eq v10, v9, :cond_5

    .line 303
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    move v12, v10

    .local v12, "depth":I
    if-ge v10, v8, :cond_1

    const/4 v10, 0x3

    if-eq v11, v10, :cond_0

    goto :goto_1

    :cond_0
    move-object v13, p0

    move/from16 v14, p5

    goto :goto_3

    .line 305
    :cond_1
    :goto_1
    const/4 v10, 0x2

    if-eq v11, v10, :cond_2

    .line 306
    goto :goto_0

    .line 309
    :cond_2
    if-le v12, v8, :cond_3

    .line 310
    goto :goto_0

    .line 312
    :cond_3
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 313
    .local v10, "name":Ljava/lang/String;
    const-string v13, "argument"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 314
    move-object v13, p0

    move/from16 v14, p5

    invoke-direct {p0, v0, v4, v1, v14}, Landroidx/navigation/NavInflater;->inflateArgumentForBundle(Landroid/content/res/Resources;Landroid/os/Bundle;Landroid/util/AttributeSet;I)V

    goto :goto_2

    .line 313
    :cond_4
    move-object v13, p0

    move/from16 v14, p5

    .line 316
    .end local v10    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 302
    .end local v12    # "depth":I
    :cond_5
    move-object v13, p0

    move/from16 v14, p5

    .line 317
    :goto_3
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 318
    invoke-virtual {v6, v4}, Landroidx/navigation/NavAction;->setDefaultArguments(Landroid/os/Bundle;)V

    .line 320
    :cond_6
    move-object/from16 v9, p2

    invoke-virtual {v9, v3, v6}, Landroidx/navigation/NavDestination;->putAction(ILandroidx/navigation/NavAction;)V

    .line 321
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    return-void
.end method

.method private inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;
    .locals 10
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "graphResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 168
    new-instance v0, Landroidx/navigation/NavArgument$Builder;

    invoke-direct {v0}, Landroidx/navigation/NavArgument$Builder;-><init>()V

    .line 169
    .local v0, "argumentBuilder":Landroidx/navigation/NavArgument$Builder;
    sget v1, Landroidx/navigation/R$styleable;->NavArgument_nullable:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavArgument$Builder;->setIsNullable(Z)Landroidx/navigation/NavArgument$Builder;

    .line 171
    sget-object v1, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    .line 172
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_0

    .line 173
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v3

    .line 174
    sget-object v3, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 177
    :cond_0
    const/4 v3, 0x0

    .line 178
    .local v3, "defaultValue":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 179
    .local v4, "navType":Landroidx/navigation/NavType;
    sget v5, Landroidx/navigation/R$styleable;->NavArgument_argType:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "argType":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 181
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/navigation/NavType;->fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 184
    :cond_1
    sget v6, Landroidx/navigation/R$styleable;->NavArgument_android_defaultValue:I

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 185
    sget-object v6, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    const-string v7, "\' for "

    const-string v8, "unsupported value \'"

    const/16 v9, 0x10

    if-ne v4, v6, :cond_4

    .line 186
    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 187
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 188
    :cond_2
    iget v6, v1, Landroid/util/TypedValue;->type:I

    if-ne v6, v9, :cond_3

    iget v6, v1, Landroid/util/TypedValue;->data:I

    if-nez v6, :cond_3

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 192
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v4}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Must be a reference to a resource."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_4
    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_6

    .line 198
    if-nez v4, :cond_5

    .line 199
    sget-object v4, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    .line 200
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 202
    :cond_5
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v4}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". You must use a \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    .line 205
    invoke-virtual {v7}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" type to reference other resources."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_6
    sget-object v6, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    if-ne v4, v6, :cond_7

    .line 209
    sget v2, Landroidx/navigation/R$styleable;->NavArgument_android_defaultValue:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 211
    :cond_7
    iget v6, v1, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_d

    const/4 v7, 0x4

    if-eq v6, v7, :cond_c

    const/4 v7, 0x5

    if-eq v6, v7, :cond_b

    const/16 v7, 0x12

    if-eq v6, v7, :cond_9

    .line 235
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-lt v2, v9, :cond_8

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v2, v6, :cond_8

    .line 237
    sget-object v2, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    const-string v6, "integer"

    invoke-static {v1, v4, v2, v5, v6}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 239
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 241
    :cond_8
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported argument type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/util/TypedValue;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_9
    sget-object v6, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    const-string v7, "boolean"

    invoke-static {v1, v4, v6, v5, v7}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 232
    iget v6, v1, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 233
    goto :goto_0

    .line 220
    :cond_b
    sget-object v2, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    const-string v6, "dimension"

    invoke-static {v1, v4, v2, v5, v6}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 222
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 223
    goto :goto_0

    .line 225
    :cond_c
    sget-object v2, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    const-string v6, "float"

    invoke-static {v1, v4, v2, v5, v6}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 227
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 228
    goto :goto_0

    .line 213
    :cond_d
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "stringValue":Ljava/lang/String;
    if-nez v4, :cond_e

    .line 215
    invoke-static {v2}, Landroidx/navigation/NavType;->inferFromValue(Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 217
    :cond_e
    invoke-virtual {v4, v2}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 248
    .end local v2    # "stringValue":Ljava/lang/String;
    :cond_f
    :goto_0
    if-eqz v3, :cond_10

    .line 249
    invoke-virtual {v0, v3}, Landroidx/navigation/NavArgument$Builder;->setDefaultValue(Ljava/lang/Object;)Landroidx/navigation/NavArgument$Builder;

    .line 251
    :cond_10
    if-eqz v4, :cond_11

    .line 252
    invoke-virtual {v0, v4}, Landroidx/navigation/NavArgument$Builder;->setType(Landroidx/navigation/NavType;)Landroidx/navigation/NavArgument$Builder;

    .line 254
    :cond_11
    invoke-virtual {v0}, Landroidx/navigation/NavArgument$Builder;->build()Landroidx/navigation/NavArgument;

    move-result-object v2

    return-object v2
.end method

.method private inflateArgumentForBundle(Landroid/content/res/Resources;Landroid/os/Bundle;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "graphResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 152
    sget-object v0, Landroidx/navigation/R$styleable;->NavArgument:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/R$styleable;->NavArgument_android_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 157
    invoke-direct {p0, v0, p1, p4}, Landroidx/navigation/NavInflater;->inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;

    move-result-object v2

    .line 158
    .local v2, "argument":Landroidx/navigation/NavArgument;
    invoke-virtual {v2}, Landroidx/navigation/NavArgument;->isDefaultValuePresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {v2, v1, p2}, Landroidx/navigation/NavArgument;->putDefaultValue(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    return-void

    .line 155
    .end local v2    # "argument":Landroidx/navigation/NavArgument;
    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Arguments must have a name"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private inflateArgumentForDestination(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "dest"    # Landroidx/navigation/NavDestination;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "graphResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 140
    sget-object v0, Landroidx/navigation/R$styleable;->NavArgument:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/R$styleable;->NavArgument_android_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0, v0, p1, p4}, Landroidx/navigation/NavInflater;->inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;

    move-result-object v2

    .line 146
    .local v2, "argument":Landroidx/navigation/NavArgument;
    invoke-virtual {p2, v1, v2}, Landroidx/navigation/NavDestination;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    return-void

    .line 143
    .end local v2    # "argument":Landroidx/navigation/NavArgument;
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Arguments must have a name"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private inflateDeepLink(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "dest"    # Landroidx/navigation/NavDestination;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 269
    sget-object v0, Landroidx/navigation/R$styleable;->NavDeepLink:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 270
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/R$styleable;->NavDeepLink_uri:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    iget-object v2, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "${applicationId}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p2, v1}, Landroidx/navigation/NavDestination;->addDeepLink(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    return-void

    .line 272
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Every <deepLink> must include an app:uri"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public inflate(I)Landroidx/navigation/NavGraph;
    .locals 9
    .param p1, "graphResId"    # I

    .line 66
    iget-object v0, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 68
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 71
    .local v2, "attrs":Landroid/util/AttributeSet;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    if-eq v4, v3, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    if-ne v4, v5, :cond_2

    .line 79
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "rootElement":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/navigation/NavInflater;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;

    move-result-object v5

    .line 81
    .local v5, "destination":Landroidx/navigation/NavDestination;
    instance-of v6, v5, Landroidx/navigation/NavGraph;

    if-eqz v6, :cond_1

    .line 85
    move-object v6, v5

    check-cast v6, Landroidx/navigation/NavGraph;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 85
    return-object v6

    .line 82
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Root element <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "> did not inflate into a NavGraph"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local p1    # "graphResId":I
    throw v6

    .line 76
    .end local v3    # "rootElement":Ljava/lang/String;
    .end local v5    # "destination":Landroidx/navigation/NavDestination;
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local p1    # "graphResId":I
    :cond_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No start tag found"

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local p1    # "graphResId":I
    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v4    # "type":I
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local p1    # "graphResId":I
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 86
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception inflating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local p1    # "graphResId":I
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local p1    # "graphResId":I
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3
.end method
