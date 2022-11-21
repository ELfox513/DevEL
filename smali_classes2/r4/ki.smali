.class public final Lr4/ki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/qi;


# direct methods
.method public constructor <init>(Lr4/qi;)V
    .locals 0

    iput-object p1, p0, Lr4/ki;->a:Lr4/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/ki;->a:Lr4/qi;

    invoke-static {v0}, Lr4/qi;->B(Lr4/qi;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/ki;->a:Lr4/qi;

    invoke-static {v0}, Lr4/qi;->A(Lr4/qi;)Lr4/ti;

    move-result-object v0

    iget-object v1, p0, Lr4/ki;->a:Lr4/qi;

    invoke-interface {v0, v1}, Lr4/ij;->b(Lr4/jj;)V

    :cond_0
    return-void
.end method
