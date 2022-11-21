.class public final Lt4/n;
.super Lu3/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/a$a<",
        "Lt4/d;",
        "Lu3/a$d$c;",
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
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Ljava/lang/Object;Lv3/e;Lv3/k;)Lu3/a$f;
    .locals 6

    check-cast p4, Lu3/a$d$c;

    new-instance p4, Lt4/d;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lt4/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Lv3/e;Lv3/k;)V

    return-object p4
.end method
