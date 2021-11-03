.class Ltv/emby/embyatv/startup/SelectServerFragment$2;
.super Ljava/lang/Object;
.source "SelectServerFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/SelectServerFragment;->setupEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/startup/SelectServerFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/SelectServerFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Ltv/emby/embyatv/startup/SelectServerFragment$2;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 1

    .line 99
    sget-object v0, Ltv/emby/embyatv/startup/SelectServerFragment$3;->$SwitchMap$tv$emby$embyatv$base$CustomMessage:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/base/CustomMessage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/startup/SelectServerFragment$2;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-static {p1}, Ltv/emby/embyatv/startup/SelectServerFragment;->access$400(Ltv/emby/embyatv/startup/SelectServerFragment;)Landroidx/leanback/widget/ListRow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/startup/SelectServerFragment$2;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-static {v0}, Ltv/emby/embyatv/startup/SelectServerFragment;->access$300(Ltv/emby/embyatv/startup/SelectServerFragment;)Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
