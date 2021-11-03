.class public Ltv/emby/embyatv/browsing/GenericGridActivity;
.super Ltv/emby/embyatv/browsing/BaseTabActivity;
.source "GenericGridActivity.java"


# instance fields
.field mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/TabDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/GenericGridActivity;->mTabs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getTabDefinitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/TabDef;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Ltv/emby/embyatv/browsing/GenericGridActivity;->mTabs:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 20
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/GenericGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Folder"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    .line 21
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "unknown"

    :goto_0
    const/4 v2, -0x1

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "homevideos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "tvshows"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "photos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "movies"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string v3, "musicvideos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    :cond_1
    :goto_1
    const v1, 0x7f100545

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 37
    :pswitch_0
    iget-object v1, p0, Ltv/emby/embyatv/browsing/GenericGridActivity;->mTabs:Ljava/util/List;

    new-instance v2, Ltv/emby/embyatv/model/TabDef;

    const v3, 0x7f100518

    invoke-virtual {p0, v3}, Ltv/emby/embyatv/browsing/GenericGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltv/emby/embyatv/browsing/MusicVideoGridFragment;

    invoke-direct {v4}, Ltv/emby/embyatv/browsing/MusicVideoGridFragment;-><init>()V

    invoke-direct {v2, v3, v4}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    :pswitch_1
    iget-object v2, p0, Ltv/emby/embyatv/browsing/GenericGridActivity;->mTabs:Ljava/util/List;

    new-instance v3, Ltv/emby/embyatv/model/TabDef;

    invoke-virtual {p0, v1}, Ltv/emby/embyatv/browsing/GenericGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ltv/emby/embyatv/browsing/PhotoGridFragment;

    invoke-direct {v4}, Ltv/emby/embyatv/browsing/PhotoGridFragment;-><init>()V

    invoke-direct {v3, v1, v4}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 30
    :pswitch_2
    iget-object v2, p0, Ltv/emby/embyatv/browsing/GenericGridActivity;->mTabs:Ljava/util/List;

    new-instance v3, Ltv/emby/embyatv/model/TabDef;

    const v4, 0x7f100610

    invoke-virtual {p0, v4}, Ltv/emby/embyatv/browsing/GenericGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ltv/emby/embyatv/browsing/VideoGridFragment;

    invoke-direct {v5}, Ltv/emby/embyatv/browsing/VideoGridFragment;-><init>()V

    invoke-direct {v3, v4, v5}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v2, p0, Ltv/emby/embyatv/browsing/GenericGridActivity;->mTabs:Ljava/util/List;

    new-instance v3, Ltv/emby/embyatv/model/TabDef;

    invoke-virtual {p0, v1}, Ltv/emby/embyatv/browsing/GenericGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ltv/emby/embyatv/browsing/PhotoGridFragment;

    invoke-direct {v4}, Ltv/emby/embyatv/browsing/PhotoGridFragment;-><init>()V

    invoke-direct {v3, v1, v4}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :pswitch_3
    iget-object v1, p0, Ltv/emby/embyatv/browsing/GenericGridActivity;->mTabs:Ljava/util/List;

    new-instance v2, Ltv/emby/embyatv/model/TabDef;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltv/emby/embyatv/browsing/TvGridFragment;

    invoke-direct {v4}, Ltv/emby/embyatv/browsing/TvGridFragment;-><init>()V

    invoke-direct {v2, v3, v4}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :pswitch_4
    iget-object v1, p0, Ltv/emby/embyatv/browsing/GenericGridActivity;->mTabs:Ljava/util/List;

    new-instance v2, Ltv/emby/embyatv/model/TabDef;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltv/emby/embyatv/browsing/MovieGridFragment;

    invoke-direct {v4}, Ltv/emby/embyatv/browsing/MovieGridFragment;-><init>()V

    invoke-direct {v2, v3, v4}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_2
    iget-object v1, p0, Ltv/emby/embyatv/browsing/GenericGridActivity;->mTabs:Ljava/util/List;

    new-instance v2, Ltv/emby/embyatv/model/TabDef;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/GenericGridActivity;->mTabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/GenericGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v3, Ltv/emby/embyatv/browsing/FolderGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/FolderGridFragment;-><init>()V

    invoke-direct {v2, v0, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a9a8643 -> :sswitch_4
        -0x3fac58bd -> :sswitch_3
        -0x3af3777f -> :sswitch_2
        -0x37cbc82c -> :sswitch_1
        0x708a0cf7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
