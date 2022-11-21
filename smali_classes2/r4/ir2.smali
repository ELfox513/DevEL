.class public final Lr4/ir2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lr4/yq2;",
            "Lr4/hr2<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr4/ir2;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lr4/yq2;Landroid/content/Context;Lr4/pq2;Lr4/or2;)Lr4/hr2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lr4/r61<",
            "TAdT;>;AdT:",
            "Lr4/i31;",
            ">(",
            "Lr4/yq2;",
            "Landroid/content/Context;",
            "Lr4/pq2;",
            "Lr4/or2<",
            "TR;TAdT;>;)",
            "Lr4/hr2<",
            "TR;TAdT;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/ir2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/hr2;

    if-nez v0, :cond_0

    new-instance v0, Lr4/vq2;

    invoke-static {p1, p2}, Lr4/br2;->X0(Lr4/yq2;Landroid/content/Context;)Lr4/br2;

    move-result-object p2

    invoke-direct {v0, p2}, Lr4/vq2;-><init>(Lr4/br2;)V

    new-instance p2, Lr4/qr2;

    invoke-direct {p2, v0, p3, p4}, Lr4/qr2;-><init>(Lr4/uq2;Lr4/pq2;Lr4/or2;)V

    new-instance p3, Lr4/hr2;

    invoke-direct {p3, v0, p2}, Lr4/hr2;-><init>(Lr4/uq2;Lr4/qr2;)V

    iget-object p2, p0, Lr4/ir2;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_0
    return-object v0
.end method
