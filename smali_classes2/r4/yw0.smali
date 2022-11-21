.class public final synthetic Lr4/yw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/ax0;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lr4/ax0;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yw0;->a:Lr4/ax0;

    iput-object p2, p0, Lr4/yw0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lr4/yw0;->a:Lr4/ax0;

    iget-object v1, p0, Lr4/yw0;->b:Ljava/lang/Runnable;

    sget-object v2, Lr4/qm0;->e:Lr4/i83;

    new-instance v3, Lr4/zw0;

    invoke-direct {v3, v0, v1}, Lr4/zw0;-><init>(Lr4/ax0;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
