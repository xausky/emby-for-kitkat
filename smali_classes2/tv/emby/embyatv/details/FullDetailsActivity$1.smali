.class Ltv/emby/embyatv/details/FullDetailsActivity$1;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Ltv/emby/embyatv/base/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$1;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 1

    .line 187
    sget-object v0, Ltv/emby/embyatv/details/FullDetailsActivity$47;->$SwitchMap$tv$emby$embyatv$base$CustomMessage:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/base/CustomMessage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 195
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$1;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$1;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$1;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$1;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$1;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$200(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
