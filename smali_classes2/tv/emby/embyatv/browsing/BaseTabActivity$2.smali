.class Ltv/emby/embyatv/browsing/BaseTabActivity$2;
.super Ljava/lang/Object;
.source "BaseTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 121
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 124
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isConnectLogin()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v3, 0x4

    const v4, 0x7f10050a

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 126
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getOtherUsers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getOtherUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 127
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getOtherUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v3, 0x64

    const/4 v3, 0x0

    const/16 v4, 0x64

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmediabrowser/model/dto/UserDto;

    .line 128
    invoke-virtual {v5}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v7, v7, Ltv/emby/embyatv/browsing/BaseTabActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const v10, 0x7f1005e7

    invoke-virtual {v9, v10}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v2, v4, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v4, v7

    move v3, v8

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 132
    :goto_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    add-int/lit8 v3, v1, 0x1

    const v4, 0x7f100509

    invoke-interface {p1, v2, v2, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 133
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x5

    add-int/lit8 v4, v3, 0x1

    const v5, 0x7f1005e6

    invoke-interface {p1, v2, v1, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 134
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isPaid()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x3

    add-int/lit8 v3, v4, 0x1

    iget-object v5, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const v6, 0x7f100600

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    move v3, v4

    .line 135
    :goto_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "pref_enable_debug"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x2

    const v4, 0x7f1005a4

    invoke-interface {p1, v2, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 137
    :cond_5
    new-instance p1, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity$2;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 238
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
