.class public Ltv/emby/embyatv/startup/SelectServerFragment;
.super Ltv/emby/embyatv/browsing/CustomBrowseFragment;
.source "SelectServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final ENTER_MANUALLY:I = 0x0

.field private static final LOGIN_CONNECT:I = 0x1

.field private static final LOGOUT_CONNECT:I = 0x2


# instance fields
.field private mServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mServers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/startup/SelectServerFragment;)Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 0

    .line 39
    iget-object p0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/startup/SelectServerFragment;)Ltv/emby/embyatv/base/BaseActivity;
    .locals 0

    .line 39
    iget-object p0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/startup/SelectServerFragment;)Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 0

    .line 39
    iget-object p0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/startup/SelectServerFragment;)Landroidx/leanback/widget/ListRow;
    .locals 0

    .line 39
    iget-object p0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/startup/SelectServerFragment;)Ltv/emby/embyatv/TvApp;
    .locals 0

    .line 39
    iget-object p0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    return-object p0
.end method


# virtual methods
.method protected addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 6

    .line 63
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 65
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1005a2

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 66
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mServers:Ljava/util/List;

    iget-object v3, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mServers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lmediabrowser/model/apiclient/ServerInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmediabrowser/model/apiclient/ServerInfo;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v3}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v1, v2, v3, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>([Lmediabrowser/model/apiclient/ServerInfo;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 67
    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 68
    new-instance v2, Landroidx/leanback/widget/ListRow;

    invoke-direct {v2, v0, v1}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 70
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f10053c

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 72
    new-instance v1, Ltv/emby/embyatv/presentation/GridButtonPresenter;

    invoke-direct {v1}, Ltv/emby/embyatv/presentation/GridButtonPresenter;-><init>()V

    .line 73
    new-instance v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 74
    new-instance v1, Ltv/emby/embyatv/ui/GridButton;

    iget-object v3, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1004a1

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f080093

    invoke-direct {v1, v4, v3, v5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->isConnectLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Ltv/emby/embyatv/ui/GridButton;

    const/4 v3, 0x2

    iget-object v4, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v5, 0x7f10050a

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0801ab

    invoke-direct {v1, v3, v4, v5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Ltv/emby/embyatv/ui/GridButton;

    const/4 v3, 0x1

    iget-object v4, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v5, 0x7f100508

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080082

    invoke-direct {v1, v3, v4, v5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 81
    :goto_0
    new-instance v1, Landroidx/leanback/widget/ListRow;

    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 48
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Ltv/emby/embyatv/startup/SelectServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Servers"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 52
    iget-object v5, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mServers:Ljava/util/List;

    const-class v6, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0, v4, v6}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/startup/SelectServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/base/BaseActivity;

    iput-object v0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 57
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setupEventListeners()V
    .locals 3

    .line 86
    invoke-super {p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->setupEventListeners()V

    .line 87
    iget-object v0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    new-instance v1, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/startup/SelectServerFragment;Ltv/emby/embyatv/startup/SelectServerFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeClickedListener;->registerListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 88
    iget-object v0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/startup/SelectServerFragment$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/startup/SelectServerFragment$1;-><init>(Ltv/emby/embyatv/startup/SelectServerFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->registerKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    .line 96
    iget-object v0, p0, Ltv/emby/embyatv/startup/SelectServerFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/startup/SelectServerFragment$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/startup/SelectServerFragment$2;-><init>(Ltv/emby/embyatv/startup/SelectServerFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->registerMessageListener(Ltv/emby/embyatv/base/IMessageListener;)V

    :cond_0
    return-void
.end method
