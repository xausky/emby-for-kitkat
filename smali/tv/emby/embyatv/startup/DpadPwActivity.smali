.class public Ltv/emby/embyatv/startup/DpadPwActivity;
.super Landroid/app/Activity;
.source "DpadPwActivity.java"


# instance fields
.field directItemId:Ljava/lang/String;

.field private doubleClickSensitivity:I

.field private keyUpDetected:Z

.field private lastKey:I

.field private lastKeyDown:J

.field private lastKeyUp:J

.field private longPressSensitivity:I

.field private password:Ljava/lang/String;

.field private processed:Z

.field pwField:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field user:Lmediabrowser/model/dto/UserDto;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 22
    iput-wide v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKeyDown:J

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKeyUp:J

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->keyUpDetected:Z

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->processed:Z

    const/16 v0, 0x258

    .line 27
    iput v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->longPressSensitivity:I

    const/16 v0, 0x15e

    .line 28
    iput v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->doubleClickSensitivity:I

    const-string v0, ""

    .line 29
    iput-object v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    return-void
.end method

.method private processKey(IZLandroid/view/KeyEvent;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 139
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    goto/16 :goto_5

    .line 133
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_1

    :cond_1
    const/4 p2, 0x3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    goto :goto_5

    .line 130
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const/4 p2, 0x7

    goto :goto_2

    :cond_2
    const/4 p2, 0x2

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    goto :goto_5

    .line 136
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    const/16 p2, 0x9

    goto :goto_3

    :cond_3
    const/4 p2, 0x4

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    goto :goto_5

    .line 127
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const/4 p2, 0x6

    goto :goto_4

    :cond_4
    const/4 p2, 0x1

    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    goto :goto_5

    .line 151
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p2

    int-to-char p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    .line 155
    :goto_5
    iget-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->pwField:Landroid/widget/TextView;

    iget-object p2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 39
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/DpadPwActivity;->setContentView(I)V

    const p1, 0x7f0a00e6

    .line 41
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/DpadPwActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->title:Landroid/widget/TextView;

    const p1, 0x7f0a00e5

    .line 42
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/DpadPwActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->pwField:Landroid/widget/TextView;

    .line 44
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object p1

    invoke-virtual {p0}, Ltv/emby/embyatv/startup/DpadPwActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "User"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lmediabrowser/model/dto/UserDto;

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/UserDto;

    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->user:Lmediabrowser/model/dto/UserDto;

    .line 45
    invoke-virtual {p0}, Ltv/emby/embyatv/startup/DpadPwActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ItemId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->directItemId:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->title:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->pwField:Landroid/widget/TextView;

    iget-object v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 172
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 166
    :pswitch_0
    iget-boolean p2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->keyUpDetected:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 167
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKeyDown:J

    .line 168
    iput p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKey:I

    .line 169
    iput-boolean v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->keyUpDetected:Z

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->keyUpDetected:Z

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 118
    :pswitch_0
    iput-boolean v1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->processed:Z

    .line 119
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_1
    const/16 v2, 0x17

    if-ne p1, v2, :cond_1

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKeyDown:J

    sub-long/2addr v2, v4

    iget v4, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->longPressSensitivity:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 71
    iget-boolean p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->processed:Z

    if-eqz p1, :cond_0

    return v0

    .line 72
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "Password finished"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->pwField:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 74
    iput-boolean v0, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->processed:Z

    .line 75
    iget-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLoginApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->directItemId:Ljava/lang/String;

    invoke-static {p1, p2, v1, p0, v2}, Ltv/emby/embyatv/util/Utils;->loginUser(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;Landroid/app/Activity;Ljava/lang/String;)V

    return v0

    :cond_1
    const/16 v2, 0x15

    if-ne p1, v2, :cond_2

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKeyDown:J

    sub-long/2addr v2, v4

    iget v4, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->longPressSensitivity:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 79
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "Password clear"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    .line 80
    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->pwField:Landroid/widget/TextView;

    iget-object p2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iput-boolean v1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->processed:Z

    return v0

    :cond_2
    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKeyDown:J

    sub-long/2addr v2, v4

    iget v4, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->longPressSensitivity:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 86
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "Requesting dialog..."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x81

    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 90
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1004a2

    .line 91
    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v2, 0x7f1004a3

    .line 92
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/startup/DpadPwActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 93
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v1, "Ok"

    new-instance v2, Ltv/emby/embyatv/startup/DpadPwActivity$1;

    invoke-direct {v2, p0, p1, p0}, Ltv/emby/embyatv/startup/DpadPwActivity$1;-><init>(Ltv/emby/embyatv/startup/DpadPwActivity;Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 94
    invoke-virtual {p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v0

    :cond_3
    const-wide v2, 0x7fffffffffffffffL

    .line 102
    iput-wide v2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKeyDown:J

    .line 103
    iget v2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKey:I

    if-ne v2, p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKeyUp:J

    sub-long/2addr v2, v4

    iget v4, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->doubleClickSensitivity:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    const-wide/16 v2, 0x0

    .line 104
    iput-wide v2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKeyUp:J

    .line 105
    iget-object v2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->pwField:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 107
    iget-object v2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    iget-object v3, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->password:Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1, v0, p2}, Ltv/emby/embyatv/startup/DpadPwActivity;->processKey(IZLandroid/view/KeyEvent;)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->lastKeyUp:J

    .line 111
    iget-object v2, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->pwField:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 112
    invoke-direct {p0, p1, v1, p2}, Ltv/emby/embyatv/startup/DpadPwActivity;->processKey(IZLandroid/view/KeyEvent;)V

    .line 114
    :goto_0
    iput-boolean v1, p0, Ltv/emby/embyatv/startup/DpadPwActivity;->processed:Z

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
