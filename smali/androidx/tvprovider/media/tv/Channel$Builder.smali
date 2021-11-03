.class public final Landroidx/tvprovider/media/tv/Channel$Builder;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroidx/tvprovider/media/tv/Channel;)V
    .locals 1

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    new-instance v0, Landroid/content/ContentValues;

    iget-object p1, p1, Landroidx/tvprovider/media/tv/Channel;->mValues:Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public build()Landroidx/tvprovider/media/tv/Channel;
    .locals 1

    .line 1003
    new-instance v0, Landroidx/tvprovider/media/tv/Channel;

    invoke-direct {v0, p0}, Landroidx/tvprovider/media/tv/Channel;-><init>(Landroidx/tvprovider/media/tv/Channel$Builder;)V

    return-object v0
.end method

.method public setAppLinkColor(I)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 774
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "app_link_color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setAppLinkIconUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 786
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "app_link_icon_uri"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 786
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppLinkIntent(Landroid/content/Intent;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 811
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/tvprovider/media/tv/Channel$Builder;->setAppLinkIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/Channel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppLinkIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 824
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "app_link_intent_uri"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 825
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 824
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppLinkPosterArtUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 799
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "app_link_poster_art_uri"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 800
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 799
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppLinkText(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 763
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "app_link_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBrowsable(Z)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 941
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "browsable"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setConfigurationDisplayOrder(I)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 967
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "configuration_display_order"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 681
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 670
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNumber(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 659
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "display_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method setId(J)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 613
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setInputId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 637
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "input_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setInternalProviderData(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3

    .line 751
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_data"

    .line 752
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 751
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public setInternalProviderData([B)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 739
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public setInternalProviderFlag1(J)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 872
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setInternalProviderFlag2(J)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 883
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag2"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setInternalProviderFlag3(J)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 894
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag3"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setInternalProviderFlag4(J)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 905
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag4"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setInternalProviderId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 917
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLocked(Z)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "locked"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setNetworkAffiliation(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 837
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "network_affiliation"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOriginalNetworkId(I)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 704
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "original_network_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method setPackageName(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSearchable(Z)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 848
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "searchable"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setServiceId(I)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 727
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "service_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setServiceType(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 861
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "service_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSystemApproved(Z)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 954
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "system_approved"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setSystemChannelKey(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 981
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "system_channel_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTransient(Z)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 928
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "transient"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setTransportStreamId(I)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 716
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "transport_stream_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 648
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVideoFormat(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2

    .line 692
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "video_format"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
