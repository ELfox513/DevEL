.class public final synthetic Lr4/sy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/az1;

.field public final b:Lr4/h83;

.field public final c:Lr4/h83;

.field public final d:Lr4/og0;


# direct methods
.method public constructor <init>(Lr4/az1;Lr4/h83;Lr4/h83;Lr4/og0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/sy1;->a:Lr4/az1;

    iput-object p2, p0, Lr4/sy1;->b:Lr4/h83;

    iput-object p3, p0, Lr4/sy1;->c:Lr4/h83;

    iput-object p4, p0, Lr4/sy1;->d:Lr4/og0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/sy1;->a:Lr4/az1;

    iget-object v1, p0, Lr4/sy1;->b:Lr4/h83;

    iget-object v2, p0, Lr4/sy1;->c:Lr4/h83;

    iget-object v3, p0, Lr4/sy1;->d:Lr4/og0;

    invoke-virtual {v0, v1, v2, v3}, Lr4/az1;->j7(Lr4/h83;Lr4/h83;Lr4/og0;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
