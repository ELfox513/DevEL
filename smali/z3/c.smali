.class public final Lz3/c;
.super Lu3/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/a$a<",
        "Lz3/e;",
        "Lx3/x;",
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
.method public final bridge synthetic b(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Ljava/lang/Object;Lv3/e;Lv3/k;)Lu3/a$f;
    .locals 7

    move-object v4, p4

    check-cast v4, Lx3/x;

    new-instance p4, Lz3/e;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lz3/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Lx3/x;Lv3/e;Lv3/k;)V

    return-object p4
.end method
