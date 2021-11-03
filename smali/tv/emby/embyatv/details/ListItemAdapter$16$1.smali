.class Ltv/emby/embyatv/details/ListItemAdapter$16$1;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter$16;->onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ListItemAdapter$16;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter$16;)V
    .locals 0

    .line 675
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$16$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 678
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$16$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$16;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$16;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$700(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->RefreshCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    return-void
.end method
