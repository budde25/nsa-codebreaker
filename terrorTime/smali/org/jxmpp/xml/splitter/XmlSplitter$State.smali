.class final enum Lorg/jxmpp/xml/splitter/XmlSplitter$State;
.super Ljava/lang/Enum;
.source "XmlSplitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jxmpp/xml/splitter/XmlSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jxmpp/xml/splitter/XmlSplitter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum AFTER_ATTRIBUTE_EQUALS:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum AFTER_COMMENT:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum AFTER_COMMENT_BANG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum AFTER_COMMENT_CLOSING_DASH1:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum AFTER_COMMENT_CLOSING_DASH2:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum AFTER_COMMENT_DASH1:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum AFTER_COMMENT_DASH2:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum AFTER_START_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum AFTER_TAG_RIGHT_ANGLE_BRACKET:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum IN_ATTRIBUTE_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum IN_ATTRIBUTE_VALUE:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum IN_EMPTY_TAG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum IN_END_TAG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum IN_PROCESSING_INSTRUCTION_OR_DECLARATION:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum IN_PROCESSING_INSTRUCTION_OR_DECLARATION_PSEUDO_ATTRIBUTE_VALUE:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum IN_PROCESSING_INSTRUCTION_OR_DECLARATION_QUESTION_MARK:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum IN_TAG_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field public static final enum START:Lorg/jxmpp/xml/splitter/XmlSplitter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 36
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->START:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 37
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/4 v2, 0x1

    const-string v3, "AFTER_TAG_RIGHT_ANGLE_BRACKET"

    invoke-direct {v0, v3, v2}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_TAG_RIGHT_ANGLE_BRACKET:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 38
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/4 v3, 0x2

    const-string v4, "IN_TAG_NAME"

    invoke-direct {v0, v4, v3}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_TAG_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 39
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/4 v4, 0x3

    const-string v5, "IN_END_TAG"

    invoke-direct {v0, v5, v4}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_END_TAG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 40
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/4 v5, 0x4

    const-string v6, "AFTER_START_NAME"

    invoke-direct {v0, v6, v5}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_START_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 41
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/4 v6, 0x5

    const-string v7, "IN_EMPTY_TAG"

    invoke-direct {v0, v7, v6}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_EMPTY_TAG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 42
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/4 v7, 0x6

    const-string v8, "IN_ATTRIBUTE_NAME"

    invoke-direct {v0, v8, v7}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_ATTRIBUTE_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 43
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/4 v8, 0x7

    const-string v9, "AFTER_ATTRIBUTE_EQUALS"

    invoke-direct {v0, v9, v8}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_ATTRIBUTE_EQUALS:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 44
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v9, 0x8

    const-string v10, "IN_ATTRIBUTE_VALUE"

    invoke-direct {v0, v10, v9}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_ATTRIBUTE_VALUE:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 45
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v10, 0x9

    const-string v11, "AFTER_COMMENT_BANG"

    invoke-direct {v0, v11, v10}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_BANG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 46
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v11, 0xa

    const-string v12, "AFTER_COMMENT_DASH1"

    invoke-direct {v0, v12, v11}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_DASH1:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 47
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v12, 0xb

    const-string v13, "AFTER_COMMENT_DASH2"

    invoke-direct {v0, v13, v12}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_DASH2:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 48
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v13, 0xc

    const-string v14, "AFTER_COMMENT"

    invoke-direct {v0, v14, v13}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 49
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v14, 0xd

    const-string v15, "AFTER_COMMENT_CLOSING_DASH1"

    invoke-direct {v0, v15, v14}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_CLOSING_DASH1:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 50
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v15, 0xe

    const-string v14, "AFTER_COMMENT_CLOSING_DASH2"

    invoke-direct {v0, v14, v15}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_CLOSING_DASH2:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 51
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const-string v14, "IN_PROCESSING_INSTRUCTION_OR_DECLARATION"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 52
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const-string v14, "IN_PROCESSING_INSTRUCTION_OR_DECLARATION_PSEUDO_ATTRIBUTE_VALUE"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION_PSEUDO_ATTRIBUTE_VALUE:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 53
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const-string v14, "IN_PROCESSING_INSTRUCTION_OR_DECLARATION_QUESTION_MARK"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION_QUESTION_MARK:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 35
    const/16 v0, 0x12

    new-array v0, v0, [Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    sget-object v14, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->START:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v14, v0, v1

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_TAG_RIGHT_ANGLE_BRACKET:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_TAG_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_END_TAG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_START_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_EMPTY_TAG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_ATTRIBUTE_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_ATTRIBUTE_EQUALS:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_ATTRIBUTE_VALUE:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_BANG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_DASH1:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_DASH2:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    aput-object v1, v0, v13

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_CLOSING_DASH1:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_CLOSING_DASH2:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION_PSEUDO_ATTRIBUTE_VALUE:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION_QUESTION_MARK:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->$VALUES:[Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jxmpp/xml/splitter/XmlSplitter$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    return-object v0
.end method

.method public static values()[Lorg/jxmpp/xml/splitter/XmlSplitter$State;
    .locals 1

    .line 35
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->$VALUES:[Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    invoke-virtual {v0}, [Lorg/jxmpp/xml/splitter/XmlSplitter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    return-object v0
.end method
