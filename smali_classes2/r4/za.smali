.class public final synthetic Lr4/za;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final b:I

.field public final d:Lr4/ab;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILr4/ab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/za;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lr4/za;->b:I

    iput-object p3, p0, Lr4/za;->d:Lr4/ab;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lr4/za;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lr4/za;->b:I

    iget-object v2, p0, Lr4/za;->d:Lr4/ab;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/cb;

    invoke-virtual {v3, v1, v2}, Lr4/cb;->b(ILr4/ab;)V

    goto :goto_0

    :cond_0
    return-void
.end method
