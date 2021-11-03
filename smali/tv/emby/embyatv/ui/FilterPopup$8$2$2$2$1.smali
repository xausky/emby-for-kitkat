.class Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "FilterPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;)V
    .locals 0

    .line 256
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2$1;->this$4:Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 2

    .line 259
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2$1;->this$4:Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;->this$3:Ltv/emby/embyatv/ui/FilterPopup$8$2$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2;->this$2:Ltv/emby/embyatv/ui/FilterPopup$8$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$8$2;->this$1:Ltv/emby/embyatv/ui/FilterPopup$8;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/emby/embyatv/ui/FilterPopup;->access$002(Ltv/emby/embyatv/ui/FilterPopup;Z)Z

    return-void
.end method
