.class Ltv/emby/embyatv/browsing/StdBrowseFragment$7;
.super Ljava/lang/Object;
.source "StdBrowseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdBrowseFragment;->setupEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V
    .locals 0

    .line 370
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 374
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->showSearch(Landroid/app/Activity;)V

    return-void
.end method
