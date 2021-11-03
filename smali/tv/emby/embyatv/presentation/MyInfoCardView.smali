.class public Ltv/emby/embyatv/presentation/MyInfoCardView;
.super Landroid/widget/FrameLayout;
.source "MyInfoCardView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfoLayout:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyInfoCardView;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0094

    .line 33
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a017e

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyInfoCardView;->mInfoLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a017d

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyInfoCardView;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method private addRow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 77
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyInfoCardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Ltv/emby/embyatv/presentation/MyInfoCardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 81
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Ltv/emby/embyatv/presentation/MyInfoCardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyInfoCardView;->mInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setItem(Lmediabrowser/model/entities/MediaStream;)V
    .locals 5

    .line 40
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyInfoCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStreamType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyInfoCardView;->mInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 43
    sget-object v0, Ltv/emby/embyatv/presentation/MyInfoCardView$1;->$SwitchMap$mediabrowser$model$entities$MediaStreamType:[I

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStreamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 48
    :pswitch_0
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Language: "

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->FirstToUpper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Codec: "

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getProfile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Profile: "

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLevel()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLevel()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    const-string v0, "Level: "

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLevel()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getChannelLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "Layout: "

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getChannelLayout()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_4
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v0, v1, :cond_9

    .line 54
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "Resolution: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_5
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsAnamorphic()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsAnamorphic()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Anamorphic"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_6
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsInterlaced()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Interlaced"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_7
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getAspectRatio()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "Aspect: "

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getAspectRatio()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_8
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getRealFrameRate()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "Framerate: "

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getRealFrameRate()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_9
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "Bitrate: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " kbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_a
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getBitDepth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "Bit Depth: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getBitDepth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_b
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getRefFrames()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "RefFrames: "

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getRefFrames()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_c
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsDefault()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    if-eq v0, v1, :cond_d

    const-string v0, "Default"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_d
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsForced()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    if-eq v0, v1, :cond_e

    const-string v0, "Forced"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_e
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsExternal()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "External"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_f
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v0, v1, :cond_10

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "Added: "

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getComment()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->addRow(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
