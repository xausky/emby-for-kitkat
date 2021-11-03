.class public Ltv/emby/embyatv/browsing/TabGridFragment;
.super Ltv/emby/embyatv/browsing/StdGridFragment;
.source "TabGridFragment.java"


# instance fields
.field protected mFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/browsing/TabGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 17
    iget-object p0, p0, Ltv/emby/embyatv/browsing/TabGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/browsing/TabGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 17
    iget-object p0, p0, Ltv/emby/embyatv/browsing/TabGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/browsing/TabGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 17
    iget-object p0, p0, Ltv/emby/embyatv/browsing/TabGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/browsing/TabGridFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 17
    iget-object p0, p0, Ltv/emby/embyatv/browsing/TabGridFragment;->mToolBar:Landroid/widget/LinearLayout;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabGridFragment;->mFolderName:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0d00c2

    .line 31
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/TabGridFragment;->setupUI(Landroid/view/ViewGroup;)V

    .line 35
    iput-boolean p3, p0, Ltv/emby/embyatv/browsing/TabGridFragment;->mAllowSearch:Z

    .line 36
    iput-boolean p3, p0, Ltv/emby/embyatv/browsing/TabGridFragment;->mAllowViewSelection:Z

    return-object p1
.end method

.method protected setupRetrieveListeners()V
    .locals 2

    .line 42
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/browsing/TabGridFragment$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabGridFragment$1;-><init>(Ltv/emby/embyatv/browsing/TabGridFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveStartedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 49
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/browsing/TabGridFragment$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabGridFragment$2;-><init>(Ltv/emby/embyatv/browsing/TabGridFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
