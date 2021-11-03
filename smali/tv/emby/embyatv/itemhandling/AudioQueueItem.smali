.class public Ltv/emby/embyatv/itemhandling/AudioQueueItem;
.super Ltv/emby/embyatv/itemhandling/BaseRowItem;
.source "AudioQueueItem.java"


# direct methods
.method public constructor <init>(ILmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/AudioQueueItem;->staticHeight:Z

    return-void
.end method
