.class public Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/bmartel/youtubetv/media/MediaPlayerGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaData"
.end annotation


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mCover:Landroid/graphics/drawable/Drawable;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 513
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->mCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public setCover(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->mCover:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->mTitle:Ljava/lang/String;

    return-void
.end method
