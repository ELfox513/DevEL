.class public Lu1/b$g;
.super Lu1/b$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu1/b;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1/b$j<",
        "Lk1/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lu1/b;


# direct methods
.method public constructor <init>(Lu1/b;Lk1/f$g;)V
    .locals 0

    iput-object p1, p0, Lu1/b$g;->c:Lu1/b;

    invoke-direct {p0, p1, p2}, Lu1/b$j;-><init>(Lu1/b;Lk1/f$g;)V

    return-void
.end method


# virtual methods
.method public a(Lk1/s;)Lk1/s$a;
    .locals 0

    iget-object p1, p1, Lk1/s;->e:Lk1/s$a;

    return-object p1
.end method

.method public bridge synthetic d(Lk1/f$g;Lu1/c;I)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lu1/b$g;->i(Lk1/f$g;Lu1/c;I)Lk1/m;

    move-result-object p1

    return-object p1
.end method

.method public g(ILu1/c;II)V
    .locals 0

    if-ltz p4, :cond_0

    const p1, 0xffff

    if-gt p4, p1, :cond_0

    iget-object p1, p2, Lu1/c;->e:[S

    int-to-short p2, p4

    aput-short p2, p1, p3

    return-void

    :cond_0
    new-instance p1, Lk1/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "field ID not in [0, 0xffff]: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk1/i;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic h(Ljava/lang/Comparable;)V
    .locals 0

    check-cast p1, Lk1/m;

    invoke-virtual {p0, p1}, Lu1/b$g;->j(Lk1/m;)V

    return-void
.end method

.method public i(Lk1/f$g;Lu1/c;I)Lk1/m;
    .locals 0

    invoke-virtual {p1}, Lk1/f$g;->D()Lk1/m;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu1/c;->d(Lk1/m;)Lk1/m;

    move-result-object p1

    return-object p1
.end method

.method public j(Lk1/m;)V
    .locals 1

    iget-object v0, p0, Lu1/b$g;->c:Lu1/b;

    invoke-static {v0}, Lu1/b;->e(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk1/m;->j(Lk1/f$g;)V

    return-void
.end method
