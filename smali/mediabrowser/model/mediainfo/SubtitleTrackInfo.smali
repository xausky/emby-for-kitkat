.class public Lmediabrowser/model/mediainfo/SubtitleTrackInfo;
.super Ljava/lang/Object;
.source "SubtitleTrackInfo.java"


# instance fields
.field private TrackEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/mediainfo/SubtitleTrackEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/mediainfo/SubtitleTrackInfo;->setTrackEvents(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getTrackEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/mediainfo/SubtitleTrackEvent;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lmediabrowser/model/mediainfo/SubtitleTrackInfo;->TrackEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setTrackEvents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/mediainfo/SubtitleTrackEvent;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lmediabrowser/model/mediainfo/SubtitleTrackInfo;->TrackEvents:Ljava/util/ArrayList;

    return-void
.end method
