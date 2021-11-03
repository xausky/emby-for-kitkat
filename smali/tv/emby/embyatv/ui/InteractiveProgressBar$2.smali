.class Ltv/emby/embyatv/ui/InteractiveProgressBar$2;
.super Ljava/lang/Object;
.source "InteractiveProgressBar.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/InteractiveProgressBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/InteractiveProgressBar;)V
    .locals 0

    .line 137
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 140
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$300(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 141
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const-wide/16 v1, 0x0

    const/16 v3, 0x7e

    const/16 v4, 0x6d

    const/16 v5, 0x60

    const/16 v6, 0x55

    const/16 v7, 0x42

    const/4 v8, 0x1

    if-nez p1, :cond_9

    if-eq p2, v7, :cond_8

    if-eq p2, v6, :cond_8

    if-eq p2, v5, :cond_8

    if-eq p2, v4, :cond_8

    if-eq p2, v3, :cond_8

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto/16 :goto_4

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p1

    if-nez p1, :cond_0

    return v8

    :cond_0
    const/4 p1, 0x1

    .line 158
    :goto_0
    iget-object p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p2, v8}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1002(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)Z

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 160
    iget-object v3, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v3}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1100(Ltv/emby/embyatv/ui/InteractiveProgressBar;)J

    move-result-wide v3

    sub-long v3, p2, v3

    iget-object v5, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v5}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1200(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    .line 162
    iget-object v3, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p1

    iget-object v4, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v4}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1300(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p1

    iget-object v4, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v4}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1400(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result v4

    add-int/2addr p1, v4

    :goto_1
    invoke-static {v3, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$902(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)I

    .line 163
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1500(Ltv/emby/embyatv/ui/InteractiveProgressBar;)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, p2, p3}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1502(Ltv/emby/embyatv/ui/InteractiveProgressBar;J)J

    .line 164
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p1

    if-gez p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$902(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)I

    .line 165
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p1

    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$100(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    add-int/lit16 v1, v1, -0x3e8

    if-le p1, v1, :cond_4

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$100(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    add-int/lit16 v1, v1, -0x3e8

    invoke-static {p1, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$902(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)I

    .line 166
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1500(Ltv/emby/embyatv/ui/InteractiveProgressBar;)J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/16 v3, 0x1964

    cmp-long p1, v1, v3

    if-lez p1, :cond_5

    .line 167
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    :goto_2
    invoke-static {p1, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1202(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)I

    goto :goto_3

    :cond_5
    const-wide/16 v3, 0xdac

    cmp-long p1, v1, v3

    if-lez p1, :cond_6

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    const/16 v0, 0x4b

    goto :goto_2

    .line 168
    :cond_6
    :goto_3
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, p2, p3}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1102(Ltv/emby/embyatv/ui/InteractiveProgressBar;J)J

    .line 169
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-object p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$200(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)V

    :cond_7
    return v8

    .line 179
    :cond_8
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 180
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->positionSelected(I)V

    return v8

    .line 185
    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v8, :cond_d

    .line 186
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, v1, v2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1502(Ltv/emby/embyatv/ui/InteractiveProgressBar;J)J

    .line 187
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    const/16 p3, 0x96

    invoke-static {p1, p3}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1202(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)I

    if-eq p2, v7, :cond_c

    if-eq p2, v6, :cond_c

    if-eq p2, v5, :cond_c

    if-eq p2, v4, :cond_c

    if-eq p2, v3, :cond_c

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    goto :goto_4

    .line 206
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1000(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z

    move-result p1

    .line 207
    iget-object p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p2, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1002(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)Z

    return p1

    .line 211
    :pswitch_4
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1600(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1600(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 212
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, v8}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$600(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)V

    return v8

    .line 217
    :cond_a
    :pswitch_5
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$000(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 218
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$600(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)V

    .line 219
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$502(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)Z

    .line 220
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$500(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z

    move-result p1

    if-nez p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    :cond_c
    :pswitch_6
    return v8

    :cond_d
    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x13
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x57
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x66
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
