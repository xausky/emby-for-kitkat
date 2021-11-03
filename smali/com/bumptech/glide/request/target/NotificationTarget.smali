.class public Lcom/bumptech/glide/request/target/NotificationTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "NotificationTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final notification:Landroid/app/Notification;

.field private final notificationId:I

.field private final notificationTag:Ljava/lang/String;

.field private final remoteViews:Landroid/widget/RemoteViews;

.field private final viewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;Landroid/app/Notification;ILjava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    const-string p2, "Context must not be null!"

    .line 89
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->context:Landroid/content/Context;

    const-string p1, "Notification object can not be null!"

    .line 91
    invoke-static {p6, p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    iput-object p1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notification:Landroid/app/Notification;

    const-string p1, "RemoteViews object can not be null!"

    .line 93
    invoke-static {p5, p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    iput-object p1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    .line 94
    iput p4, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->viewId:I

    .line 95
    iput p7, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationId:I

    .line 96
    iput-object p8, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 45
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/request/target/NotificationTarget;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;ILjava/lang/String;)V
    .locals 9

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    .line 64
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/request/target/NotificationTarget;-><init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;Landroid/app/Notification;ILjava/lang/String;)V

    return-void
.end method

.method private update()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->context:Landroid/content/Context;

    const-string v1, "notification"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 105
    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationTag:Ljava/lang/String;

    iget v2, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationId:I

    iget-object v3, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notification:Landroid/app/Notification;

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object p2, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    iget v0, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->viewId:I

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 113
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/NotificationTarget;->update()V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/target/NotificationTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
