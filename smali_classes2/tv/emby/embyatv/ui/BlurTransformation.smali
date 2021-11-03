.class public Ltv/emby/embyatv/ui/BlurTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "BlurTransformation.java"


# instance fields
.field private blurRadius:I

.field private rs:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/16 v0, 0xa

    .line 23
    iput v0, p0, Ltv/emby/embyatv/ui/BlurTransformation;->blurRadius:I

    .line 27
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/ui/BlurTransformation;->rs:Landroid/renderscript/RenderScript;

    .line 28
    iput p2, p0, Ltv/emby/embyatv/ui/BlurTransformation;->blurRadius:I

    return-void
.end method


# virtual methods
.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 34
    iget p1, p0, Ltv/emby/embyatv/ui/BlurTransformation;->blurRadius:I

    if-lez p1, :cond_0

    .line 35
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 38
    iget-object p2, p0, Ltv/emby/embyatv/ui/BlurTransformation;->rs:Landroid/renderscript/RenderScript;

    sget-object p3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    const/16 p4, 0x80

    invoke-static {p2, p1, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p2

    .line 39
    iget-object p3, p0, Ltv/emby/embyatv/ui/BlurTransformation;->rs:Landroid/renderscript/RenderScript;

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object p3

    .line 42
    iget-object p4, p0, Ltv/emby/embyatv/ui/BlurTransformation;->rs:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Ltv/emby/embyatv/ui/BlurTransformation;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p4

    .line 43
    invoke-virtual {p4, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 46
    iget p2, p0, Ltv/emby/embyatv/ui/BlurTransformation;->blurRadius:I

    int-to-float p2, p2

    invoke-virtual {p4, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 49
    invoke-virtual {p4, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 52
    invoke-virtual {p3, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_0
    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    const-string v0, "blur transformation"

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
