.class public final Lm1/x;
.super Lb2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm1/x$a;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public x(I)Lm1/x$a;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm1/x$a;

    return-object p1
.end method

.method public z(ILx1/e0;Lx1/e0;Lx1/d0;I)V
    .locals 1

    new-instance v0, Lm1/x$a;

    invoke-direct {v0, p2, p3, p4, p5}, Lm1/x$a;-><init>(Lx1/e0;Lx1/e0;Lx1/d0;I)V

    invoke-virtual {p0, p1, v0}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method
