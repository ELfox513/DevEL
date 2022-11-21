.class public Lu1/b$f;
.super Lu1/b$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu1/b;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1/b$j<",
        "Lk1/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lu1/b;


# direct methods
.method public constructor <init>(Lu1/b;Lk1/f$g;)V
    .locals 0

    iput-object p1, p0, Lu1/b$f;->c:Lu1/b;

    invoke-direct {p0, p1, p2}, Lu1/b$j;-><init>(Lu1/b;Lk1/f$g;)V

    return-void
.end method


# virtual methods
.method public a(Lk1/s;)Lk1/s$a;
    .locals 0

    iget-object p1, p1, Lk1/s;->i:Lk1/s$a;

    return-object p1
.end method

.method public bridge synthetic d(Lk1/f$g;Lu1/c;I)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lu1/b$f;->i(Lk1/f$g;Lu1/c;I)Lk1/o;

    move-result-object p1

    return-object p1
.end method

.method public g(ILu1/c;II)V
    .locals 0

    iget-object p1, p2, Lu1/c;->h:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p2, p2, Lu1/c;->h:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic h(Ljava/lang/Comparable;)V
    .locals 0

    check-cast p1, Lk1/o;

    invoke-virtual {p0, p1}, Lu1/b$f;->j(Lk1/o;)V

    return-void
.end method

.method public i(Lk1/f$g;Lu1/c;I)Lk1/o;
    .locals 0

    invoke-virtual {p1}, Lk1/f$g;->G()Lk1/o;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu1/c;->e(Lk1/o;)Lk1/o;

    move-result-object p1

    return-object p1
.end method

.method public j(Lk1/o;)V
    .locals 1

    iget-object v0, p0, Lu1/b$f;->c:Lu1/b;

    invoke-static {v0}, Lu1/b;->e(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk1/o;->l(Lk1/f$g;)V

    return-void
.end method
