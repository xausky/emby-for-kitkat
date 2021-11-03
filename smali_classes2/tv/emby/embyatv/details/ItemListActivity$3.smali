.class Ltv/emby/embyatv/details/ItemListActivity$3;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Ltv/emby/embyatv/base/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;)V
    .locals 0

    .line 221
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$3;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 1

    .line 224
    sget-object v0, Ltv/emby/embyatv/base/CustomMessage;->RefreshCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

    if-ne p1, v0, :cond_0

    .line 226
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$3;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$3;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$900(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$1000(Ltv/emby/embyatv/details/ItemListActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
