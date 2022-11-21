.class public final Lb3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb3/d0;


# direct methods
.method public constructor <init>(Lb3/d0;)V
    .locals 0

    iput-object p1, p0, Lb3/a;->a:Lb3/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lb3/a;->a:Lb3/d0;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lb3/d0;->b(Lb3/d0;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lb3/a;->a:Lb3/d0;

    invoke-virtual {v0}, Lb3/d0;->a()V

    return-void
.end method
