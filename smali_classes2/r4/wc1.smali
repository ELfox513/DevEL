.class public final synthetic Lr4/wc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/xc1;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr4/xc1;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wc1;->a:Lr4/xc1;

    iput-object p2, p0, Lr4/wc1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/wc1;->a:Lr4/xc1;

    iget-object v1, p0, Lr4/wc1;->b:Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0, v1}, Lr4/xc1;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    const-string v2, "EventEmitter.notify"

    invoke-virtual {v1, v0, v2}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Event emitter exception."

    invoke-static {v1, v0}, Lb3/w1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
