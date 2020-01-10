.class public Lorg/minidns/hla/ResolverResult;
.super Ljava/lang/Object;
.source "ResolverResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/minidns/record/Data;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final answer:Lorg/minidns/dnsmessage/DnsMessage;

.field private final data:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation
.end field

.field private dnssecResultNotAuthenticException:Lorg/minidns/dnssec/DnssecResultNotAuthenticException;

.field private final isAuthenticData:Z

.field protected final question:Lorg/minidns/dnsmessage/Question;

.field private resolutionUnsuccessfulException:Lorg/minidns/hla/ResolutionUnsuccessfulException;

.field private final responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field protected final result:Lorg/minidns/dnsqueryresult/DnsQueryResult;

.field protected final unverifiedReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/Set;)V
    .locals 3
    .param p1, "question"    # Lorg/minidns/dnsmessage/Question;
    .param p2, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/Question;",
            "Lorg/minidns/dnsqueryresult/DnsQueryResult;",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/MiniDnsException$NullResultException;
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    .local p3, "unverifiedReasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p2, :cond_2

    .line 42
    iput-object p2, p0, Lorg/minidns/hla/ResolverResult;->result:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 44
    iget-object v0, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 45
    .local v0, "answer":Lorg/minidns/dnsmessage/DnsMessage;
    iput-object p1, p0, Lorg/minidns/hla/ResolverResult;->question:Lorg/minidns/dnsmessage/Question;

    .line 46
    iget-object v1, v0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    iput-object v1, p0, Lorg/minidns/hla/ResolverResult;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 47
    iput-object v0, p0, Lorg/minidns/hla/ResolverResult;->answer:Lorg/minidns/dnsmessage/DnsMessage;

    .line 49
    invoke-virtual {v0, p1}, Lorg/minidns/dnsmessage/DnsMessage;->getAnswersFor(Lorg/minidns/dnsmessage/Question;)Ljava/util/Set;

    move-result-object v1

    .line 50
    .local v1, "r":Ljava/util/Set;, "Ljava/util/Set<TD;>;"
    if-nez v1, :cond_0

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/minidns/hla/ResolverResult;->data:Ljava/util/Set;

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/minidns/hla/ResolverResult;->data:Ljava/util/Set;

    .line 56
    :goto_0
    if-nez p3, :cond_1

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/minidns/hla/ResolverResult;->unverifiedReasons:Ljava/util/Set;

    .line 58
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/minidns/hla/ResolverResult;->isAuthenticData:Z

    goto :goto_1

    .line 60
    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/minidns/hla/ResolverResult;->unverifiedReasons:Ljava/util/Set;

    .line 61
    iget-object v2, p0, Lorg/minidns/hla/ResolverResult;->unverifiedReasons:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    iput-boolean v2, p0, Lorg/minidns/hla/ResolverResult;->isAuthenticData:Z

    .line 63
    :goto_1
    return-void

    .line 39
    .end local v0    # "answer":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v1    # "r":Ljava/util/Set;, "Ljava/util/Set<TD;>;"
    :cond_2
    new-instance v0, Lorg/minidns/MiniDnsException$NullResultException;

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/Question;->asMessageBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->build()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/minidns/MiniDnsException$NullResultException;-><init>(Lorg/minidns/dnsmessage/DnsMessage;)V

    throw v0
.end method


# virtual methods
.method public getAnswers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->throwIseIfErrorResponse()V

    .line 71
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->data:Ljava/util/Set;

    return-object v0
.end method

.method public getAnswersOrEmptySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->data:Ljava/util/Set;

    return-object v0
.end method

.method public getDnsQueryResult()Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 1

    .line 144
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->result:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    return-object v0
.end method

.method public getDnssecResultNotAuthenticException()Lorg/minidns/dnssec/DnssecResultNotAuthenticException;
    .locals 2

    .line 121
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->wasSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 122
    return-object v1

    .line 123
    :cond_0
    iget-boolean v0, p0, Lorg/minidns/hla/ResolverResult;->isAuthenticData:Z

    if-eqz v0, :cond_1

    .line 124
    return-object v1

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->dnssecResultNotAuthenticException:Lorg/minidns/dnssec/DnssecResultNotAuthenticException;

    if-nez v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->getUnverifiedReasons()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/minidns/dnssec/DnssecResultNotAuthenticException;->from(Ljava/util/Set;)Lorg/minidns/dnssec/DnssecResultNotAuthenticException;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/hla/ResolverResult;->dnssecResultNotAuthenticException:Lorg/minidns/dnssec/DnssecResultNotAuthenticException;

    .line 130
    :cond_2
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->dnssecResultNotAuthenticException:Lorg/minidns/dnssec/DnssecResultNotAuthenticException;

    return-object v0
