.class public final Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateUsed;
.super Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$JingleS5BCandidateTransportInfo;
.source "JingleS5BTransportInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CandidateUsed"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "candidate-used"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "candidateId"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$JingleS5BCandidateTransportInfo;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "candidate-used"

    return-object v0
.end method
