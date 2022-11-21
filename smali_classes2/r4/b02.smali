.class public final Lr4/b02;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/xz1;

.field public final b:Lr4/i83;


# direct methods
.method public constructor <init>(Lr4/xz1;Lr4/i83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/b02;->a:Lr4/xz1;

    iput-object p2, p0, Lr4/b02;->b:Lr4/i83;

    return-void
.end method


# virtual methods
.method public final a(Lr4/ps2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/ps2<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/b02;->b:Lr4/i83;

    iget-object v1, p0, Lr4/b02;->a:Lr4/xz1;

    invoke-static {v1}, Lr4/zz1;->a(Lr4/xz1;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/a02;

    invoke-direct {v1, p0, p1}, Lr4/a02;-><init>(Lr4/b02;Lr4/ps2;)V

    iget-object p1, p0, Lr4/b02;->b:Lr4/i83;

    invoke-static {v0, v1, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method
