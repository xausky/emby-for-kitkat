.class public Lfr/bmartel/youtubetv/YoutubeTvView;
.super Landroid/widget/FrameLayout;
.source "YoutubeTvView.java"

# interfaces
.implements Lfr/bmartel/youtubetv/IYoutubeApi;


# static fields
.field private static final MEDIA_SESSION_TAG:Ljava/lang/String; = "fr.bmartel.youtubetv.MediaSession"

.field private static final TAG:Ljava/lang/String; = "YoutubeTvView"


# instance fields
.field private mAutoPlay:I

.field private mAutohide:Lfr/bmartel/youtubetv/model/VideoAutoHide;

.field private mBlock:Landroid/os/ConditionVariable;

.field private mBorderColor:I

.field private mBorderWidth:I

.field private mClosedCaptionLangPref:Ljava/lang/String;

.field private mClosedCaptions:I

.field private mDebug:I

.field private mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

.field private mJavascriptTimeout:I

.field private mLoadBackgroundColor:I

.field private final mLock:Ljava/lang/Object;

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private mPlayerLanguage:Ljava/lang/String;

.field private mPlayerListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfr/bmartel/youtubetv/listener/IPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistId:Ljava/lang/String;

.field private mShowBorder:Z

.field private mShowControls:Lfr/bmartel/youtubetv/model/VideoControls;

.field private mShowNowPlayingCard:Z

.field private mShowRelatedVideos:I

.field private mShowVideoInfo:I

.field private mThumbnailQuality:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

.field private mUserAgent:Lfr/bmartel/youtubetv/model/UserAgents;

.field private mVideoAnnotation:I

.field private mVideoId:Ljava/lang/String;

