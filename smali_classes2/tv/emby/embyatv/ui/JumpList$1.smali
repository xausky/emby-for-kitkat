.class Ltv/emby/embyatv/ui/JumpList$1;
.super Lmediabrowser/apiinteraction/Response;
.source "JumpList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/JumpList;->init(Landroid/content/Context;Lmediabrowser/model/querying/ItemQuery;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/util/List<",
        "Ljava/lang/Character;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/JumpList;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/JumpList;ZLandroid/content/Context;)V
    .locals 0

    .line 42
    iput-object p1, p0, Ltv/emby/embyatv/ui/JumpList$1;->this$0:Ltv/emby/embyatv/ui/JumpList;

    iput-boolean p2, p0, Ltv/emby/embyatv/ui/JumpList$1;->val$reverse:Z

    iput-object p3, p0, Ltv/emby/embyatv/ui/JumpList$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/JumpList$1;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Ltv/emby/embyatv/ui/JumpList$1;->val$reverse:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 46
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 47
    iget-object v1, p0, Ltv/emby/embyatv/ui/JumpList$1;->this$0:Ltv/emby/embyatv/ui/JumpList;

    new-instance v8, Ltv/emby/embyatv/ui/TextButton;

    iget-object v3, p0, Ltv/emby/embyatv/ui/JumpList$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    new-instance v6, Ltv/emby/embyatv/ui/JumpList$1$1;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/ui/JumpList$1$1;-><init>(Ltv/emby/embyatv/ui/JumpList$1;)V

    const/4 v7, 0x6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ltv/emby/embyatv/ui/TextButton;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1, v8}, Ltv/emby/embyatv/ui/JumpList;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
