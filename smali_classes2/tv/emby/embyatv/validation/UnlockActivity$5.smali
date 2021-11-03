.class Ltv/emby/embyatv/validation/UnlockActivity$5;
.super Ljava/lang/Object;
.source "UnlockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/UnlockActivity;->getEmailAddress(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/validation/UnlockActivity;

.field final synthetic val$email:Landroid/widget/EditText;

.field final synthetic val$response:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/UnlockActivity;Landroid/widget/EditText;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 207
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$5;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iput-object p2, p0, Ltv/emby/embyatv/validation/UnlockActivity$5;->val$email:Landroid/widget/EditText;

    iput-object p3, p0, Ltv/emby/embyatv/validation/UnlockActivity$5;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 210
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$5;->val$email:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "@"

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Ltv/emby/embyatv/validation/UnlockActivity$5;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$5;->val$response:Lmediabrowser/apiinteraction/Response;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Invalid Email Address"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
