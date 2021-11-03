.class Ltv/emby/embyatv/ui/JumpList$1$1;
.super Ljava/lang/Object;
.source "JumpList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/JumpList$1;->onResponse(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/JumpList$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/JumpList$1;)V
    .locals 0

    .line 47
    iput-object p1, p0, Ltv/emby/embyatv/ui/JumpList$1$1;->this$1:Ltv/emby/embyatv/ui/JumpList$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    check-cast p1, Ltv/emby/embyatv/ui/TextButton;

    .line 51
    iget-object v0, p0, Ltv/emby/embyatv/ui/JumpList$1$1;->this$1:Ltv/emby/embyatv/ui/JumpList$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/JumpList$1;->this$0:Ltv/emby/embyatv/ui/JumpList;

    invoke-static {v0}, Ltv/emby/embyatv/ui/JumpList;->access$000(Ltv/emby/embyatv/ui/JumpList;)Ltv/emby/embyatv/ui/CharSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/JumpList$1$1;->this$1:Ltv/emby/embyatv/ui/JumpList$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/JumpList$1;->this$0:Ltv/emby/embyatv/ui/JumpList;

    invoke-static {v0}, Ltv/emby/embyatv/ui/JumpList;->access$000(Ltv/emby/embyatv/ui/JumpList;)Ltv/emby/embyatv/ui/CharSelectedListener;

    move-result-object v0

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/TextButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/CharSelectedListener;->onCharSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
