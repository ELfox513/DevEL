.class public final Lh5/b;
.super Lu3/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/a$a<",
        "Li5/a;",
        "Lh5/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu3/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Ljava/lang/Object;Lu3/f$a;Lu3/f$b;)Lu3/a$f;
    .locals 8

    check-cast p4, Lh5/a;

    new-instance p4, Li5/a;

    invoke-static {p3}, Li5/a;->k0(Lx3/d;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v3, 0x1

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Li5/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLx3/d;Landroid/os/Bundle;Lu3/f$a;Lu3/f$b;)V

    return-object p4
.end method
