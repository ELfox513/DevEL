.class public final Lr4/z23;
.super Lr4/c33;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lr4/c33;-><init>(Lr4/b33;)V

    return-void
.end method

.method public static final j(I)Lr4/c33;
    .locals 0

    if-gez p0, :cond_0

    invoke-static {}, Lr4/c33;->g()Lr4/c33;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    invoke-static {}, Lr4/c33;->h()Lr4/c33;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lr4/c33;->f()Lr4/c33;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lr4/c33;"
        }
    .end annotation

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lr4/z23;->j(I)Lr4/c33;

    move-result-object p1

    return-object p1
.end method

.method public final b(II)Lr4/c33;
    .locals 0

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lr4/z23;->j(I)Lr4/c33;

    move-result-object p1

    return-object p1
.end method

.method public final c(ZZ)Lr4/c33;
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lr4/w53;->a(ZZ)I

    move-result p1

    invoke-static {p1}, Lr4/z23;->j(I)Lr4/c33;

    move-result-object p1

    return-object p1
.end method

.method public final d(ZZ)Lr4/c33;
    .locals 0

    invoke-static {p1, p2}, Lr4/w53;->a(ZZ)I

    move-result p1

    invoke-static {p1}, Lr4/z23;->j(I)Lr4/c33;

    move-result-object p1

    return-object p1
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
