.class public abstract Ltv/emby/embyatv/base/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# instance fields
.field private allowLongPressBack:Z

.field private allowPlayFromHere:Z

.field private app:Ltv/emby/embyatv/TvApp;

.field private farRight:I

.field private focusContentOnEntry:Z

.field private handler:Landroid/os/Handler;

.field private keyListener:Ltv/emby/embyatv/base/IKeyListener;

.field protected lastNavKeyDown:J

.field private longPressBackListener:Ltv/emby/embyatv/base/IMessageListener;

.field private messageIcon:Landroid/widget/ImageView;

.field private messageListener:Ltv/emby/embyatv/base/IMessageListener;

.field private messageMessage:Landroid/widget/TextView;

.field private messageTimeout:I

.field private messageTitle:Landroid/widget/TextView;

.field private messageUi:Landroid/view/View;

.field private msgPos:I

.field private navKeyDelay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 28
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->app:Ltv/emby/embyatv/TvApp;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->handler:Landroid/os/Handler;

    const/16 v0, 0x1770

    .line 38
    iput v0, p0, Ltv/emby/embyatv/base/BaseActivity;->messageTimeout:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Ltv/emby/embyatv/base/BaseActivity;->allowPlayFromHere:Z

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Ltv/emby/embyatv/base/BaseActivity;->allowLongPressBack:Z

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/base/BaseActivity;->focusContentOnEntry:Z

    .line 157
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->getNavKeyDelay()I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/base/BaseActivity;->navKeyDelay:I

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/base/BaseActivity;)Ltv/emby/embyatv/TvApp;
    .locals 0

    .line 26
    iget-object p0, p0, Ltv/emby/embyatv/base/BaseActivity;->app:Ltv/emby/embyatv/TvApp;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/base/BaseActivity;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Ltv/emby/embyatv/base/BaseActivity;->messageUi:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Ltv/emby/embyatv/base/BaseActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 26
    iput-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageUi:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$202(Ltv/emby/embyatv/base/BaseActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iput-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$302(Ltv/emby/embyatv/base/BaseActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iput-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageMessage:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$402(Ltv/emby/embyatv/base/BaseActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    iput-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Ltv/emby/embyatv/base/BaseActivity;)I
    .locals 0

    .line 26
    iget p0, p0, Ltv/emby/embyatv/base/BaseActivity;->farRight:I

    return p0
.end method

.method static synthetic access$502(Ltv/emby/embyatv/base/BaseActivity;I)I
    .locals 0

    .line 26
    iput p1, p0, Ltv/emby/embyatv/base/BaseActivity;->farRight:I

    return p1
.end method

.method static synthetic access$602(Ltv/emby/embyatv/base/BaseActivity;I)I
    .locals 0

    .line 26
    iput p1, p0, Ltv/emby/embyatv/base/BaseActivity;->msgPos:I

    return p1
.end method


# virtual methods
.method public disableLongPressBack()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Ltv/emby/embyatv/base/BaseActivity;->allowLongPressBack:Z

    return-void
.end method

.method public focusContentOnEntry()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Ltv/emby/embyatv/base/BaseActivity;->focusContentOnEntry:Z

    return v0
.end method

.method public getAllowPlayFromHere()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Ltv/emby/embyatv/base/BaseActivity;->allowPlayFromHere:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1, p0}, Ltv/emby/embyatv/TvApp;->setCurrentActivity(Ltv/emby/embyatv/base/BaseActivity;)V

    .line 51
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getBrowseTheme()I

    move-result p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->setTheme(I)V

    .line 54
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->handler:Landroid/os/Handler;

    new-instance v0, Ltv/emby/embyatv/base/BaseActivity$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/base/BaseActivity$1;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 186
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_1

    .line 181
    :cond_1
    :goto_0
    iget-wide v0, p0, Ltv/emby/embyatv/base/BaseActivity;->lastNavKeyDown:J

    iget v2, p0, Ltv/emby/embyatv/base/BaseActivity;->navKeyDelay:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 184
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/base/BaseActivity;->lastNavKeyDown:J

    .line 189
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 162
    iget-boolean p1, p0, Ltv/emby/embyatv/base/BaseActivity;->allowLongPressBack:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "Returning Home..."

    .line 163
    invoke-static {p0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltv/emby/embyatv/browsing/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "CameFromLongPress"

    .line 165
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->longPressBackListener:Ltv/emby/embyatv/base/IMessageListener;

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->longPressBackListener:Ltv/emby/embyatv/base/IMessageListener;

    sget-object v0, Ltv/emby/embyatv/base/CustomMessage;->LongPressBack:Ltv/emby/embyatv/base/CustomMessage;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/base/IMessageListener;->onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V

    :cond_1
    :goto_0
    return p2

    .line 175
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 194
    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->keyListener:Ltv/emby/embyatv/base/IKeyListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->keyListener:Ltv/emby/embyatv/base/IKeyListener;

    invoke-interface {v0, p1, p2}, Ltv/emby/embyatv/base/IKeyListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 122
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 123
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltv/emby/embyatv/TvApp;->setCurrentActivity(Ltv/emby/embyatv/base/BaseActivity;)V

    .line 124
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLaunchingActivity(Z)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 199
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltv/emby/embyatv/TvApp;->showSearch(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onUserInteraction()V
    .locals 3

    .line 129
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onUserInteraction()V

    .line 130
    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->app:Ltv/emby/embyatv/TvApp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/TvApp;->setLastUserInteraction(J)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Ltv/emby/embyatv/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Ltv/emby/embyatv/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public registerKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->keyListener:Ltv/emby/embyatv/base/IKeyListener;

    return-void
.end method

.method public registerLongPressBackListener(Ltv/emby/embyatv/base/IMessageListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->longPressBackListener:Ltv/emby/embyatv/base/IMessageListener;

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Ltv/emby/embyatv/base/BaseActivity;->allowLongPressBack:Z

    return-void
.end method

.method public registerMessageListener(Ltv/emby/embyatv/base/IMessageListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageListener:Ltv/emby/embyatv/base/IMessageListener;

    return-void
.end method

.method public sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 1

    .line 153
    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->messageListener:Ltv/emby/embyatv/base/IMessageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->messageListener:Ltv/emby/embyatv/base/IMessageListener;

    invoke-interface {v0, p1}, Ltv/emby/embyatv/base/IMessageListener;->onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V

    :cond_0
    return-void
.end method

.method public setAllowPlayFromHere(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Ltv/emby/embyatv/base/BaseActivity;->allowPlayFromHere:Z

    return-void
.end method

.method public setFocusContentOnEntry(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Ltv/emby/embyatv/base/BaseActivity;->focusContentOnEntry:Z

    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 78
    iget v3, p0, Ltv/emby/embyatv/base/BaseActivity;->messageTimeout:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ltv/emby/embyatv/base/BaseActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 82
    invoke-virtual/range {v0 .. v5}, Ltv/emby/embyatv/base/BaseActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 86
    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->messageUi:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->messageTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageMessage:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageMessage:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getSummaryTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p4, :cond_0

    .line 91
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageIcon:Landroid/widget/ImageView;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    if-eqz p5, :cond_1

    .line 92
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageUi:Landroid/view/View;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageUi:Landroid/view/View;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getMessageBackgroundResource()I

    move-result p2

    goto :goto_0

    .line 93
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->messageUi:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Ltv/emby/embyatv/base/BaseActivity;->msgPos:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p4, 0x12c

    invoke-virtual {p1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 94
    iget-object p1, p0, Ltv/emby/embyatv/base/BaseActivity;->handler:Landroid/os/Handler;

    new-instance p2, Ltv/emby/embyatv/base/BaseActivity$2;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/base/BaseActivity$2;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public unRegisterKeyListener()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->keyListener:Ltv/emby/embyatv/base/IKeyListener;

    return-void
.end method

.method public unRegisterMessageListener()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Ltv/emby/embyatv/base/BaseActivity;->messageListener:Ltv/emby/embyatv/base/IMessageListener;

    return-void
.end method
