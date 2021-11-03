.class Ltv/emby/embyatv/browsing/StdGridFragment$18;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;->setupEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 868
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$18;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 1

    .line 871
    sget-object v0, Ltv/emby/embyatv/browsing/StdGridFragment$23;->$SwitchMap$tv$emby$embyatv$base$CustomMessage:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/base/CustomMessage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 878
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$18;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$18;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz p1, :cond_0

    .line 879
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$18;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$18;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 874
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$18;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$400(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
