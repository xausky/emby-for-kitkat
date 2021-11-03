.class Ltv/emby/embyatv/ui/ExpandableTextView$1;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/ExpandableTextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/ExpandableTextView;

.field final synthetic val$us:Landroid/view/View;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/ExpandableTextView;Landroid/view/View;)V
    .locals 0

    .line 39
    iput-object p1, p0, Ltv/emby/embyatv/ui/ExpandableTextView$1;->this$0:Ltv/emby/embyatv/ui/ExpandableTextView;

    iput-object p2, p0, Ltv/emby/embyatv/ui/ExpandableTextView$1;->val$us:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 42
    iget-object p1, p0, Ltv/emby/embyatv/ui/ExpandableTextView$1;->this$0:Ltv/emby/embyatv/ui/ExpandableTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ExpandableTextView;->playSoundEffect(I)V

    .line 43
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setLaunchingActivity(Z)V

    .line 44
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-class v1, Ltv/emby/embyatv/details/ExpandedTextActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "text"

    .line 45
    iget-object v1, p0, Ltv/emby/embyatv/ui/ExpandableTextView$1;->this$0:Ltv/emby/embyatv/ui/ExpandableTextView;

    invoke-virtual {v1}, Ltv/emby/embyatv/ui/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/ExpandableTextView$1;->val$us:Landroid/view/View;

    const-string v2, "summary"

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    .line 48
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
