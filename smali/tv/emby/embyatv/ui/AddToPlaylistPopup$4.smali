.class Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;
.super Lmediabrowser/apiinteraction/Response;
.source "AddToPlaylistPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/AddToPlaylistPopup;->show(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/querying/ItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)V
    .locals 0

    .line 185
    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 209
    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$300(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const-string v1, "Error loading dialog: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 185
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 4

    .line 188
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$500(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 192
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$700(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/Spinner;

    move-result-object p1

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$300(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    const v2, 0x1090008

    iget-object v3, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v3}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$500(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 193
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLastPlaylistAddId()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 196
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v2}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$500(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 197
    iget-object v2, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v2}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$500(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_2
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$500(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$700(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 203
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$600(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$300(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {p1, v0, v2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 204
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$700(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->requestFocus()Z

    return-void
.end method
