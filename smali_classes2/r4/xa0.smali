.class public final Lr4/xa0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lr4/xa0;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lr4/xa0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()Lr4/xa0;
    .locals 1

    sget-object v0, Lr4/xa0;->b:Lr4/xa0;

    if-nez v0, :cond_0

    new-instance v0, Lr4/xa0;

    invoke-direct {v0}, Lr4/xa0;-><init>()V

    sput-object v0, Lr4/xa0;->b:Lr4/xa0;

    :cond_0
    sget-object v0, Lr4/xa0;->b:Lr4/xa0;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Lr4/xa0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lr4/va0;

    invoke-direct {v1, p0, p1, p2}, Lr4/va0;-><init>(Lr4/xa0;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method
