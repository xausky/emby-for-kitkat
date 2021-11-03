.class Ltv/emby/embyatv/browsing/StdBrowseFragment$8;
.super Ljava/lang/Object;
.source "StdBrowseFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IKeyListener;


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

    .line 385
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 388
    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {p1, p2, v0}, Ltv/emby/embyatv/util/KeyProcessor;->HandleKey(ILtv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)Z

    move-result p1

    return p1
.end method
