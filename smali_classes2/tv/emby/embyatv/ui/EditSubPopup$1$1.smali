.class Ltv/emby/embyatv/ui/EditSubPopup$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "EditSubPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/EditSubPopup$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "[",
        "Lmediabrowser/model/dto/SubtitleSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/EditSubPopup$1;)V
    .locals 0

    .line 88
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 139
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const v1, 0x7f1003e4

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 140
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error searching for subs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, [Lmediabrowser/model/dto/SubtitleSearchResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->onResponse([Lmediabrowser/model/dto/SubtitleSearchResult;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/dto/SubtitleSearchResult;)V
    .locals 7

    .line 91
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 94
    iget-object v4, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    iget-object v4, v4, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v4}, Ltv/emby/embyatv/ui/EditSubPopup;->access$700(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0d00bd

    const/4 v5, 0x0

    .line 95
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a018c

    .line 96
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v3}, Lmediabrowser/model/dto/SubtitleSearchResult;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    iget-object v5, v5, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v5}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v5

    const v6, 0x7f0a0180

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v5, v3, v6}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/SubtitleSearchResult;Landroid/widget/LinearLayout;)V

    .line 98
    invoke-virtual {v3}, Lmediabrowser/model/dto/SubtitleSearchResult;->getName()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual {v3}, Lmediabrowser/model/dto/SubtitleSearchResult;->getId()Ljava/lang/String;

    move-result-object v3

    .line 100
    new-instance v6, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;

    invoke-direct {v6, p0, v5, v3}, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;-><init>(Ltv/emby/embyatv/ui/EditSubPopup$1$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v3, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    iget-object v3, v3, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v3}, Ltv/emby/embyatv/ui/EditSubPopup;->access$100(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$700(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
