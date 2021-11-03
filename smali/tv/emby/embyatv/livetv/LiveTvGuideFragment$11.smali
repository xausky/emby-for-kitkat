.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;
.super Lmediabrowser/apiinteraction/Response;
.source "LiveTvGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 362
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 3

    .line 365
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2002(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)I

    .line 366
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {p1, v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2002(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)I

    .line 367
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    const-string p1, "DatePlayed"

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v1

    iget-object v1, v1, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1, v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2002(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)I

    .line 368
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v1

    iget-boolean v1, v1, Ltv/emby/embyatv/model/LiveTvPrefs;->favoriteChannelsOnly:Z

    if-eqz v1, :cond_3

    const v1, 0x7f080171

    goto :goto_0

    :cond_3
    const v1, 0x7f0801b9

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 370
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2102(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;J)J

    .line 372
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideProgramAdapter;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v1

    iget-boolean v1, v1, Ltv/emby/embyatv/model/LiveTvPrefs;->compactLayout:Z

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->setUseOneLineRow(Z)V

    .line 373
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v1

    iget-boolean v1, v1, Ltv/emby/embyatv/model/LiveTvPrefs;->compactLayout:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x27

    goto :goto_1

    :cond_4
    const/16 v1, 0x37

    :goto_1
    invoke-static {p1, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    sput p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->ROW_HEIGHT:I

    .line 375
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1802(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ljava/util/List;)Ljava/util/List;

    .line 376
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 377
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    goto :goto_2

    .line 379
    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1, v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Z)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 362
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
