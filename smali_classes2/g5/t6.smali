.class public final Lg5/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg5/t6;->k:Lg5/i7;

    iput-object p2, p0, Lg5/t6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lg5/t6;->b:Ljava/lang/String;

    iput-object p5, p0, Lg5/t6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lg5/t6;->k:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->I()Lg5/w8;

    move-result-object v0

    iget-object v1, p0, Lg5/t6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lg5/t6;->b:Ljava/lang/String;

    iget-object v3, p0, Lg5/t6;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lg5/w8;->U(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
