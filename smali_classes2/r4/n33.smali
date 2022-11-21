.class public final Lr4/n33;
.super Lr4/o33;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient k:I

.field public final synthetic p:Lr4/o33;


# direct methods
.method public constructor <init>(Lr4/o33;II)V
    .locals 0

    iput-object p1, p0, Lr4/n33;->p:Lr4/o33;

    invoke-direct {p0}, Lr4/o33;-><init>()V

    iput p2, p0, Lr4/n33;->d:I

    iput p3, p0, Lr4/n33;->k:I

    return-void
.end method


# virtual methods
.method public final e()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/n33;->p:Lr4/o33;

    invoke-virtual {v0}, Lr4/j33;->e()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Lr4/n33;->p:Lr4/o33;

    invoke-virtual {v0}, Lr4/j33;->g()I

    move-result v0

    iget v1, p0, Lr4/n33;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lr4/n33;->k:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lr4/z03;->e(IILjava/lang/String;)I

    iget-object v0, p0, Lr4/n33;->p:Lr4/o33;

    iget v1, p0, Lr4/n33;->d:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Lr4/n33;->p:Lr4/o33;

    invoke-virtual {v0}, Lr4/j33;->g()I

    move-result v0

    iget v1, p0, Lr4/n33;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lr4/n33;->k:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o(II)Lr4/o33;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lr4/o33;"
        }
    .end annotation

    iget v0, p0, Lr4/n33;->k:I

    invoke-static {p1, p2, v0}, Lr4/z03;->g(III)V

    iget-object v0, p0, Lr4/n33;->p:Lr4/o33;

    iget v1, p0, Lr4/n33;->d:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lr4/o33;->o(II)Lr4/o33;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lr4/n33;->k:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/o33;->o(II)Lr4/o33;

    move-result-object p1

    return-object p1
.end method
