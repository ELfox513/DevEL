.class public final Lg5/u6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:Z

.field public final synthetic p:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lg5/u6;->p:Lg5/i7;

    iput-object p2, p0, Lg5/u6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lg5/u6;->b:Ljava/lang/String;

    iput-object p5, p0, Lg5/u6;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lg5/u6;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lg5/u6;->p:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->I()Lg5/w8;

    move-result-object v1

    iget-object v2, p0, Lg5/u6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lg5/u6;->b:Ljava/lang/String;

    iget-object v5, p0, Lg5/u6;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lg5/u6;->k:Z

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lg5/w8;->W(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
