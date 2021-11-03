.class public Ltv/emby/embyatv/startup/SelectUserFragment;
.super Ltv/emby/embyatv/browsing/CustomBrowseFragment;
.source "SelectUserFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/startup/SelectUserFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final ENTER_MANUALLY:I = 0x0

.field private static final GRID_ITEM_HEIGHT:I = 0xc8

.field private static final GRID_ITEM_WIDTH:I = 0xc8

.field private static final LOGIN_CONNECT:I = 0x1

.field private static final REPORT:I = 0x2

.field private static final SWITCH_SERVER:I = 0x3


# instance fields
.field private mServer:Lmediabrowser/model/apiclient/ServerInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/startup/SelectUserFragment;)Ltv/emby/embyatv/TvApp;
    .locals 0

    .line 34
    iget-object p0, p0, Ltv/emby/embyatv/startup/SelectUserFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    return-object p0
.end method


# virtual methods
.method protected addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 6

    .line 55
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 57
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ltv/emby/embyatv/startup/SelectUserFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1005a3

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 58
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/startup/SelectUserFragment;->mServer:Lmediabrowser/model/apiclient/ServerInfo;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v3}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v1, v2, v3, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/apiclient/ServerInfo;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 59
    new-instance v2, Landroidx/leanback/widget/ListRow;

    invoke-direct {v2, v0, v1}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 60
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 61
    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 63
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 65
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ltv/emby/embyatv/startup/SelectUserFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f10053c

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 67
    new-instance v1, Ltv/emby/embyatv/presentation/GridButtonPresenter;

    invoke-direct {v1}, Ltv/emby/embyatv/presentation/GridButtonPresenter;-><init>()V

    .line 68
    new-instance v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 69
    new-instance v1, Ltv/emby/embyatv/ui/GridButton;

    iget-object v3, p0, Ltv/emby/embyatv/startup/SelectUserFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1004a5

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f080093

    invoke-direct {v1, v4, v3, v5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 70
    new-instance v1, Ltv/emby/embyatv/ui/GridButton;

    iget-object v3, p0, Ltv/emby/embyatv/startup/SelectUserFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f100508

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const v5, 0x7f080082

    invoke-direct {v1, v4, v3, v5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 71
    new-instance v1, Ltv/emby/embyatv/ui/GridButton;

    iget-object v3, p0, Ltv/emby/embyatv/startup/SelectUserFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1005e6

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const v5, 0x7f08018d

    invoke-direct {v1, v4, v3, v5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 72
    new-instance v1, Ltv/emby/embyatv/ui/GridButton;

    iget-object v3, p0, Ltv/emby/embyatv/startup/SelectUserFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1005a4

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const v5, 0x7f0801af

    invoke-direct {v1, v4, v3, v5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 73
    new-instance v1, Landroidx/leanback/widget/ListRow;

    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Ltv/emby/embyatv/startup/SelectUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Server"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/apiclient/ServerInfo;

    iput-object v0, p0, Ltv/emby/embyatv/startup/SelectUserFragment;->mServer:Lmediabrowser/model/apiclient/ServerInfo;

    .line 49
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setupEventListeners()V
    .locals 3

    .line 78
    invoke-super {p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->setupEventListeners()V

    .line 79
    iget-object v0, p0, Ltv/emby/embyatv/startup/SelectUserFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    new-instance v1, Ltv/emby/embyatv/startup/SelectUserFragment$ItemViewClickedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/startup/SelectUserFragment$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/startup/SelectUserFragment;Ltv/emby/embyatv/startup/SelectUserFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeClickedListener;->registerListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    return-void
.end method
