.class synthetic Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mediabrowser$model$session$PlayMethod:[I

.field static final synthetic $SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2164
    invoke-static {}, Lmediabrowser/model/session/PlayMethod;->values()[Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$mediabrowser$model$session$PlayMethod:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$mediabrowser$model$session$PlayMethod:[I

    sget-object v2, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v2}, Lmediabrowser/model/session/PlayMethod;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$mediabrowser$model$session$PlayMethod:[I

    sget-object v3, Lmediabrowser/model/session/PlayMethod;->DirectStream:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v3}, Lmediabrowser/model/session/PlayMethod;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$mediabrowser$model$session$PlayMethod:[I

    sget-object v4, Lmediabrowser/model/session/PlayMethod;->DirectPlay:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v4}, Lmediabrowser/model/session/PlayMethod;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 635
    :catch_2
    invoke-static {}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->values()[Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    :try_start_3
    sget-object v3, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v4, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Chapter:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvProgram:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvChannel:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Person:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
