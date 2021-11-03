.class public Lcom/google/android/exoplayer2/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "PlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlayerView$ShowBuffering;
    }
.end annotation


# static fields
.field private static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field private static final PICTURE_TYPE_NOT_SET:I = -0x1

.field public static final SHOW_BUFFERING_ALWAYS:I = 0x2

.field public static final SHOW_BUFFERING_NEVER:I = 0x0

.field public static final SHOW_BUFFERING_WHEN_PLAYING:I = 0x1

.field private static final SURFACE_TYPE_NONE:I = 0x0

.field private static final SURFACE_TYPE_SPHERICAL_GL_SURFACE_VIEW:I = 0x3

.field private static final SURFACE_TYPE_SURFACE_VIEW:I = 0x1

.field private static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x2

.field private static final SURFACE_TYPE_VIDEO_DECODER_GL_SURFACE_VIEW:I = 0x4


# instance fields
.field private final adOverlayFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final artworkView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bufferingView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

.field private final contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customErrorMessage:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultArtwork:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessageView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isTouching:Z

.field private keepContentOnPlayerReset:Z

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private player:Lcom/google/android/exoplayer2/Player;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private showBuffering:I

.field private final shutterView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final surfaceView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textureViewRotation:I

.field private useArtwork:Z

.field private useController:Z

