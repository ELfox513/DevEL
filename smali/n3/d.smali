.class public final Ln3/d;
.super Lu3/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/a$a<",
        "Lu4/b;",
        "Ln3/c;",
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
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Ljava/lang/Object;Lu3/f$a;Lu3/f$b;)Lu3/a$f;
    .locals 7

    move-object v4, p4

    check-cast v4, Ln3/c;

    new-instance p4, Lu4/b;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lu4/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Ln3/c;Lu3/f$a;Lu3/f$b;)V

    return-object p4
.end method
