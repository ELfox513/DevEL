.class public Lu1/b$c;
.super Lu1/b$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu1/b;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1/b$j<",
        "Lk1/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lu1/b;


# direct methods
.method public constructor <init>(Lu1/b;Lk1/f$g;)V
    .locals 0

    iput-object p1, p0, Lu1/b$c;->c:Lu1/b;

    invoke-direct {p0, p1, p2}, Lu1/b$j;-><init>(Lu1/b;Lk1/f$g;)V

    return-void
.end method


# virtual methods
.method public a(Lk1/s;)Lk1/s$a;
    .locals 0

    iget-object p1, p1, Lk1/s;->k:Lk1/s$a;

    return-object p1
.end method

.method public bridge synthetic d(Lk1/f$g;Lu1/c;I)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lu1/b$c;->i(Lk1/f$g;Lu1/c;I)Lk1/t;

    move-result-object p1

    return-object p1
.end method

.method public g(ILu1/c;II)V
    .locals 0

    iget-object p3, p0, Lu1/b$c;->c:Lu1/b;

    invoke-static {p3}, Lu1/b;->f(Lu1/b;)Lk1/f$g;

    move-result-object p3

    invoke-virtual {p3}, Lk1/f$g;->t()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lu1/c;->C(II)V

    return-void
.end method

.method public bridge synthetic h(Ljava/lang/Comparable;)V
    .locals 0

    check-cast p1, Lk1/t;

    invoke-virtual {p0, p1}, Lu1/b$c;->j(Lk1/t;)V

    return-void
.end method

.method public i(Lk1/f$g;Lu1/c;I)Lk1/t;
    .locals 0

    invoke-virtual {p1}, Lk1/f$g;->P()Lk1/t;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu1/c;->v(Lk1/t;)Lk1/t;

    move-result-object p1

    return-object p1
.end method

.method public j(Lk1/t;)V
    .locals 1

    iget-object v0, p0, Lu1/b$c;->c:Lu1/b;

    invoke-static {v0}, Lu1/b;->f(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk1/f$g;->Z(Lk1/t;)V

    return-void
.end method
