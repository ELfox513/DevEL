.class public Lh4/d$b;
.super Lu3/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/a$a<",
        "Lk4/l;",
        "Lh4/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu3/a$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh4/q;)V
    .locals 0

    invoke-direct {p0}, Lh4/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Ljava/lang/Object;Lu3/f$a;Lu3/f$b;)Lu3/a$f;
    .locals 7

    check-cast p4, Lh4/d$a;

    if-nez p4, :cond_0

    new-instance p4, Lh4/d$a$a;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lh4/d$a$a;-><init>(Lh4/q;)V

    invoke-virtual {p4}, Lh4/d$a$a;->a()Lh4/d$a;

    move-result-object p4

    :cond_0
    move-object v4, p4

    new-instance p4, Lk4/l;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lk4/l;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Lh4/d$a;Lv3/e;Lv3/k;)V

    return-object p4
.end method
