.class public final Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
.super Ljava/lang/Object;
.source "PreviewChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/PreviewChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mLogoBitmap:Landroid/graphics/Bitmap;

.field mLogoUri:Landroid/net/Uri;

.field mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroidx/tvprovider/media/tv/PreviewChannel;)V
    .locals 1

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Landroid/content/ContentValues;

    iget-object p1, p1, Landroidx/tvprovider/media/tv/PreviewChannel;->mValues:Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public build()Landroidx/tvprovider/media/tv/PreviewChannel;
    .locals 2

    const-string v0, "TYPE_PREVIEW"

    .line 552
    invoke-virtual {p0, v0}, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->setType(Ljava/lang/String;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;

    .line 554
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "app_link_intent_uri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Landroidx/tvprovider/media/tv/PreviewChannel;

    invoke-direct {v0, p0}, Landroidx/tvprovider/media/tv/PreviewChannel;-><init>(Landroidx/tvprovider/media/tv/PreviewChannel$Builder;)V

    return-object v0

    .line 560
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Need app link intent uri for channel. Use method setAppLinkIntent or setAppLinkIntentUri to set it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Need channel name. Use method setDisplayName(String) to set it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppLinkIntent(Landroid/content/Intent;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 412
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->setAppLinkIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppLinkIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 424
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "app_link_intent_uri"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 424
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 400
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "description"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 389
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "display_name"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method setId(J)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 358
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setInternalProviderData([B)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 458
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public setInternalProviderFlag1(J)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 473
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setInternalProviderFlag2(J)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 488
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag2"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setInternalProviderFlag3(J)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 503
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag3"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setInternalProviderFlag4(J)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 518
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag4"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setInternalProviderId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 443
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLogo(Landroid/graphics/Bitmap;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 529
    iput-object p1, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mLogoBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 530
    iput-object p1, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mLogoUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setLogo(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 541
    iput-object p1, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mLogoUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 542
    iput-object p1, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mLogoBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method setPackageName(Ljava/lang/String;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method setType(Ljava/lang/String;)Landroidx/tvprovider/media/tv/PreviewChannel$Builder;
    .locals 2

    .line 377
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
