.class public Lmediabrowser/model/livetv/SeriesTimerInfoDto;
.super Lmediabrowser/model/livetv/BaseTimerInfoDto;
.source "SeriesTimerInfoDto.java"


# instance fields
.field private DayPattern:Lmediabrowser/model/livetv/DayPattern;

.field private Days:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ImageTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lmediabrowser/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private KeepUpTo:I

.field private ParentPrimaryImageItemId:Ljava/lang/String;

.field private ParentPrimaryImageTag:Ljava/lang/String;

.field private ParentThumbImageTag:Ljava/lang/String;

.field private ParentThumbItemId:Ljava/lang/String;

.field private RecordAnyChannel:Z

.field private RecordAnyTime:Z

.field private RecordNewOnly:Z

.field private SkipEpisodesInLibrary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lmediabrowser/model/livetv/BaseTimerInfoDto;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->DayPattern:Lmediabrowser/model/livetv/DayPattern;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->setImageTags(Ljava/util/HashMap;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->setDays(Ljava/util/ArrayList;)V

    const-string v0, "SeriesTimer"

    .line 16
    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->setType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getDayPattern()Lmediabrowser/model/livetv/DayPattern;
    .locals 1

    .line 107
    iget-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->DayPattern:Lmediabrowser/model/livetv/DayPattern;

    return-object v0
.end method

.method public final getDays()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->Days:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getHasPrimaryImage()Z
    .locals 2

    .line 138
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getImageTags()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lmediabrowser/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->ImageTags:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getKeepUpTo()I
    .locals 1

    .line 62
    iget v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->KeepUpTo:I

    return v0
.end method

.method public final getParentPrimaryImageItemId()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->ParentPrimaryImageItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->ParentPrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentThumbImageTag()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->ParentThumbImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentThumbItemId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->ParentThumbItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordAnyChannel()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->RecordAnyChannel:Z

    return v0
.end method

.method public final getRecordAnyTime()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->RecordAnyTime:Z

    return v0
.end method

.method public final getRecordNewOnly()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->RecordNewOnly:Z

    return v0
.end method

.method public final getSkipEpisodesInLibrary()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->SkipEpisodesInLibrary:Z

    return v0
.end method

.method public final setDayPattern(Lmediabrowser/model/livetv/DayPattern;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->DayPattern:Lmediabrowser/model/livetv/DayPattern;

    return-void
.end method

.method public final setDays(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->Days:Ljava/util/ArrayList;

    return-void
.end method

.method public final setImageTags(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lmediabrowser/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->ImageTags:Ljava/util/HashMap;

    return-void
.end method

.method public final setKeepUpTo(I)V
    .locals 0

    .line 66
    iput p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->KeepUpTo:I

    return-void
.end method

.method public final setParentPrimaryImageItemId(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->ParentPrimaryImageItemId:Ljava/lang/String;

    return-void
.end method

.method public final setParentPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->ParentPrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setParentThumbImageTag(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->ParentThumbImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setParentThumbItemId(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->ParentThumbItemId:Ljava/lang/String;

    return-void
.end method

.method public final setRecordAnyChannel(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->RecordAnyChannel:Z

    return-void
.end method

.method public final setRecordAnyTime(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->RecordAnyTime:Z

    return-void
.end method

.method public final setRecordNewOnly(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->RecordNewOnly:Z

    return-void
.end method

.method public final setSkipEpisodesInLibrary(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->SkipEpisodesInLibrary:Z

    return-void
.end method
