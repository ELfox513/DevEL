.class public final Lr4/l33;
.super Lr4/h33;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/h33<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lr4/h33;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lr4/h33;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lr4/i33;
    .locals 0

    invoke-super {p0, p1}, Lr4/h33;->c(Ljava/lang/Object;)Lr4/h33;

    return-object p0
.end method

.method public final f(Ljava/lang/Object;)Lr4/l33;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lr4/l33<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lr4/h33;->c(Ljava/lang/Object;)Lr4/h33;

    return-object p0
.end method

.method public final g()Lr4/o33;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o33<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/h33;->c:Z

    iget-object v0, p0, Lr4/h33;->a:[Ljava/lang/Object;

    iget v1, p0, Lr4/h33;->b:I

    invoke-static {v0, v1}, Lr4/o33;->A([Ljava/lang/Object;I)Lr4/o33;

    move-result-object v0

    return-object v0
.end method