.field private mVideoQuality:Lfr/bmartel/youtubetv/model/VideoQuality;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 129
    iput p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLoadBackgroundColor:I

    .line 184
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    const/16 p1, 0x5dc

    .line 189
    iput p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    .line 194
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlayerListenerList:Ljava/util/List;

    .line 199
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    .line 223
    invoke-direct {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 233
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLoadBackgroundColor:I

    .line 184
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    const/16 v0, 0x5dc

    .line 189
    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlayerListenerList:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    .line 234
    invoke-direct {p0, p1, p2}, Lfr/bmartel/youtubetv/YoutubeTvView;->processAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    invoke-direct {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 246
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 129
    iput p3, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLoadBackgroundColor:I

    .line 184
    new-instance p3, Landroid/os/ConditionVariable;

    invoke-direct {p3}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p3, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    const/16 p3, 0x5dc

    .line 189
    iput p3, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    .line 194
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlayerListenerList:Ljava/util/List;

    .line 199
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    .line 247
    invoke-direct {p0, p1, p2}, Lfr/bmartel/youtubetv/YoutubeTvView;->processAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 248
    invoke-direct {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->initView()V

    return-void
.end method

.method private init()V
    .locals 13

    .line 323
    invoke-direct {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->setBorder()V

    .line 325
    sget v0, Lfr/bmartel/youtubetv/R$id;->youtube_view:I

    invoke-virtual {p0, v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    .line 326
    sget v0, Lfr/bmartel/youtubetv/R$id;->play_icon:I

    invoke-virtual {p0, v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 328
    sget v0, Lfr/bmartel/youtubetv/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ProgressBar;

    .line 329
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 331
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    iget v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLoadBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 333
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->getMeasuredWidth()I

    move-result v0

    .line 334
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->getMeasuredHeight()I

    move-result v9

    .line 336
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v10, 0x1

    .line 337
    invoke-virtual {v1, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 338
    invoke-virtual {v1, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 339
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 340
    invoke-virtual {v1, v10}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 341
    invoke-virtual {v1, v10}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 342
    invoke-virtual {v1, v10}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v11, 0x0

    .line 343
    invoke-virtual {v1, v11}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 345
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 347
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lfr/bmartel/youtubetv/YoutubeTvView$1;

    invoke-direct {v2, p0}, Lfr/bmartel/youtubetv/YoutubeTvView$1;-><init>(Lfr/bmartel/youtubetv/YoutubeTvView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 367
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v11, v11, v11, v11}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 368
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v10}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 370
    new-instance v12, Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlayerListenerList:Ljava/util/List;

    iget-object v6, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mThumbnailQuality:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    .line 376
    invoke-virtual {v1}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->getValue()Ljava/lang/String;

    move-result-object v8

    move-object v1, v12

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lfr/bmartel/youtubetv/JavascriptInterface;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/webkit/WebView;Lfr/bmartel/youtubetv/YoutubeTvView;Ljava/lang/String;)V

    iput-object v12, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    .line 378
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    const-string v3, "JSInterface"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mUserAgent:Lfr/bmartel/youtubetv/model/UserAgents;

    invoke-virtual {v2}, Lfr/bmartel/youtubetv/model/UserAgents;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 382
    iget-boolean v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowNowPlayingCard:Z

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v11}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 386
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->release()V

    .line 388
    :cond_0
    new-instance v1, Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fr.bmartel.youtubetv.MediaSession"

    invoke-direct {v1, v2, v3}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    .line 389
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    new-instance v2, Lfr/bmartel/youtubetv/YoutubeTvView$2;

    invoke-direct {v2, p0}, Lfr/bmartel/youtubetv/YoutubeTvView$2;-><init>(Lfr/bmartel/youtubetv/YoutubeTvView;)V

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 397
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 400
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v10}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 405
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/youtube.html?videoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mVideoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&videoQuality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mVideoQuality:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 407
    invoke-virtual {v2}, Lfr/bmartel/youtubetv/model/VideoQuality;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&playerHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&playerWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&rel="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowRelatedVideos:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&showinfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowVideoInfo:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&controls="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowControls:Lfr/bmartel/youtubetv/model/VideoControls;

    .line 412
    invoke-virtual {v0}, Lfr/bmartel/youtubetv/model/VideoControls;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&autohide="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mAutohide:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    .line 413
    invoke-virtual {v0}, Lfr/bmartel/youtubetv/model/VideoAutoHide;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&cc_load_policy="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mClosedCaptions:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&iv_load_policy="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mVideoAnnotation:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&autoplay="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mAutoPlay:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&thumbnailQuality="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mThumbnailQuality:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    .line 417
    invoke-virtual {v0}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&cc_lang_pref="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mClosedCaptionLangPref:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&hl="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlayerLanguage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&playlist_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&debug="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mDebug:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    sget-object v1, Lfr/bmartel/youtubetv/YoutubeTvView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoUrl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 313
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lfr/bmartel/youtubetv/R$layout;->youtube_view:I

    invoke-static {v0, v1, p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 315
    invoke-direct {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->init()V

    return-void
.end method

.method private processAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 265
    :try_start_0
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_videoId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mVideoId:Ljava/lang/String;

    .line 266
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_videoQuality:I

    sget-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_VIDEO_QUALITY:Lfr/bmartel/youtubetv/model/VideoQuality;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/model/VideoQuality;->getIndex()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p2}, Lfr/bmartel/youtubetv/model/VideoQuality;->getVideoQuality(I)Lfr/bmartel/youtubetv/model/VideoQuality;

    move-result-object p2

    iput-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mVideoQuality:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 267
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_showRelatedVideos:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowRelatedVideos:I

    .line 268
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_showVideoInfo:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowVideoInfo:I

    .line 269
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_showControls:I

    sget-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_SHOW_CONTROLS:Lfr/bmartel/youtubetv/model/VideoControls;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/model/VideoControls;->getIndex()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p2}, Lfr/bmartel/youtubetv/model/VideoControls;->getVideoControls(I)Lfr/bmartel/youtubetv/model/VideoControls;

    move-result-object p2

    iput-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowControls:Lfr/bmartel/youtubetv/model/VideoControls;

    .line 270
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_closedCaptions:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mClosedCaptions:I

    .line 271
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_videoAnnotation:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    :goto_0
    iput p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mVideoAnnotation:I

    .line 272
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_autoHide:I

    sget-object v2, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_AUTOHIDE:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    invoke-virtual {v2}, Lfr/bmartel/youtubetv/model/VideoAutoHide;->getIndex()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p2}, Lfr/bmartel/youtubetv/model/VideoAutoHide;->getVideoControls(I)Lfr/bmartel/youtubetv/model/VideoAutoHide;

    move-result-object p2

    iput-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mAutohide:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    .line 273
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_debug:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mDebug:I

    .line 274
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_loadingBackgroundColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLoadBackgroundColor:I

    .line 275
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_autoplay:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mAutoPlay:I

    .line 276
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_userAgentString:I

    sget-object v2, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_USER_AGENT:Lfr/bmartel/youtubetv/model/UserAgents;

    invoke-virtual {v2}, Lfr/bmartel/youtubetv/model/UserAgents;->getIndex()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p2}, Lfr/bmartel/youtubetv/model/UserAgents;->getUserAgent(I)Lfr/bmartel/youtubetv/model/UserAgents;

    move-result-object p2

    iput-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mUserAgent:Lfr/bmartel/youtubetv/model/UserAgents;

    .line 277
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_showBorder:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowBorder:Z

    .line 278
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_borderWidth:I

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBorderWidth:I

    .line 279
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_borderColor:I

    const v1, -0xffff01

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBorderColor:I

    .line 280
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_thumbnailQuality:I

    sget-object v1, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_THUMBNAIL_QUALITY:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->getIndex()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p2}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->getThumbnail(I)Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    move-result-object p2

    iput-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mThumbnailQuality:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    .line 281
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_closedCaptionLangPref:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mClosedCaptionLangPref:Ljava/lang/String;

    .line 282
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_playerLanguage:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlayerLanguage:Ljava/lang/String;

    .line 283
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_javascriptTimeout:I

    const/16 v1, 0x5dc

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    .line 284
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_playlistId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlaylistId:Ljava/lang/String;

    .line 285
    sget p2, Lfr/bmartel/youtubetv/R$styleable;->YoutubeTvView_yt_showNowPlayingCard:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowNowPlayingCard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private setBorder()V
    .locals 5

    .line 431
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowBorder:Z

    if-eqz v0, :cond_0

    .line 432
    sget v0, Lfr/bmartel/youtubetv/R$id;->youtube_frame:I

    invoke-virtual {p0, v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 433
    iget v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBorderWidth:I

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBorderWidth:I

    iget v3, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBorderWidth:I

    iget v4, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBorderWidth:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 434
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfr/bmartel/youtubetv/R$drawable;->webview_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 435
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 436
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 437
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 438
    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 439
    iget v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBorderWidth:I

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBorderColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPlayerListener(Lfr/bmartel/youtubetv/listener/IPlayerListener;)V
    .locals 1

    .line 776
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlayerListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public closePlayer()V
    .locals 5

    .line 824
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->stopVideo()V

    .line 825
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const/4 v1, 0x2

    const-wide/16 v2, 0xc

    const/high16 v4, 0x3f800000    # 1.0f

    .line 826
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 829
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 830
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 831
    sget-object v0, Lfr/bmartel/youtubetv/YoutubeTvView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closePlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v2}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 451
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 453
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 455
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x55

    if-eq p1, v1, :cond_1

    const/16 v1, 0x57

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 464
    :pswitch_0
    iget-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "playPause"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callJavaScript(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 461
    :pswitch_1
    iget-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "playVideo"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callJavaScript(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "nextVideo"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callJavaScript(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "playPause"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callJavaScript(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAvailablePlaybackRates()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 597
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 598
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 599
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getAvailablePlaybackRateList"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 601
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getAvailablePlaybackRates()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 601
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAvailableQualityLevels()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfr/bmartel/youtubetv/model/VideoQuality;",
            ">;"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 668
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 669
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getAvailableQualityLevels"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 671
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getAvailableQualityLevels()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 671
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentPosition()F
    .locals 4

    .line 639
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 641
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 642
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getCurrentTime"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getCurrentTime()F

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 644
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDuration()F
    .locals 4

    .line 677
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 679
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 680
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getDuration"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 682
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getDuration()F

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 682
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMediaSession()Landroid/media/session/MediaSession;
    .locals 1

    .line 800
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mMediaSession:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method public getPlaybackQuality()Lfr/bmartel/youtubetv/model/VideoQuality;
    .locals 4

    .line 655
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 657
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 658
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getPlaybackQuality"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 660
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getPlaybackQuality()Lfr/bmartel/youtubetv/model/VideoQuality;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 660
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlaybackRate()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 582
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 583
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getPlaybackRate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 585
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getPlaybackRate()I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 585
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlayerState()Lfr/bmartel/youtubetv/model/VideoState;
    .locals 4

    .line 628
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 630
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 631
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getPlayerState"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 633
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getPlayerState()Lfr/bmartel/youtubetv/model/VideoState;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 633
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 712
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 713
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getPlaylist"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 715
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getPlaylist()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 715
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlaylistIndex()I
    .locals 4

    .line 721
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 723
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 724
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getPlaylistIndex"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 726
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getPlaylistIndex()I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 726
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getVideoEmbedCode()Ljava/lang/String;
    .locals 4

    .line 699
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 701
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 702
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getVideoEmbedCode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 704
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getVideoEmbedCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 704
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 4

    .line 732
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 734
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 735
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getVideoId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 737
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getVideoId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 737
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getVideoInfo()Lfr/bmartel/youtubetv/model/VideoInfo;
    .locals 4

    .line 754
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 756
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 757
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getVideoInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 759
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getVideoInfo()Lfr/bmartel/youtubetv/model/VideoInfo;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 759
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getVideoLoadedFraction()F
    .locals 4

    .line 617
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 619
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 620
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getVideoLoadedFraction"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 622
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getVideoLoadedFraction()F

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 622
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 4

    .line 743
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 745
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 746
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getVideoTitle"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 748
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 748
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 4

    .line 688
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 690
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 691
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getVideoUrl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 693
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 693
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getVolume()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 566
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 567
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "getVolume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 569
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->getVolume()I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 569
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isMuted()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    .line 550
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1, v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->setBlock(Landroid/os/ConditionVariable;)V

    .line 551
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "isMuted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBlock:Landroid/os/ConditionVariable;

    iget v2, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 553
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->isMuted()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 553
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isPlaying()Z
    .locals 2

    .line 543
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->getPlayerState()Lfr/bmartel/youtubetv/model/VideoState;

    move-result-object v0

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoState;->PLAYING:Lfr/bmartel/youtubetv/model/VideoState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowingNowPlayingCard()Z
    .locals 1

    .line 809
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowNowPlayingCard:Z

    return v0
.end method

.method public moveBackward(I)V
    .locals 4

    .line 538
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "moveBackward"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public moveForward(I)V
    .locals 4

    .line 533
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "moveForward"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public mute()V
    .locals 3

    .line 523
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "mute"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public nextVideo()V
    .locals 3

    .line 508
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "nextVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .line 298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 299
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->getWidth()I

    move-result p1

    .line 300
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->getHeight()I

    move-result v0

    .line 301
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->isPageLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "setSize"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callJavaScript(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v1, p1, v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->setSizeOnLoad(II)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 483
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "pauseVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public playPause()V
    .locals 3

    .line 488
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "playPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mVideoId:Ljava/lang/String;

    .line 766
    invoke-direct {p0}, Lfr/bmartel/youtubetv/YoutubeTvView;->init()V

    return-void
.end method

.method public playVideoAt(I)V
    .locals 4

    .line 518
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "playVideoAt"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public previousVideo()V
    .locals 3

    .line 513
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "previousVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removePlayerListener(Lfr/bmartel/youtubetv/listener/IPlayerListener;)V
    .locals 1

    .line 786
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlayerListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    const/4 v0, 0x1

    .line 503
    invoke-virtual {p0, p1, v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->seekTo(IZ)V

    return-void
.end method

.method public seekTo(IZ)V
    .locals 4

    .line 498
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "seekTo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setLoop(Z)V
    .locals 4

    .line 607
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "setLoop"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lfr/bmartel/youtubetv/listener/IBufferStateListener;)V
    .locals 1

    .line 791
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0, p1}, Lfr/bmartel/youtubetv/JavascriptInterface;->setOnBufferingUpdateListener(Lfr/bmartel/youtubetv/listener/IBufferStateListener;)V

    return-void
.end method

.method public setOnProgressUpdateListener(Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;)V
    .locals 1

    .line 819
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptInterface:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0, p1}, Lfr/bmartel/youtubetv/JavascriptInterface;->setOnProgressUpdateListener(Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;)V

    return-void
.end method

.method public setPlaybackQuality(Lfr/bmartel/youtubetv/model/VideoQuality;)V
    .locals 4

    .line 650
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "setPlaybackQuality"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lfr/bmartel/youtubetv/model/VideoQuality;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setPlaybackRate(I)V
    .locals 4

    .line 591
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "setPlaybackRate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setShuffle(Z)V
    .locals 4

    .line 612
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "setShuffle"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setSize(II)V
    .locals 4

    .line 575
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "setSize"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 4

    .line 559
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "setVolume"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 478
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "playVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stopVideo()V
    .locals 3

    .line 493
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "stopVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public unMute()V
    .locals 3

    .line 528
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "unMute"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateView(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "videoId"

    .line 836
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "videoId"

    .line 837
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mVideoId:Ljava/lang/String;

    :cond_0
    const-string v0, "playlistId"

    .line 839
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "playlistId"

    .line 840
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlaylistId:Ljava/lang/String;

    :cond_1
    const-string v0, "videoQuality"

    .line 842
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "videoQuality"

    .line 843
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/bmartel/youtubetv/model/VideoQuality;->getVideoQuality(Ljava/lang/String;)Lfr/bmartel/youtubetv/model/VideoQuality;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mVideoQuality:Lfr/bmartel/youtubetv/model/VideoQuality;

    :cond_2
    const-string v0, "showRelatedVideos"

    .line 845
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "showRelatedVideos"

    .line 846
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowRelatedVideos:I

    :cond_3
    const-string v0, "showVideoInfo"

    .line 848
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "showVideoInfo"

    .line 849
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowVideoInfo:I

    :cond_4
    const-string v0, "showControls"

    .line 851
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "showControls"

    .line 852
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lfr/bmartel/youtubetv/model/VideoControls;->getVideoControls(I)Lfr/bmartel/youtubetv/model/VideoControls;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowControls:Lfr/bmartel/youtubetv/model/VideoControls;

    :cond_5
    const-string v0, "autoHide"

    .line 854
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "autoHide"

    .line 855
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lfr/bmartel/youtubetv/model/VideoAutoHide;->getVideoControls(I)Lfr/bmartel/youtubetv/model/VideoAutoHide;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mAutohide:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    :cond_6
    const-string v0, "closedCaptions"

    .line 857
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "closedCaptions"

    .line 858
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mClosedCaptions:I

    :cond_7
    const-string v0, "videoAnnotation"

    .line 860
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "videoAnnotation"

    .line 861
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mVideoAnnotation:I

    :cond_8
    const-string v0, "debug"

    .line 863
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "debug"

    .line 864
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mDebug:I

    :cond_9
    const-string v0, "loadingBackgroundColor"

    .line 866
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "loadingBackgroundColor"

    .line 867
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mLoadBackgroundColor:I

    :cond_a
    const-string v0, "autoplay"

    .line 869
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "autoplay"

    .line 870
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mAutoPlay:I

    :cond_b
    const-string v0, "userAgentString"

    .line 872
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "userAgentString"

    .line 873
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lfr/bmartel/youtubetv/model/UserAgents;->getUserAgent(I)Lfr/bmartel/youtubetv/model/UserAgents;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mUserAgent:Lfr/bmartel/youtubetv/model/UserAgents;

    :cond_c
    const-string v0, "showBorder"

    .line 875
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "showBorder"

    .line 876
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowBorder:Z

    :cond_d
    const-string v0, "borderWidth"

    .line 878
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "borderWidth"

    .line 879
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBorderWidth:I

    :cond_e
    const-string v0, "borderColor"

    .line 881
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "borderColor"

    .line 882
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mBorderColor:I

    :cond_f
    const-string v0, "thumbnailQuality"

    .line 884
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "thumbnailQuality"

    .line 885
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->getThumbnail(I)Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mThumbnailQuality:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    :cond_10
    const-string v0, "closedCaptionLangPref"

    .line 887
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "closedCaptionLangPref"

    .line 888
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mClosedCaptionLangPref:Ljava/lang/String;

    :cond_11
    const-string v0, "playerLanguage"

    .line 890
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "playerLanguage"

    .line 891
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mPlayerLanguage:Ljava/lang/String;

    :cond_12
    const-string v0, "javascriptTimeout"

    .line 893
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "javascriptTimeout"

    .line 894
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mJavascriptTimeout:I

    :cond_13
    const-string v0, "showNowPlayingCard"

    .line 896
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "showNowPlayingCard"

    .line 897
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView;->mShowNowPlayingCard:Z

    :cond_14
    return-void
.end method
