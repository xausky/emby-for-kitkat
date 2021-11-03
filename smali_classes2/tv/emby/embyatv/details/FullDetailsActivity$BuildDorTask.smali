.class Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;
.super Landroid/os/AsyncTask;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuildDorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        "Ljava/lang/Integer;",
        "Ltv/emby/embyatv/details/MyDetailsOverviewRow;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 446
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/FullDetailsActivity$1;)V
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 446
    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->doInBackground([Lmediabrowser/model/dto/BaseItemDto;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lmediabrowser/model/dto/BaseItemDto;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;
    .locals 11

    const/4 v0, 0x0

    .line 450
    aget-object p1, p1, v0

    .line 453
    invoke-static {p1, v0, v0}, Ltv/emby/embyatv/util/Utils;->getImageAspectRatio(Lmediabrowser/model/dto/BaseItemDto;ZZ)Ljava/lang/Double;

    move-result-object v1

    .line 454
    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v3

    const/16 v4, 0xa0

    :goto_0
    invoke-static {v3, v4}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    goto :goto_2

    :cond_0
    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v3

    const-string v4, "Person"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "MusicArtist"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0xdc

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v4, 0x12c

    goto :goto_0

    :goto_2
    invoke-static {v2, v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2102(Ltv/emby/embyatv/details/FullDetailsActivity;I)I

    .line 455
    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2100(Ltv/emby/embyatv/details/FullDetailsActivity;)I

    move-result v1

    int-to-double v5, v1

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-static {v2, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2202(Ltv/emby/embyatv/details/FullDetailsActivity;I)I

    .line 456
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2100(Ltv/emby/embyatv/details/FullDetailsActivity;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v2

    const/16 v3, 0x96

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2202(Ltv/emby/embyatv/details/FullDetailsActivity;I)I

    .line 458
    :cond_3
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    new-instance v2, Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    invoke-direct {v2, p1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;-><init>(Lmediabrowser/model/dto/BaseItemDto;)V

    invoke-static {v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2302(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/MyDetailsOverviewRow;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    .line 460
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object v1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setSummary(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x711b8e54

    if-eq v3, v4, :cond_4

    goto :goto_3

    :cond_4
    const-string v3, "MusicArtist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    :cond_5
    :goto_3
    const/4 v1, 0x1

    if-eqz v2, :cond_f

    const-string v2, "Director"

    .line 467
    invoke-static {p1, v2}, Ltv/emby/embyatv/util/Utils;->GetFirstPerson(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/String;)Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v2

    const-string v3, "Series"

    .line 469
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_7

    .line 470
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object v0

    new-instance v2, Ltv/emby/embyatv/model/InfoItem;

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v1, :cond_6

    const v4, 0x7f10059e

    goto :goto_4

    :cond_6
    const v4, 0x7f10059d

    :goto_4
    invoke-virtual {v3, v4}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Ltv/emby/embyatv/model/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setInfoItem1(Ltv/emby/embyatv/model/InfoItem;)V

    goto/16 :goto_8

    :cond_7
    const-string v3, "Person"

    .line 472
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 473
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 474
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_9

    .line 475
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v3

    goto :goto_6

    :cond_9
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 476
    :goto_6
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4, v3}, Ltv/emby/embyatv/util/Utils;->numYears(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    .line 477
    iget-object v4, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v4}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object v4

    new-instance v5, Ltv/emby/embyatv/model/InfoItem;

    iget-object v6, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v7, 0x7f10045c

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "dd MMM y"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_a

    const-string v8, " (%d)"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_a
    const-string v8, ""

    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltv/emby/embyatv/model/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setInfoItem1(Ltv/emby/embyatv/model/InfoItem;)V

    if-eqz v2, :cond_c

    .line 479
    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object v2

    new-instance v4, Ltv/emby/embyatv/model/InfoItem;

    const-string v5, "Died"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMM y"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (%d)"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ltv/emby/embyatv/model/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setInfoItem2(Ltv/emby/embyatv/model/InfoItem;)V

    goto :goto_8

    :cond_b
    if-eqz v2, :cond_c

    .line 483
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object v0

    new-instance v3, Ltv/emby/embyatv/model/InfoItem;

    iget-object v4, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v5, 0x7f100490

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemPerson;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ltv/emby/embyatv/model/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setInfoItem1(Ltv/emby/embyatv/model/InfoItem;)V

    .line 486
    :cond_c
    :goto_8
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_e

    :cond_d
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOriginalRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 487
    :cond_e
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/model/InfoItem;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v3, 0x7f10049e

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ltv/emby/embyatv/model/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setInfoItem4(Ltv/emby/embyatv/model/InfoItem;)V

    goto :goto_9

    .line 463
    :cond_f
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setSummarySubTitle(Ljava/lang/String;)V

    .line 493
    :cond_10
    :goto_9
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_favor_logo"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    const/16 v1, 0x258

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->getLogoImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_11
    const/4 p1, 0x0

    :goto_a
    if-nez p1, :cond_12

    .line 494
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getHasPrimaryImage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2100(Ltv/emby/embyatv/details/FullDetailsActivity;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZZZI)Ljava/lang/String;

    move-result-object p1

    .line 495
    :cond_12
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setImageUrl(Ljava/lang/String;)V

    .line 498
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 499
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setDefaultMediaSourceId(Ljava/lang/String;)V

    .line 500
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 501
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStreamIndex()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setDefaultAudioNdx(I)V

    .line 502
    :cond_13
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setDefaultSubNdx(I)V

    goto :goto_b

    .line 505
    :cond_14
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setDefaultSubNdx(I)V

    .line 508
    :cond_15
    :goto_b
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 446
    check-cast p1, Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->onPostExecute(Ltv/emby/embyatv/details/MyDetailsOverviewRow;)V

    return-void
.end method

.method protected onPostExecute(Ltv/emby/embyatv/details/MyDetailsOverviewRow;)V
    .locals 6

    .line 513
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 515
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 517
    :cond_0
    new-instance v0, Landroidx/leanback/widget/ClassPresenterSelector;

    invoke-direct {v0}, Landroidx/leanback/widget/ClassPresenterSelector;-><init>()V

    .line 518
    const-class v1, Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1500(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroidx/leanback/widget/Presenter;)Landroidx/leanback/widget/ClassPresenterSelector;

    .line 519
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    new-instance v2, Ltv/emby/embyatv/presentation/CustomListRowPresenter;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeGradient()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v4}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    invoke-static {v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2502(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/presentation/CustomListRowPresenter;)Ltv/emby/embyatv/presentation/CustomListRowPresenter;

    .line 520
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2500(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/presentation/CustomListRowPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->setSelectEffectEnabled(Z)V

    .line 521
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2500(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/presentation/CustomListRowPresenter;

    move-result-object v1

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_use_cards"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->setShadowEnabled(Z)V

    .line 522
    const-class v1, Landroidx/leanback/widget/ListRow;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2500(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/presentation/CustomListRowPresenter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroidx/leanback/widget/Presenter;)Landroidx/leanback/widget/ClassPresenterSelector;

    .line 523
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    new-instance v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    invoke-static {v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2602(Ltv/emby/embyatv/details/FullDetailsActivity;Landroidx/leanback/widget/ArrayObjectAdapter;)Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 524
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2700(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroidx/leanback/app/RowsSupportFragment;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2600(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/app/RowsSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 525
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2600(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 526
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2700(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroidx/leanback/app/RowsSupportFragment;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/app/RowsSupportFragment;->setAlignment(I)V

    .line 528
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2800(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 529
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2600(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 530
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2700(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroidx/leanback/app/RowsSupportFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/app/RowsSupportFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
