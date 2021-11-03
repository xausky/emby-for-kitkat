.class public Ltv/emby/embyatv/util/InfoLayoutHelper;
.super Ljava/lang/Object;
.source "InfoLayoutHelper.java"


# static fields
.field private static BTMARGIN:I = 0x0

.field private static textColor:I = 0xffffff

.field private static textSize:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Ltv/emby/embyatv/util/InfoLayoutHelper;->BTMARGIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 1

    .line 519
    sget v0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    add-int/lit8 v0, v0, -0x4

    invoke-static {p0, p1, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    return-void
.end method

.method public static addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 6

    .line 523
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getBlockTextBackgroundResource()I

    move-result v5

    const/high16 v4, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    return-void
.end method

.method public static addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V
    .locals 1

    .line 527
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    int-to-float p0, p3

    .line 528
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 529
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    .line 530
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 531
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 533
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 534
    sget p2, Ltv/emby/embyatv/util/InfoLayoutHelper;->BTMARGIN:I

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 535
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static addBoxSetCounts(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V
    .locals 5

    .line 156
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMovieCount()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMovieCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 158
    sget v2, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 159
    sget v2, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMovieCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100517

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 166
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 167
    sget v2, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    sget v2, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1005fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    .line 173
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 174
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 175
    sget v2, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    sget v2, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, v1, :cond_2

    const p1, 0x7f1004ee

    goto :goto_1

    :cond_2
    const p1, 0x7f1004ed

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private static addCount(Landroid/content/Context;Ljava/lang/Integer;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 186
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 187
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static addCriticInfo(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V
    .locals 6

    .line 317
    sget v0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 318
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    const/4 v2, 0x5

    const/16 v3, 0xa

    .line 319
    invoke-virtual {v1, v0, v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 321
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCommunityRating()Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 322
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080198

    .line 323
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 328
    sget v4, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 329
    sget v4, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCommunityRating()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 336
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCriticRating()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 337
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCriticRating()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v4, 0x426c0000    # 59.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    const v1, 0x7f0800d0

    .line 340
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const v1, 0x7f080178

    .line 342
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 346
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 347
    sget v2, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 348
    sget v2, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "%d%% "

    .line 349
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCriticRating()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    const-string p1, "  "

    .line 356
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static addDate(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V
    .locals 4

    .line 360
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 361
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 363
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Program"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "MusicAlbum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "TvChannel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "Movie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "Series"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "Person"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 427
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 428
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM y"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "  "

    .line 430
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 420
    :pswitch_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_8

    .line 421
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "  "

    .line 423
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 397
    :pswitch_1
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 398
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "y"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10056c

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_2

    .line 404
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 405
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 406
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 408
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 409
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, " - "

    .line 412
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    :goto_2
    const-string p1, "  "

    .line 416
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 389
    :pswitch_2
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "    "

    .line 393
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 365
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 367
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f10045c

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM y"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_4
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "  |  Died "

    .line 371
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM y"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    .line 373
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {v1, p1}, Ltv/emby/embyatv/util/Utils;->numYears(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 375
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 377
    :cond_5
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, " ("

    .line 378
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {p1, v1}, Ltv/emby/embyatv/util/Utils;->numYears(Ljava/util/Date;Ljava/util/Calendar;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 380
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_6
    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 431
    :cond_7
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_8

    .line 432
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "  "

    .line 434
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71b7788b -> :sswitch_5
        -0x6c991569 -> :sswitch_4
        0x4714f10 -> :sswitch_3
        0x17833001 -> :sswitch_2
        0x46a98b6a -> :sswitch_1
        0x50c7b664 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZ)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->GetFirstAudioStream(Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/entities/MediaStream;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZLmediabrowser/model/entities/MediaStream;)V

    return-void
.end method

.method public static addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZLmediabrowser/model/entities/MediaStream;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 63
    invoke-static/range {v0 .. v7}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZLmediabrowser/model/entities/MediaStream;Lmediabrowser/model/entities/MediaStream;Ljava/lang/String;)V

    return-void
.end method

.method public static addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZLmediabrowser/model/entities/MediaStream;Lmediabrowser/model/entities/MediaStream;Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 69
    instance-of v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    if-eqz v0, :cond_1

    const v0, -0x777778

    goto :goto_0

    :cond_1
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v0

    :goto_0
    sput v0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    .line 70
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addCriticInfo(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    .line 71
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "BoxSet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "Playlist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_2
    const-string v2, "Program"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "MusicAlbum"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "TvChannel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "Episode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v2, "Series"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v2, "MusicArtist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 105
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addDate(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    goto/16 :goto_8

    .line 101
    :pswitch_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1004ed

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1004ee

    goto :goto_2

    :goto_3
    invoke-static {p0, v0, p2, v1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addCount(Landroid/content/Context;Ljava/lang/Integer;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 102
    :cond_4
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCumulativeRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCumulativeRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {p0, v0, p2, v1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    goto/16 :goto_8

    .line 94
    :pswitch_1
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p3

    :goto_4
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmediabrowser/model/dto/NameIdPair;

    invoke-virtual {p3}, Lmediabrowser/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object p3

    goto :goto_4

    :cond_6
    const/4 p3, 0x0

    :goto_5
    if-eqz p3, :cond_7

    .line 96
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x1f4

    invoke-static {p0, p3, p2, p4}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    .line 98
    :cond_7
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addDate(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    return-void

    .line 90
    :pswitch_2
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumCount()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumCount()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object p1

    :goto_6
    if-eqz p1, :cond_a

    if-eqz p1, :cond_9

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v3, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f100441

    goto :goto_7

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f100443

    :goto_7
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addCount(Landroid/content/Context;Ljava/lang/Integer;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_a
    return-void

    .line 87
    :pswitch_3
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addProgramInfo(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    goto :goto_8

    .line 81
    :pswitch_4
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addDate(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    .line 82
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSeriesAirs(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    const/4 p4, 0x0

    goto :goto_8

    .line 77
    :pswitch_5
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBoxSetCounts(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    goto :goto_8

    .line 73
    :pswitch_6
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSeasonEpisode(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    .line 74
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addDate(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    :cond_b
    :goto_8
    if-eqz p3, :cond_c

    .line 108
    invoke-static {p0, p1, p2, p4}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addRuntime(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;Z)V

    .line 110
    :cond_c
    invoke-static {p0, p1, p2, p6, p7}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addRatingAndRes(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;Lmediabrowser/model/entities/MediaStream;Ljava/lang/String;)V

    if-eqz p5, :cond_d

    .line 111
    invoke-static {p0, p5, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addMediaDetails(Landroid/content/Context;Lmediabrowser/model/entities/MediaStream;Landroid/widget/LinearLayout;)V

    :cond_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x711b8e54 -> :sswitch_7
        -0x6c991569 -> :sswitch_6
        0x72a55db -> :sswitch_5
        0x17833001 -> :sswitch_4
        0x46a98b6a -> :sswitch_3
        0x50c7b664 -> :sswitch_2
        0x73e0e5f2 -> :sswitch_1
        0x76f3dab7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZZ)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 55
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->GetFirstAudioStream(Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/entities/MediaStream;

    move-result-object p5

    :goto_0
    move-object v5, p5

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZLmediabrowser/model/entities/MediaStream;)V

    return-void
.end method

.method public static addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/SubtitleSearchResult;Landroid/widget/LinearLayout;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    .line 130
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 131
    instance-of v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    if-eqz v0, :cond_1

    const v0, -0x777778

    goto :goto_0

    :cond_1
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v0

    :goto_0
    sput v0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    .line 132
    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleSearchResult;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleSearchResult;->getFormat()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {p0, v0, p2, v1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    .line 133
    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleSearchResult;->getThreeLetterISOLanguageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleSearchResult;->getThreeLetterISOLanguageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p0, v0, p2, v1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    .line 134
    :cond_3
    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleSearchResult;->getDownloadCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 135
    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleSearchResult;->getDownloadCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {p0, v0, p2, v1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    const v0, 0x7f1000a9

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, v1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    .line 138
    :cond_4
    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleSearchResult;->isForced()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f1004c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 139
    :cond_5
    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleSearchResult;->isHashMatch()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f1000f3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static addInfoRow(Landroid/content/Context;Lmediabrowser/model/entities/MediaStream;Landroid/widget/LinearLayout;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    .line 117
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 118
    instance-of v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    if-eqz v0, :cond_1

    const v0, -0x777778

    goto :goto_0

    :cond_1
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v0

    :goto_0
    sput v0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    .line 119
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {p0, v0, p2, v1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    .line 120
    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p0, v0, p2, v1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    .line 121
    :cond_3
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsDefault()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f10047d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 122
    :cond_4
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsForced()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f1004c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 123
    :cond_5
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsExternal()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f1004ae

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static addInfoRow(Landroid/content/Context;Ltv/emby/embyatv/itemhandling/BaseRowItem;Landroid/widget/LinearLayout;ZZ)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 40
    :cond_0
    sget-object v0, Ltv/emby/embyatv/util/InfoLayoutHelper$1;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSubText(Landroid/content/Context;Ltv/emby/embyatv/itemhandling/BaseRowItem;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 46
    :pswitch_0
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    const/4 p4, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZ)V

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static addMediaDetails(Landroid/content/Context;Lmediabrowser/model/entities/MediaStream;Landroid/widget/LinearLayout;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 495
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 496
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->getFriendlyCodec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const-string v0, " "

    .line 498
    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 500
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getChannelLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getChannelLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 501
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getChannelLayout()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const-string p1, "  "

    .line 502
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getChannels()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getChannels()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    .line 504
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getChannels()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string p1, "STEREO"

    .line 505
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const-string p1, "  "

    .line 506
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getChannels()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    const-string p1, "5.1"

    .line 508
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const-string p1, "  "

    .line 509
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_3
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getChannels()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    const-string p1, "7.1"

    .line 511
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const-string p1, "  "

    .line 512
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static addProgramInfo(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V
    .locals 8

    .line 235
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 236
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 237
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "Program"

    .line 238
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->GetProgramSubText(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->LimitSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "  "

    .line 244
    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 245
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSeasonEpisode(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    .line 246
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 247
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 248
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 249
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "  "

    .line 252
    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 256
    :cond_2
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->isNew(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsPremiere()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10051f

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    const v6, -0x333334

    const v7, 0x7f0600b9

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    const-string v0, "  "

    .line 258
    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 260
    :cond_3
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsPremiere()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100568

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    const v6, -0x777778

    const v7, 0x7f0600c2

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    const-string v0, "  "

    .line 262
    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 264
    :cond_4
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsRepeat()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100584

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    const v6, -0x777778

    const v7, 0x7f060076

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    const-string v0, "  "

    .line 266
    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 268
    :cond_5
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsLive()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 269
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100500

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    const v6, -0x777778

    const v7, 0x7f0600a0

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    const-string v0, "  "

    .line 270
    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 272
    :cond_6
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsHD()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getWidth()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x4b0

    if-le p1, v0, :cond_8

    .line 273
    :cond_7
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const v0, 0x7f1004d8

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xc

    invoke-static {p0, p2, p1, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    const-string p1, "  "

    .line 274
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private static addRatingAndRes(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;Lmediabrowser/model/entities/MediaStream;Ljava/lang/String;)V
    .locals 5

    .line 442
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const-string v0, "  "

    .line 444
    invoke-static {p0, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 447
    invoke-virtual {p3}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p3}, Ltv/emby/embyatv/util/Utils;->getVideoWidths(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    const-string p3, ""

    .line 450
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    const/16 v2, 0x1e0

    .line 451
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 452
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 453
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_4

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "4K"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 455
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x514

    if-le v3, v4, :cond_5

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "1080"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 457
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x320

    if-le v2, v3, :cond_6

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "720"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 459
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "SD"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 463
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 464
    invoke-static {p0, p2, p3}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const-string p3, "  "

    .line 465
    invoke-static {p0, p2, p3}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 468
    :cond_8
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getVideo3DFormat()Lmediabrowser/model/entities/Video3DFormat;

    move-result-object p3

    if-eqz p3, :cond_9

    const-string p3, "3D"

    .line 469
    invoke-static {p0, p2, p3}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const-string p3, "  "

    .line 470
    invoke-static {p0, p2, p3}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_9
    if-eqz p4, :cond_a

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CC ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const-string p1, "  "

    .line 476
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_2

    .line 477
    :cond_a
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getHasSubtitles()Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p3}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_c

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/MediaSourceInfo;

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->GetSubtitleStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    :cond_b
    const-string p1, "CC"

    .line 478
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const-string p1, "  "

    .line 479
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-void
.end method

.method private static addRecordingCount(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V
    .locals 3

    .line 205
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRecordingCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRecordingCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 206
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 207
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 208
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRecordingCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRecordingCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    const p1, 0x7f10057c

    goto :goto_0

    :cond_0
    const p1, 0x7f10057b

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static addResourceImage(Landroid/content/Context;Landroid/widget/LinearLayout;III)V
    .locals 1

    .line 554
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 555
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-lez p3, :cond_0

    .line 556
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setMaxWidth(I)V

    :cond_0
    if-lez p4, :cond_1

    .line 557
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 558
    :cond_1
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 559
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static addRuntime(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;Z)V
    .locals 9

    .line 290
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOriginalRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    const-wide/16 v1, 0x2710

    if-eqz p3, :cond_1

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v7, v1

    add-long/2addr v5, v7

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCanResume()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v7

    div-long/2addr v7, v1

    goto :goto_0

    :cond_0
    move-wide v7, v3

    :goto_0
    const/4 p1, 0x0

    sub-long/2addr v5, v7

    goto :goto_1

    :cond_1
    move-wide v5, v3

    .line 293
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v7, v1

    invoke-static {v7, v8}, Ltv/emby/embyatv/util/Utils;->formatHrMinStr(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p3, v5, v3

    if-lez p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10049e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    const-string p3, "  "

    :goto_2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 295
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float p0, p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 296
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private static addSeasonCount(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V
    .locals 3

    .line 194
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 195
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 196
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    sget v1, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10059d

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10059e

    goto :goto_0

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static addSeasonEpisode(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V
    .locals 4

    .line 303
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumberEnd()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumberEnd()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    instance-of v1, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x19

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_3
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 307
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 308
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 311
    :cond_4
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 312
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSeasonEpisode(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private static addSeriesAirs(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V
    .locals 4

    const-string v0, ""

    .line 216
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAirDays()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAirDays()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAirDays()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAirTime()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStudios()[Lmediabrowser/model/dto/StudioDto;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStudios()[Lmediabrowser/model/dto/StudioDto;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "on "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStudios()[Lmediabrowser/model/dto/StudioDto;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lmediabrowser/model/dto/StudioDto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 225
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 226
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 227
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private static addSeriesStatus(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V
    .locals 7

    const-string v0, "Series"

    .line 484
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesStatus()Lmediabrowser/model/entities/SeriesStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 485
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesStatus()Lmediabrowser/model/entities/SeriesStatus;

    move-result-object p1

    sget-object v0, Lmediabrowser/model/entities/SeriesStatus;->Continuing:Lmediabrowser/model/entities/SeriesStatus;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const v0, 0x7f10043c

    .line 486
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_1
    const v0, 0x7f10049d

    goto :goto_1

    .line 487
    :goto_2
    sget v0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    add-int/lit8 v4, v0, -0x4

    const v5, -0x333334

    if-eqz p1, :cond_2

    const p1, 0x7f0800e1

    const v6, 0x7f0800e1

    goto :goto_3

    :cond_2
    const p1, 0x7f08016d

    const v6, 0x7f08016d

    :goto_3
    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    const-string p1, "  "

    .line 488
    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 1

    .line 541
    sget v0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    invoke-static {p0, p1, p2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    return-void
.end method

.method public static addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 1

    .line 545
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    int-to-float p0, p3

    .line 546
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 547
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static addSubText(Landroid/content/Context;Ltv/emby/embyatv/itemhandling/BaseRowItem;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 280
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 281
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 282
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 283
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSubText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static addText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;I)V
    .locals 1

    .line 144
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 145
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textSize:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    sget p0, Ltv/emby/embyatv/util/InfoLayoutHelper;->textColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 148
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 149
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
