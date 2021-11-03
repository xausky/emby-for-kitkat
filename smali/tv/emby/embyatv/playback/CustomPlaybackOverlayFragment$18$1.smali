.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$1;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;

.field final synthetic val$rowItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 0

    .line 667
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$1;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;

    iput-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$1;->val$rowItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 670
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "pref_cast_nav_warn"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 671
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$1;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$1;->val$rowItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1100(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    return-void
.end method
