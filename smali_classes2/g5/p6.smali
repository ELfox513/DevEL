.class public final Lg5/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;J)V
    .locals 0

    iput-object p1, p0, Lg5/p6;->b:Lg5/i7;

    iput-wide p2, p0, Lg5/p6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg5/p6;->b:Lg5/i7;

    iget-wide v1, p0, Lg5/p6;->a:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lg5/i7;->u(JZ)V

    iget-object v0, p0, Lg5/p6;->b:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->I()Lg5/w8;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lg5/w8;->S(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
