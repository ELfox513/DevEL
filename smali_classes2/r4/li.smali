.class public final Lr4/li;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/oi;

.field public final synthetic b:Lr4/qi;


# direct methods
.method public constructor <init>(Lr4/qi;Lr4/oi;)V
    .locals 0

    iput-object p1, p0, Lr4/li;->b:Lr4/qi;

    iput-object p2, p0, Lr4/li;->a:Lr4/oi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/li;->a:Lr4/oi;

    invoke-virtual {v0}, Lr4/oi;->a()V

    iget-object v0, p0, Lr4/li;->b:Lr4/qi;

    invoke-static {v0}, Lr4/qi;->z(Lr4/qi;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lr4/li;->b:Lr4/qi;

    invoke-static {v2}, Lr4/qi;->z(Lr4/qi;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/gj;

    invoke-virtual {v2}, Lr4/gj;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
