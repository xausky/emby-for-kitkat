.class public Lmediabrowser/model/dto/SubtitleSearchResult;
.super Ljava/lang/Object;
.source "SubtitleSearchResult.java"


# instance fields
.field private Author:Ljava/lang/String;

.field private Comment:Ljava/lang/String;

.field private DownloadCount:I

.field private Format:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private IsForced:Z

.field private IsHashMatch:Z

.field private Name:Ljava/lang/String;

.field private ThreeLetterISOLanguageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->Author:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->Comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()I
    .locals 1

    .line 63
    iget v0, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->DownloadCount:I

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->Format:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getThreeLetterISOLanguageName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->ThreeLetterISOLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public isForced()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->IsForced:Z

    return v0
.end method

.method public isHashMatch()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->IsHashMatch:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->Author:Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->Comment:Ljava/lang/String;

    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0

    .line 67
    iput p1, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->DownloadCount:I

    return-void
.end method

.method public setForced(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->IsForced:Z

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->Format:Ljava/lang/String;

    return-void
.end method

.method public setHashMatch(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->IsHashMatch:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->Id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->Name:Ljava/lang/String;

    return-void
.end method

.method public setThreeLetterISOLanguageName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lmediabrowser/model/dto/SubtitleSearchResult;->ThreeLetterISOLanguageName:Ljava/lang/String;

    return-void
.end method
