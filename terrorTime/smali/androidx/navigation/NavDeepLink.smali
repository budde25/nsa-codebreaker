.class Landroidx/navigation/NavDeepLink;
.super Ljava/lang/Object;
.source "NavDeepLink.java"


# static fields
.field private static final SCHEME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExactDeepLink:Z

.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "^[a-zA-Z]+[+\\w\\-.]*:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/navigation/NavDeepLink;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "uriRegex":Ljava/lang/StringBuilder;
    sget-object v1, Landroidx/navigation/NavDeepLink;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const-string v1, "http[s]?://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    const-string v1, "\\{(.+?)\\}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 49
    .local v1, "fillInPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 50
    .local v2, "matcher":Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 52
    .local v3, "appendPos":I
    const-string v4, ".*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 53
    .local v5, "exactDeepLink":Z
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 54
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "argName":Ljava/lang/String;
    iget-object v8, p0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v8, "(.+?)"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 60
    const/4 v5, 0x0

    .line 61
    .end local v7    # "argName":Ljava/lang/String;
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 64
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\E.*\\Q"

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "finalRegex":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iput-object v6, p0, Landroidx/navigation/NavDeepLink;->mPattern:Ljava/util/regex/Pattern;

    .line 71
    iput-boolean v5, p0, Landroidx/navigation/NavDeepLink;->mExactDeepLink:Z

    .line 72
    return-void
.end method


# virtual methods
.method getMatchingArguments(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;
    .locals 10
    .param p1, "deepLink"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 85
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/navigation/NavArgument;>;"
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 86
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 87
    return-object v2

    .line 89
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 91
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 92
    iget-object v5, p0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .local v5, "argumentName":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "value":Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavArgument;

    .line 95
    .local v7, "argument":Landroidx/navigation/NavArgument;
    if-eqz v7, :cond_1

    .line 96
    invoke-virtual {v7}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v8

    .line 98
    .local v8, "type":Landroidx/navigation/NavType;
    :try_start_0
    invoke-virtual {v8, v1, v5, v6}, Landroidx/navigation/NavType;->parseAndPut(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    nop

    .line 105
    .end local v8    # "type":Landroidx/navigation/NavType;
    goto :goto_1

    .line 99
    .restart local v8    # "type":Landroidx/navigation/NavType;
    :catch_0
    move-exception v9

    .line 103
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    return-object v2

    .line 106
    .end local v8    # "type":Landroidx/navigation/NavType;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v5    # "argumentName":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "argument":Landroidx/navigation/NavArgument;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v4    # "index":I
    :cond_2
    return-object v1
.end method

.method isExactDeepLink()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Landroidx/navigation/NavDeepLink;->mExactDeepLink:Z

    return v0
.end method

.method matches(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "deepLink"    # Landroid/net/Uri;

    .line 75
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
