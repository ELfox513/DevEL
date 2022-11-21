.class public Lu1/b$i;
.super Lu1/b$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu1/b;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1/b$j<",
        "Lk1/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lu1/b;


# direct methods
.method public constructor <init>(Lu1/b;Lk1/f$g;)V
    .locals 0

    iput-object p1, p0, Lu1/b$i;->c:Lu1/b;

    invoke-direct {p0, p1, p2}, Lu1/b$j;-><init>(Lu1/b;Lk1/f$g;)V

    return-void
.end method


# virtual methods
.method public a(Lk1/s;)Lk1/s$a;
    .locals 0

    iget-object p1, p1, Lk1/s;->r:Lk1/s$a;

    return-object p1
.end method

.method public bridge synthetic d(Lk1/f$g;Lu1/c;I)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lu1/b$i;->i(Lk1/f$g;Lu1/c;I)Lk1/a;

    move-result-object p1

    return-object p1
.end method

.method public g(ILu1/c;II)V
    .locals 0

    iget-object p3, p0, Lu1/b$i;->c:Lu1/b;

    invoke-static {p3}, Lu1/b;->g(Lu1/b;)Lk1/f$g;

    move-result-object p3

    invoke-virtual {p3}, Lk1/f$g;->t()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lu1/c;->y(II)V

    return-void
.end method

.method public bridge synthetic h(Ljava/lang/Comparable;)V
    .locals 0

    check-cast p1, Lk1/a;

    invoke-virtual {p0, p1}, Lu1/b$i;->j(Lk1/a;)V

    return-void
.end method

.method public i(Lk1/f$g;Lu1/c;I)Lk1/a;
    .locals 0

    invoke-virtual {p1}, Lk1/f$g;->u()Lk1/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu1/c;->a(Lk1/a;)Lk1/a;

    move-result-object p1

    return-object p1
.end method

.method public j(Lk1/a;)V
    .locals 1

    iget-object v0, p0, Lu1/b$i;->c:Lu1/b;

    invoke-static {v0}, Lu1/b;->g(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk1/a;->j(Lk1/f$g;)V

    return-void
.end method
