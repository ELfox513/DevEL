.class public abstract Ln2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lp2/c;Lo2/g;Lr2/a;)Lo2/v;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance p3, Lo2/e;

    invoke-direct {p3, p0, p1, p2}, Lo2/e;-><init>(Landroid/content/Context;Lp2/c;Lo2/g;)V

    return-object p3

    :cond_0
    new-instance v0, Lo2/a;

    invoke-direct {v0, p0, p1, p3, p2}, Lo2/a;-><init>(Landroid/content/Context;Lp2/c;Lr2/a;Lo2/g;)V

    return-object v0
.end method
