.class public Ltv/emby/embyatv/playback/StdVideoView;
.super Landroid/widget/VideoView;
.source "StdVideoView.java"

# interfaces
.implements Ltv/emby/embyatv/playback/IVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Ltv/emby/embyatv/playback/PlaybackOverlayActivity;)V
    .locals 0

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 31
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method