.field private useSensorRotation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 330
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 339
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 341
    new-instance v3, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView$1;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 345
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 346
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 347
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 348
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 349
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 350
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 351
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 352
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 353
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 354
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 355
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 360
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->addView(Landroid/view/View;)V

    return-void

    .line 366
    :cond_1
    sget v3, Lcom/google/android/exoplayer2/ui/R$layout;->exo_player_view:I

    const/16 v5, 0x1388

    const/4 v6, 0x1

    .line 377
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 379
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView:[I

    invoke-virtual {v8, v2, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 381
    :try_start_0
    sget v9, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    .line 382
    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v8, v10, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 383
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_player_layout_id:I

    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 384
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_artwork:I

    invoke-virtual {v8, v11, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 385
    sget v12, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_default_artwork:I

    .line 386
    invoke-virtual {v8, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 387
    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_controller:I

    invoke-virtual {v8, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 388
    sget v14, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_surface_type:I

    invoke-virtual {v8, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 389
    sget v15, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_resize_mode:I

    invoke-virtual {v8, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 390
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_show_timeout:I

    .line 391
    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 392
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_hide_on_touch:I

    .line 393
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 394
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_auto_show:I

    invoke-virtual {v8, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 395
    sget v6, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_show_buffering:I

    move/from16 v16, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 396
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_keep_content_on_player_reset:I

    move/from16 v17, v4

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 397
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 399
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_hide_during_ads:I

    const/4 v4, 0x1

    .line 400
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 401
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_sensor_rotation:I

    move/from16 v18, v3

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z

    .line 402
    invoke-virtual {v8, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v19, v5

    move v5, v7

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v8, v18

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 405
    throw v0

    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v19, 0x1388

    .line 408
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v3, 0x40000

    .line 409
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDescendantFocusability(I)V

    .line 412
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_content_frame:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 413
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_3

    .line 414
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v3, v15}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    .line 418
    :cond_3
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_shutter:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 419
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v3, :cond_4

    if-eqz v9, :cond_4

    .line 420
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 424
    :cond_4
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_5

    if-eqz v14, :cond_5

    .line 425
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    packed-switch v14, :pswitch_data_0

    .line 442
    new-instance v7, Landroid/view/SurfaceView;

    invoke-direct {v7, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    .line 439
    :pswitch_0
    new-instance v7, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    .line 433
    :pswitch_1
    new-instance v7, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 434
    iget-object v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;)V

    .line 435
    iget-boolean v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    .line 436
    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    .line 430
    :pswitch_2
    new-instance v7, Landroid/view/TextureView;

    invoke-direct {v7, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 445
    :goto_2
    iget-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 448
    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 452
    :goto_3
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_ad_overlay:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 455
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_overlay:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 458
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_artwork:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v11, :cond_6

    .line 459
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eqz v12, :cond_7

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 465
    :cond_7
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitles:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 466
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v3, :cond_8

    .line 467
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 468
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 472
    :cond_8
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_buffering:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 473
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz v3, :cond_9

    .line 474
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 476
    :cond_9
    iput v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    .line 479
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_error_message:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 480
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    .line 481
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    :cond_a
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 486
    sget v6, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_b

    .line 488
    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v9, 0x0

    goto :goto_5

    :cond_b
    if-eqz v6, :cond_c

    .line 492
    new-instance v3, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v0, v7, v9, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 493
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setId(I)V

    .line 494
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 496
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 497
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 498
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 500
    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 502
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_d

    move/from16 v0, v19

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    iput v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 503
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    .line 504
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    .line 505
    iput-boolean v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v13, :cond_e

    .line 506
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_e

    const/4 v9, 0x1

    :cond_e
    iput-boolean v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    .line 509
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_f

    .line 510
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 265
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->toggleControllerVisibility()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)I
    .locals 0

    .line 265
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ui/PlayerView;I)I
    .locals 0

    .line 265
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    return p1
.end method

.method static synthetic access$400(Landroid/view/TextureView;I)V
    .locals 0

    .line 265
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method private static applyTextureViewRotation(Landroid/view/TextureView;I)V
    .locals 6

    .line 1467
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1468
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1469
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    div-float v4, v2, v4

    int-to-float p1, p1

    .line 1473
    invoke-virtual {v0, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1476
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1477
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1478
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1480
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    .line 1481
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v2, p1

    .line 1479
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1485
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private closeShutter()V
    .locals 2

    .line 1401
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1

    .line 1456
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1457
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private static configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1451
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1452
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private hideArtwork()V
    .locals 2

    .line 1394
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1396
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isDpadKey(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isPlayingAd()Z
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeShowController(Z)V
    .locals 2

    .line 1264
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    return-void

    .line 1267
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1268
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1269
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1271
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController(Z)V

    :cond_3
    return-void
.end method

.method private setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1351
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1352
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    .line 1355
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v6, :cond_0

    .line 1356
    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 1357
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    goto :goto_1

    .line 1358
    :cond_0
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    if-eqz v6, :cond_3

    .line 1359
    check-cast v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    .line 1360
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    :goto_1
    const/4 v7, 0x3

    if-eq v3, v0, :cond_1

    if-ne v5, v7, :cond_3

    .line 1366
    :cond_1
    array-length v3, v6

    invoke-static {v6, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1367
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-ne v5, v7, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v4
.end method

.method private setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1380
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1381
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1384
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V

    .line 1385
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1386
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private static setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .locals 0

    .line 1462
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method private shouldShowControllerIndefinitely()Z
    .locals 3

    .line 1277
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 1281
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1284
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private showController(Z)V
    .locals 1

    .line 1288
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowTimeoutMs(I)V

    .line 1292
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->show()V

    return-void
.end method

.method public static switchTargetView(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ui/PlayerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/ui/PlayerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 531
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 534
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_2
    return-void
.end method

.method private toggleControllerVisibility()Z
    .locals 2

    .line 1251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1255
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_0

    .line 1256
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_2

    .line 1257
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateBuffering()V
    .locals 4

    .line 1407
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1408
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1410
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1412
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1413
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updateContentDescription()V
    .locals 2

    .line 1436
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1438
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1439
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_1

    .line 1441
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1439
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1445
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1437
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateErrorMessage()V
    .locals 3

    .line 1418
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1419
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1421
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1425
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eqz v2, :cond_2

    .line 1426
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/util/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1427
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1430
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateForCurrentTrackSelections(Z)V
    .locals 5

    .line 1300
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_8

    .line 1301
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 1309
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_1

    .line 1311
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    .line 1314
    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1315
    :goto_0
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v2, v3, :cond_3

    .line 1316
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->getRendererType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1319
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1325
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    .line 1327
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 1328
    :goto_1
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v0, v2, :cond_6

    .line 1329
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    .line 1331
    :goto_2
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1332
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v4, :cond_4

    .line 1333
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1339
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 1344
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    return-void

    .line 1302
    :cond_8
    :goto_3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_9

    .line 1303
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    .line 1304
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    :cond_9
    return-void
.end method

.method private useArtwork()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "artworkView"
        }
        result = true
    .end annotation

    .line 1243
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private useController()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "controller"
        }
        result = true
    .end annotation

    .line 1234
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 830
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 834
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isDpadKey(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 836
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 838
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_1

    .line 840
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 845
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 847
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 843
    :cond_4
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    :goto_1
    return v2
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 860
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAdOverlayViews()[Landroid/view/View;
    .locals 2

    .line 1220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v1, :cond_1

    .line 1225
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    .line 1227
    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .line 1214
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    .line 936
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    .line 916
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .line 895
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1114
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1125
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1

    .line 648
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    return v0
.end method

.method public getUseController()Z
    .locals 1

    .line 698
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1102
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    :cond_0
    return-void
.end method

.method public isControllerVisible()Z
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    .line 1205
    instance-of p3, p3, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->onResume()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1130
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1133
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1138
    :pswitch_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->isTouching:Z

    if-eqz p1, :cond_1

    .line 1139
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->isTouching:Z

    .line 1140
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->performClick()Z

    return v0

    :cond_1
    return v1

    .line 1135
    :pswitch_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->isTouching:Z

    return v0

    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1157
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1160
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1151
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 1152
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->toggleControllerVisibility()Z

    move-result v0

    return v0
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1079
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ControlDispatcher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 999
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 947
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 957
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    .line 927
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 908
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController()V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 968
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    if-ne v0, p1, :cond_0

    return-void

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    .line 975
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    if-eqz p1, :cond_2

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    :cond_2
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 823
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 824
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 825
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 679
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 680
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v0

    .line 679
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 690
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 691
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 692
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_0
    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/ErrorMessageProvider;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eq v0, p1, :cond_0

    .line 811
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    .line 812
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    :cond_0
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 1
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1067
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setFastForwardIncrementMs(I)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 754
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_0

    .line 755
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    const/4 p1, 0x0

    .line 756
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/PlaybackPreparer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 988
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 6
    .param p1    # Lcom/google/android/exoplayer2/Player;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 558
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_2

    .line 560
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 559
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_3

    return-void

    .line 564
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 566
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 567
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 569
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 570
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/TextureView;

    if-eqz v5, :cond_4

    .line 571
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v5, Landroid/view/TextureView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_3

    .line 572
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v5, v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v5, :cond_5

    .line 573
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v4, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V

    goto :goto_3

    .line 574
    :cond_5
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v5, v5, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    if-eqz v5, :cond_6

    .line 575
    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoDecoderOutputBufferRenderer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;)V

    goto :goto_3

    .line 576
    :cond_6
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/SurfaceView;

    if-eqz v5, :cond_7

    .line 577
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v5, Landroid/view/SurfaceView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 580
    :cond_7
    :goto_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 582
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player$TextComponent;->removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 585
    :cond_8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 586
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 589
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_a

    .line 590
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 592
    :cond_a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    .line 593
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    .line 594
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    if-eqz p1, :cond_11

    .line 596
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 598
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_b

    .line 599
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v1, Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_4

    .line 600
    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_c

    .line 601
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V

    goto :goto_4

    .line 602
    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    if-eqz v1, :cond_d

    .line 603
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    .line 604
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->getVideoDecoderOutputBufferRenderer()Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    move-result-object v1

    .line 603
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoDecoderOutputBufferRenderer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;)V

    goto :goto_4

    .line 605
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_e

    .line 606
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 608
    :cond_e
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 610
    :cond_f
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 612
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$TextComponent;->addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 614
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 615
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_5

    .line 617
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    :goto_5
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRewindIncrementMs(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .line 797
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    if-eq v0, p1, :cond_0

    .line 798
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    .line 799
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    :cond_0
    return-void
.end method

.method public setShowBuffering(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 785
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setShowBuffering(I)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 658
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eq v1, p1, :cond_2

    .line 659
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    .line 660
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_2
    return-void
.end method

.method public setUseController(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 708
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 709
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 712
    :cond_2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    .line 713
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 714
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_2

    .line 715
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_4

    .line 716
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    .line 717
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 719
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z

    if-eq v0, p1, :cond_0

    .line 769
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z

    .line 770
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 623
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showController()V
    .locals 1

    .line 876
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController(Z)V

    return-void
.end method
