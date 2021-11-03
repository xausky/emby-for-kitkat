.class public final Lmediabrowser/model/extensions/BoolHelper;
.super Ljava/lang/Object;
.source "BoolHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TryParseCultureInvariant(Ljava/lang/String;Ltangible/RefObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltangible/RefObject<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 14
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p1, Ltangible/RefObject;->argValue:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
