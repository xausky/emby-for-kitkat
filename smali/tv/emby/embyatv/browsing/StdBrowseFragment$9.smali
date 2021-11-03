.class Ltv/emby/embyatv/browsing/StdBrowseFragment$9;
.super Ljava/lang/Object;
.source "StdBrowseFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdBrowseFragment;->setupEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V
    .locals 0

    .line 392
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$9;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 1

    .line 395
    sget-object v0, Ltv/emby/embyatv/browsing/StdBrowseFragment$11;->$SwitchMap$tv$emby$embyatv$base$CustomMessage:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/base/CustomMessage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$9;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$700(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    :goto_0
    return-void
.end method
