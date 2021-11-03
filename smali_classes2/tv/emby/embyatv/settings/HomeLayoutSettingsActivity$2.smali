.class Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$2;
.super Ljava/lang/Object;
.source "HomeLayoutSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$2;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 124
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getUserViews()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$2;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

    invoke-static {v1, p1}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->access$000(Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$2;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mExcludesChanged:Z

    if-eqz p2, :cond_0

    .line 128
    iget-object p2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$2;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

    iget-object p2, p2, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->excludedIds:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$2;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

    iget-object p2, p2, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->excludedIds:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$2;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

    iget-object p2, p2, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->excludedIds:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
