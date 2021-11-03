.class Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "SelectServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener$1;->this$1:Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 3

    .line 130
    iget-object v0, p0, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener$1;->this$1:Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;

    iget-object v0, v0, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-static {v0}, Ltv/emby/embyatv/startup/SelectServerFragment;->access$500(Ltv/emby/embyatv/startup/SelectServerFragment;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setConnectLogin(Z)V

    .line 131
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_login_behavior"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    iget-object v0, p0, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener$1;->this$1:Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;

    iget-object v0, v0, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/startup/SelectServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
