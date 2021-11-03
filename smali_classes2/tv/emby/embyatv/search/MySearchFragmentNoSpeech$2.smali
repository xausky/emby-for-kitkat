.class Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$2;
.super Ljava/lang/Object;
.source "MySearchFragmentNoSpeech.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)V
    .locals 0

    .line 77
    iput-object p1, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$2;->this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 90
    iget-object v0, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$2;->this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;

    invoke-static {v0}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->access$100(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$2;->this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;

    invoke-static {v1}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->access$000(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)Ltv/emby/embyatv/search/SearchRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$2;->this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;

    invoke-static {v0}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->access$000(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)Ltv/emby/embyatv/search/SearchRunnable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/search/SearchRunnable;->setQueryString(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$2;->this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;

    invoke-static {p1}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->access$100(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$2;->this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;

    invoke-static {v0}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->access$000(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)Ltv/emby/embyatv/search/SearchRunnable;

    move-result-object v0

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$2;->this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;

    invoke-static {p1}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->access$200(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
