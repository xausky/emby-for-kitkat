.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$2;
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

    .line 660
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;

    iput-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$2;->val$rowItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 663
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$2;->val$rowItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1100(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    return-void
.end method
