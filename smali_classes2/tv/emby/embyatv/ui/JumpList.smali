.class public Ltv/emby/embyatv/ui/JumpList;
.super Landroid/widget/LinearLayout;
.source "JumpList.java"


# instance fields
.field private lastText:Ljava/lang/String;

.field private lastbutton:Ltv/emby/embyatv/ui/TextButton;

.field private mCharSelectedListener:Ltv/emby/embyatv/ui/CharSelectedListener;

.field private mCurrentButton:Ltv/emby/embyatv/ui/TextButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/JumpList;)Ltv/emby/embyatv/ui/CharSelectedListener;
    .locals 0

    .line 18
    iget-object p0, p0, Ltv/emby/embyatv/ui/JumpList;->mCharSelectedListener:Ltv/emby/embyatv/ui/CharSelectedListener;

    return-object p0
.end method

.method private getButtonFor(Ljava/lang/String;)Ltv/emby/embyatv/ui/TextButton;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 65
    iget-object v1, p0, Ltv/emby/embyatv/ui/JumpList;->lastText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    iput-object p1, p0, Ltv/emby/embyatv/ui/JumpList;->lastText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/JumpList;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 68
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/ui/JumpList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/ui/TextButton;

    .line 69
    invoke-virtual {v2}, Ltv/emby/embyatv/ui/TextButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    iput-object v2, p0, Ltv/emby/embyatv/ui/JumpList;->lastbutton:Ltv/emby/embyatv/ui/TextButton;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/JumpList;->lastbutton:Ltv/emby/embyatv/ui/TextButton;

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/ui/JumpList;->lastbutton:Ltv/emby/embyatv/ui/TextButton;

    return-object p1

    .line 80
    :cond_2
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/JumpList;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/JumpList;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/TextButton;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Ltv/emby/embyatv/ui/JumpList;->lastbutton:Ltv/emby/embyatv/ui/TextButton;

    .line 81
    iget-object p1, p0, Ltv/emby/embyatv/ui/JumpList;->lastbutton:Ltv/emby/embyatv/ui/TextButton;

    return-object p1
.end method


# virtual methods
.method public init(Landroid/content/Context;Lmediabrowser/model/querying/ItemQuery;Z)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/JumpList;->removeAllViews()V

    .line 42
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/JumpList$1;

    invoke-direct {v1, p0, p3, p1}, Ltv/emby/embyatv/ui/JumpList$1;-><init>(Ltv/emby/embyatv/ui/JumpList;ZLandroid/content/Context;)V

    invoke-static {p2, v0, v1}, Ltv/emby/embyatv/util/Utils;->getJumpListPrefixesAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public setCharSelectedListener(Ltv/emby/embyatv/ui/CharSelectedListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Ltv/emby/embyatv/ui/JumpList;->mCharSelectedListener:Ltv/emby/embyatv/ui/CharSelectedListener;

    return-void
.end method

.method public setCurrentButton(Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/JumpList;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Ltv/emby/embyatv/ui/JumpList;->mCurrentButton:Ltv/emby/embyatv/ui/TextButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/JumpList;->mCurrentButton:Ltv/emby/embyatv/ui/TextButton;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/TextButton;->setAlpha(F)V

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/JumpList;->getButtonFor(Ljava/lang/String;)Ltv/emby/embyatv/ui/TextButton;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/ui/JumpList;->mCurrentButton:Ltv/emby/embyatv/ui/TextButton;

    .line 93
    iget-object p1, p0, Ltv/emby/embyatv/ui/JumpList;->mCurrentButton:Ltv/emby/embyatv/ui/TextButton;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/ui/JumpList;->mCurrentButton:Ltv/emby/embyatv/ui/TextButton;

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/TextButton;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setFocus(Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/JumpList;->getButtonFor(Ljava/lang/String;)Ltv/emby/embyatv/ui/TextButton;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Ltv/emby/embyatv/ui/TextButton;->requestFocus()Z

    :cond_0
    return-void
.end method
