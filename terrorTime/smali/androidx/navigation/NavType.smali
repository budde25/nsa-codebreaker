.class public abstract Landroidx/navigation/NavType;
.super Ljava/lang/Object;
.source "NavType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavType$SerializableArrayType;,
        Landroidx/navigation/NavType$EnumType;,
        Landroidx/navigation/NavType$SerializableType;,
        Landroidx/navigation/NavType$ParcelableArrayType;,
        Landroidx/navigation/NavType$ParcelableType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BoolArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[Z>;"
        }
    .end annotation
.end field

.field public static final BoolType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FloatArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final FloatType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final IntArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final IntType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LongArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final LongType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ReferenceType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final StringArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final StringType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNullableAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 268
    new-instance v0, Landroidx/navigation/NavType$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$1;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    .line 303
    new-instance v0, Landroidx/navigation/NavType$2;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$2;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    .line 338
    new-instance v0, Landroidx/navigation/NavType$3;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$3;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    .line 371
    new-instance v0, Landroidx/navigation/NavType$4;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$4;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    .line 411
    new-instance v0, Landroidx/navigation/NavType$5;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$5;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    .line 442
    new-instance v0, Landroidx/navigation/NavType$6;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$6;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    .line 474
    new-instance v0, Landroidx/navigation/NavType$7;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$7;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    .line 505
    new-instance v0, Landroidx/navigation/NavType$8;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$8;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    .line 544
    new-instance v0, Landroidx/navigation/NavType$9;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$9;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    .line 575
    new-instance v0, Landroidx/navigation/NavType$10;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$10;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    .line 607
    new-instance v0, Landroidx/navigation/NavType$11;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$11;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "nullableAllowed"    # Z

    .line 43
    .local p0, "this":Landroidx/navigation/NavType;, "Landroidx/navigation/NavType<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Landroidx/navigation/NavType;->mNullableAllowed:Z

    .line 45
    return-void
.end method

.method public static fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation

    .line 128
    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    return-object v0

    .line 130
    :cond_0
    sget-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    return-object v0

    .line 132
    :cond_1
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    return-object v0

    .line 134
    :cond_2
    sget-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    sget-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    return-object v0

    .line 136
    :cond_3
    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    return-object v0

    .line 138
    :cond_4
    sget-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    sget-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    return-object v0

    .line 140
    :cond_5
    sget-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    sget-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    return-object v0

    .line 142
    :cond_6
    sget-object v0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    sget-object v0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    return-object v0

    .line 144
    :cond_7
    sget-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 145
    sget-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    return-object v0

    .line 146
    :cond_8
    sget-object v0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 147
    sget-object v0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    return-object v0

    .line 148
    :cond_9
    sget-object v0, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 149
    sget-object v0, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    return-object v0

    .line 150
    :cond_a
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 153
    :try_start_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "className":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v0    # "className":Ljava/lang/String;
    :cond_b
    move-object v0, p0

    .line 159
    .restart local v0    # "className":Ljava/lang/String;
    :goto_0
    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 160
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 161
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 162
    .local v1, "clazz":Ljava/lang/Class;
    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 163
    new-instance v2, Landroidx/navigation/NavType$ParcelableArrayType;

    invoke-direct {v2, v1}, Landroidx/navigation/NavType$ParcelableArrayType;-><init>(Ljava/lang/Class;)V

    return-object v2

    .line 164
    :cond_c
    const-class v2, Ljava/io/Serializable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 165
    new-instance v2, Landroidx/navigation/NavType$SerializableArrayType;

    invoke-direct {v2, v1}, Landroidx/navigation/NavType$SerializableArrayType;-><init>(Ljava/lang/Class;)V

    return-object v2

    .line 167
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_d
    goto :goto_1

    .line 168
    :cond_e
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 169
    .restart local v1    # "clazz":Ljava/lang/Class;
    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 170
    new-instance v2, Landroidx/navigation/NavType$ParcelableType;

    invoke-direct {v2, v1}, Landroidx/navigation/NavType$ParcelableType;-><init>(Ljava/lang/Class;)V

    return-object v2

    .line 171
    :cond_f
    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 172
    new-instance v2, Landroidx/navigation/NavType$EnumType;

    invoke-direct {v2, v1}, Landroidx/navigation/NavType$EnumType;-><init>(Ljava/lang/Class;)V

    return-object v2

    .line 173
    :cond_10
    const-class v2, Ljava/io/Serializable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 174
    new-instance v2, Landroidx/navigation/NavType$SerializableType;

    invoke-direct {v2, v1}, Landroidx/navigation/NavType$SerializableType;-><init>(Ljava/lang/Class;)V

    return-object v2

    .line 177
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_11
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not Serializable or Parcelable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "type":Ljava/lang/String;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0    # "className":Ljava/lang/String;
    .restart local p0    # "type":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 183
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_12
    sget-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    return-object v0
