.class public final Lr4/tt2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lr4/hm0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lr4/hm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tt2;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr4/tt2;->b:Lr4/hm0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/tt2;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lr4/st2;

    invoke-direct {v1, p0, p1}, Lr4/st2;-><init>(Lr4/tt2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/tt2;->b:Lr4/hm0;

    invoke-virtual {v0, p1}, Lr4/hm0;->q(Ljava/lang/String;)V

    return-void
.end method
