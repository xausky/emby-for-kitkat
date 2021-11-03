.class final Lfr/bmartel/youtubetv/utils/WebviewUtils$1;
.super Ljava/lang/Object;
.source "WebviewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$params:[Ljava/lang/Object;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lfr/bmartel/youtubetv/utils/WebviewUtils$1;->val$webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lfr/bmartel/youtubetv/utils/WebviewUtils$1;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lfr/bmartel/youtubetv/utils/WebviewUtils$1;->val$params:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    iget-object v0, p0, Lfr/bmartel/youtubetv/utils/WebviewUtils$1;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lfr/bmartel/youtubetv/utils/WebviewUtils$1;->val$methodName:Ljava/lang/String;

    iget-object v2, p0, Lfr/bmartel/youtubetv/utils/WebviewUtils$1;->val$params:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callJavaScript(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
