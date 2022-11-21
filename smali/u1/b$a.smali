.class public Lu1/b$a;
.super Lu1/b$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu1/b;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1/b$j<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lu1/b;


# direct methods
.method public constructor <init>(Lu1/b;Lk1/f$g;)V
    .locals 0

    iput-object p1, p0, Lu1/b$a;->c:Lu1/b;

    invoke-direct {p0, p1, p2}, Lu1/b$j;-><init>(Lu1/b;Lk1/f$g;)V

    return-void
.end method


# virtual methods
.method public a(Lk1/s;)Lk1/s$a;
    .locals 0

    iget-object p1, p1, Lk1/s;->b:Lk1/s$a;

    return-object p1
.end method

.method public bridge synthetic d(Lk1/f$g;Lu1/c;I)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lu1/b$a;->i(Lk1/f$g;Lu1/c;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(ILu1/c;II)V
    .locals 0

    iget-object p1, p2, Lu1/c;->b:[I

    aput p4, p1, p3

    return-void
.end method

.method public bridge synthetic h(Ljava/lang/Comparable;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu1/b$a;->j(Ljava/lang/String;)V

    return-void
.end method

.method public i(Lk1/f$g;Lu1/c;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lk1/f$g;->N()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lu1/b$a;->c:Lu1/b;

    invoke-static {v0}, Lu1/b;->c(Lu1/b;)Lk1/s;

    move-result-object v0

    iget-object v0, v0, Lk1/s;->p:Lk1/s$a;

    iget v1, v0, Lk1/s$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk1/s$a;->b:I

    iget-object v0, p0, Lu1/b$a;->c:Lu1/b;

    invoke-static {v0}, Lu1/b;->e(Lu1/b;)Lk1/f$g;

    move-result-object v0

    iget-object v1, p0, Lu1/b$a;->c:Lu1/b;

    invoke-static {v1}, Lu1/b;->d(Lu1/b;)Lk1/f$g;

    move-result-object v1

    invoke-virtual {v1}, Lk1/f$g;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->writeInt(I)V

    iget-object v0, p0, Lu1/b$a;->c:Lu1/b;

    invoke-static {v0}, Lu1/b;->d(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk1/f$g;->Y(Ljava/lang/String;)V

    return-void
.end method
