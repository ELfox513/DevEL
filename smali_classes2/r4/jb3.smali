.class public final Lr4/jb3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/uh3;",
        "Lr4/rh3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/kb3;


# direct methods
.method public constructor <init>(Lr4/kb3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lr4/jb3;->b:Lr4/kb3;

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 0

    check-cast p1, Lr4/uh3;

    return-void
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/uh3;->D(Lr4/ll3;Lr4/bm3;)Lr4/uh3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr4/uh3;

    invoke-static {}, Lr4/rh3;->I()Lr4/qh3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/qh3;->x(Lr4/uh3;)Lr4/qh3;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lr4/qh3;->v(I)Lr4/qh3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/rh3;

    return-object p1
.end method