.end method

.method public getQuestion()Lorg/minidns/dnsmessage/Question;
    .locals 1

    .line 98
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->question:Lorg/minidns/dnsmessage/Question;

    return-object v0
.end method

.method public getRawAnswer()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    .line 140
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->answer:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method

.method public getResolutionUnsuccessfulException()Lorg/minidns/hla/ResolutionUnsuccessfulException;
    .locals 3

    .line 109
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->wasSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->resolutionUnsuccessfulException:Lorg/minidns/hla/ResolutionUnsuccessfulException;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lorg/minidns/hla/ResolutionUnsuccessfulException;

    iget-object v1, p0, Lorg/minidns/hla/ResolverResult;->question:Lorg/minidns/dnsmessage/Question;

    iget-object v2, p0, Lorg/minidns/hla/ResolverResult;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-direct {v0, v1, v2}, Lorg/minidns/hla/ResolutionUnsuccessfulException;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;)V

    iput-object v0, p0, Lorg/minidns/hla/ResolverResult;->resolutionUnsuccessfulException:Lorg/minidns/hla/ResolutionUnsuccessfulException;

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->resolutionUnsuccessfulException:Lorg/minidns/hla/ResolutionUnsuccessfulException;

    return-object v0
.end method

.method public getResponseCode()Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    .locals 1

    .line 79
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    return-object v0
.end method

.method public getUnverifiedReasons()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->throwIseIfErrorResponse()V

    .line 94
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->unverifiedReasons:Ljava/util/Set;

    return-object v0
.end method

.method hasUnverifiedReasons()Z
    .locals 1

    .line 169
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->unverifiedReasons:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAuthenticData()Z
    .locals 1

    .line 83
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->throwIseIfErrorResponse()V

    .line 84
    iget-boolean v0, p0, Lorg/minidns/hla/ResolverResult;->isAuthenticData:Z

    return v0
.end method

.method public throwIfErrorResponse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/hla/ResolutionUnsuccessfulException;
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->getResolutionUnsuccessfulException()Lorg/minidns/hla/ResolutionUnsuccessfulException;

    move-result-object v0

    .line 103
    .local v0, "resolutionUnsuccessfulException":Lorg/minidns/hla/ResolutionUnsuccessfulException;
    if-nez v0, :cond_0

    .line 104
    return-void

    .line 103
    :cond_0
    throw v0
.end method

.method protected throwIseIfErrorResponse()V
    .locals 3

    .line 173
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->getResolutionUnsuccessfulException()Lorg/minidns/hla/ResolutionUnsuccessfulException;

    move-result-object v0

    .line 174
    .local v0, "resolutionUnsuccessfulException":Lorg/minidns/hla/ResolutionUnsuccessfulException;
    if-nez v0, :cond_0

    .line 177
    return-void

    .line 175
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can not perform operation because the DNS resolution was unsuccessful"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 149
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    const-string v2, "Question: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/hla/ResolverResult;->question:Lorg/minidns/dnsmessage/Question;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    const-string v2, "Response Code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/hla/ResolverResult;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    iget-object v2, p0, Lorg/minidns/hla/ResolverResult;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    sget-object v3, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    if-ne v2, v3, :cond_2

    .line 156
    iget-boolean v2, p0, Lorg/minidns/hla/ResolverResult;->isAuthenticData:Z

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "Results verified via DNSSEC\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->hasUnverifiedReasons()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lorg/minidns/hla/ResolverResult;->unverifiedReasons:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    :cond_1
    iget-object v1, p0, Lorg/minidns/hla/ResolverResult;->answer:Lorg/minidns/dnsmessage/DnsMessage;

    iget-object v1, v1, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public wasSuccessful()Z
    .locals 2

    .line 66
    .local p0, "this":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<TD;>;"
    iget-object v0, p0, Lorg/minidns/hla/ResolverResult;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    sget-object v1, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
