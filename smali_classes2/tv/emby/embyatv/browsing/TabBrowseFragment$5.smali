.class Ltv/emby/embyatv/browsing/TabBrowseFragment$5;
.super Ljava/lang/Object;
.source "TabBrowseFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabBrowseFragment;->setupEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V
    .locals 0

    .line 455
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 1

    .line 458
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->OnMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V

    return-void
.end method
