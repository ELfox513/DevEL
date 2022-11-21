.class public final Lr4/pl1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb3/v0;

.field public final b:Lc4/f;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lb3/v0;Lc4/f;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pl1;->a:Lb3/v0;

    iput-object p2, p0, Lr4/pl1;->b:Lc4/f;

    iput-object p3, p0, Lr4/pl1;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic b(Lr4/pl1;[BDZ)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const-wide/high16 v1, 0x4064000000000000L    # 160.0

    mul-double p2, p2, v1

    double-to-int p2, p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez p4, :cond_0

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_0
    sget-object p2, Lr4/rz;->u4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, p1, v0}, Lr4/pl1;->c([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    iput-boolean p3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int p3, p3, p4

    if-lez p3, :cond_1

    sget-object p4, Lr4/rz;->v4:Lr4/jz;

    add-int/lit8 p3, p3, -0x1

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p4}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    div-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x21

    div-int/lit8 p3, p3, 0x2

    shl-int/2addr p2, p3

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1
    invoke-virtual {p0, p1, v0}, Lr4/pl1;->c([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;DZ)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DZ)",
            "Lr4/h83<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/pl1;->a:Lb3/v0;

    invoke-virtual {v0, p1}, Lb3/v0;->a(Ljava/lang/String;)Lr4/h83;

    move-result-object p1

    new-instance v0, Lr4/nl1;

    invoke-direct {v0, p0, p2, p3, p4}, Lr4/nl1;-><init>(Lr4/pl1;DZ)V

    iget-object p2, p0, Lr4/pl1;->c:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, p2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final c([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lr4/pl1;->b:Lc4/f;

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lr4/pl1;->b:Lc4/f;

    invoke-interface {p2}, Lc4/f;->b()J

    move-result-wide v4

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p2, v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p1}, Lr4/ol1;->a(Landroid/graphics/Bitmap;)I

    move-result v6

    sub-long/2addr v4, v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x6c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Decoded image w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " h:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " time: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " on ui thread: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb3/w1;->k(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method
