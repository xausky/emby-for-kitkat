.class public Ltv/emby/embyatv/integration/RecommendationBuilder;
.super Ljava/lang/Object;
.source "RecommendationBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecommendationBuilder"


# instance fields
.field private mBackgroundUri:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mId:I

.field private mIntent:Landroid/app/PendingIntent;

.field private mPriority:I

.field private mSmallIcon:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 6

    const-string v0, "RecommendationBuilder"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building notification - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltv/emby/embyatv/integration/RecommendationBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mBackgroundUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "RecommendationBuilder"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ltv/emby/embyatv/integration/RecommendationContentProvider;->CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mBackgroundUri:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.backgroundImageUri"

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ltv/emby/embyatv/integration/RecommendationContentProvider;->CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mBackgroundUri:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 95
    :cond_0
    :goto_0
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mTitle:Ljava/lang/String;

    .line 97
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mDescription:Ljava/lang/String;

    .line 98
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget v3, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mPriority:I

    .line 99
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 100
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/16 v3, 0xd

    const/16 v4, 0x3a

    const/16 v5, 0x10

    .line 102
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v3, "recommendation"

    .line 103
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget v3, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mSmallIcon:I

    .line 105
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mIntent:Landroid/app/PendingIntent;

    .line 106
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 108
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setBackground(Ljava/lang/String;)Ltv/emby/embyatv/integration/RecommendationBuilder;
    .locals 0

    .line 67
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mBackgroundUri:Ljava/lang/String;

    return-object p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Ltv/emby/embyatv/integration/RecommendationBuilder;
    .locals 0

    .line 62
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Ltv/emby/embyatv/integration/RecommendationBuilder;
    .locals 0

    .line 37
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Ltv/emby/embyatv/integration/RecommendationBuilder;
    .locals 0

    .line 57
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setId(I)Ltv/emby/embyatv/integration/RecommendationBuilder;
    .locals 0

    .line 42
    iput p1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mId:I

    return-object p0
.end method

.method public setIntent(Landroid/app/PendingIntent;)Ltv/emby/embyatv/integration/RecommendationBuilder;
    .locals 0

    .line 72
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setPriority(I)Ltv/emby/embyatv/integration/RecommendationBuilder;
    .locals 0

    .line 47
    iput p1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mPriority:I

    return-object p0
.end method

.method public setSmallIcon(I)Ltv/emby/embyatv/integration/RecommendationBuilder;
    .locals 0

    .line 77
    iput p1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mSmallIcon:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Ltv/emby/embyatv/integration/RecommendationBuilder;
    .locals 0

    .line 52
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendationBuilder{, mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSmallIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mSmallIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mBitmap=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mBackgroundUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mBackgroundUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationBuilder;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
