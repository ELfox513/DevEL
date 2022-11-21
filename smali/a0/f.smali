.class public La0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La0/f$c;,
        La0/f$a;,
        La0/f$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;La0/d;IZILandroid/os/Handler;La0/f$c;)Landroid/graphics/Typeface;
    .locals 1

    new-instance v0, La0/a;

    invoke-direct {v0, p6, p5}, La0/a;-><init>(La0/f$c;Landroid/os/Handler;)V

    if-eqz p3, :cond_0

    invoke-static {p0, p1, v0, p2, p4}, La0/e;->e(Landroid/content/Context;La0/d;La0/a;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, v0}, La0/e;->d(Landroid/content/Context;La0/d;ILjava/util/concurrent/Executor;La0/a;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