.end method

.method static inferFromValue(Ljava/lang/String;)Landroidx/navigation/NavType;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 191
    :try_start_0
    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 197
    :try_start_1
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 199
    :catch_1
    move-exception v0

    .line 204
    :try_start_2
    sget-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    sget-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 206
    :catch_2
    move-exception v0

    .line 211
    :try_start_3
    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 213
    :catch_3
    move-exception v0

    .line 217
    sget-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    return-object v0
.end method

.method static inferFromValueType(Ljava/lang/Object;)Landroidx/navigation/NavType;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 223
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    return-object v0

    .line 225
    :cond_0
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 226
    sget-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    return-object v0

    .line 227
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 228
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    return-object v0

    .line 229
    :cond_2
    instance-of v0, p0, [J

    if-eqz v0, :cond_3

    .line 230
    sget-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    return-object v0

    .line 231
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 232
    sget-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    return-object v0

    .line 233
    :cond_4
    instance-of v0, p0, [F

    if-eqz v0, :cond_5

    .line 234
    sget-object v0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    return-object v0

    .line 235
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 236
    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    return-object v0

    .line 237
    :cond_6
    instance-of v0, p0, [Z

    if-eqz v0, :cond_7

    .line 238
    sget-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    return-object v0

    .line 239
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_f

    if-nez p0, :cond_8

    goto/16 :goto_0

    .line 241
    :cond_8
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 242
    sget-object v0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    return-object v0

    .line 243
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Landroid/os/Parcelable;

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 245
    new-instance v0, Landroidx/navigation/NavType$ParcelableArrayType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$ParcelableArrayType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 246
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/io/Serializable;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 248
    new-instance v0, Landroidx/navigation/NavType$SerializableArrayType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$SerializableArrayType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 249
    :cond_b
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_c

    .line 250
    new-instance v0, Landroidx/navigation/NavType$ParcelableType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$ParcelableType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 251
    :cond_c
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_d

    .line 252
    new-instance v0, Landroidx/navigation/NavType$EnumType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$EnumType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 253
    :cond_d
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_e

    .line 254
    new-instance v0, Landroidx/navigation/NavType$SerializableType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$SerializableType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 256
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported for navigation arguments."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_f
    :goto_0
    sget-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    return-object v0
.end method


# virtual methods
.method public abstract get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public isNullableAllowed()Z
    .locals 1

    .line 52
    .local p0, "this":Landroidx/navigation/NavType;, "Landroidx/navigation/NavType<TT;>;"
    iget-boolean v0, p0, Landroidx/navigation/NavType;->mNullableAllowed:Z

    return v0
.end method

.method parseAndPut(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 95
    .local p0, "this":Landroidx/navigation/NavType;, "Landroidx/navigation/NavType<TT;>;"
    invoke-virtual {p0, p3}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "parsedValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavType;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-object v0
.end method

.method public abstract parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 113
    .local p0, "this":Landroidx/navigation/NavType;, "Landroidx/navigation/NavType<TT;>;"
    invoke-virtual {p0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method