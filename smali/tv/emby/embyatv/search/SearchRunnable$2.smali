.class Ltv/emby/embyatv/search/SearchRunnable$2;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "SearchRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/search/SearchRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/search/SearchRunnable;

.field final synthetic val$tvAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$tvRow:Landroidx/leanback/widget/ListRow;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V
    .locals 0

    .line 82
    iput-object p1, p0, Ltv/emby/embyatv/search/SearchRunnable$2;->this$0:Ltv/emby/embyatv/search/SearchRunnable;

    iput-object p2, p0, Ltv/emby/embyatv/search/SearchRunnable$2;->val$tvAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p3, p0, Ltv/emby/embyatv/search/SearchRunnable$2;->val$tvRow:Landroidx/leanback/widget/ListRow;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 2

    .line 85
    iget-object v0, p0, Ltv/emby/embyatv/search/SearchRunnable$2;->val$tvAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/search/SearchRunnable$2;->this$0:Ltv/emby/embyatv/search/SearchRunnable;

    invoke-static {v0}, Ltv/emby/embyatv/search/SearchRunnable;->access$000(Ltv/emby/embyatv/search/SearchRunnable;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/search/SearchRunnable$2;->val$tvRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
