.class public final Lr4/an0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# instance fields
.field public final synthetic a:Lr4/cn0;


# direct methods
.method public constructor <init>(Lr4/cn0;)V
    .locals 0

    iput-object p1, p0, Lr4/an0;->a:Lr4/cn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lr4/an0;->a:Lr4/cn0;

    invoke-static {p1}, Lr4/cn0;->a(Lr4/cn0;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lr4/an0;->a:Lr4/cn0;

    invoke-static {p1}, Lr4/cn0;->a(Lr4/cn0;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
