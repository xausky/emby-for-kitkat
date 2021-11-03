.class Ltv/emby/embyatv/startup/SelectServerFragment$1;
.super Ljava/lang/Object;
.source "SelectServerFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IKeyListener;


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

    .line 89
    iput-object p1, p0, Ltv/emby/embyatv/startup/SelectServerFragment$1;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 92
    iget-object p2, p0, Ltv/emby/embyatv/startup/SelectServerFragment$1;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-static {p2}, Ltv/emby/embyatv/startup/SelectServerFragment;->access$100(Ltv/emby/embyatv/startup/SelectServerFragment;)Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/startup/SelectServerFragment$1;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-static {v0}, Ltv/emby/embyatv/startup/SelectServerFragment;->access$200(Ltv/emby/embyatv/startup/SelectServerFragment;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Ltv/emby/embyatv/util/KeyProcessor;->HandleKey(ILtv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)Z

    move-result p1

    return p1
.end method
