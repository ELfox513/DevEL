.class public final synthetic Lx5/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/h0;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx5/h0;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lx5/k0;->c(Ljava/util/concurrent/CountDownLatch;Lj5/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
