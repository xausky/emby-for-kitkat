.class public Lmediabrowser/model/session/PlaybackStartInfo;
.super Lmediabrowser/model/session/PlaybackProgressInfo;
.source "PlaybackStartInfo.java"


# instance fields
.field private QueueableMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lmediabrowser/model/session/PlaybackProgressInfo;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/session/PlaybackStartInfo;->setQueueableMediaTypes(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getQueueableMediaTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackStartInfo;->QueueableMediaTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setQueueableMediaTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackStartInfo;->QueueableMediaTypes:Ljava/util/ArrayList;

    return-void
.end method
