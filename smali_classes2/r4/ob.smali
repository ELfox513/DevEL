.class public final synthetic Lr4/ob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/vb;

.field public final b:Lr4/qb;


# direct methods
.method public constructor <init>(Lr4/vb;Lr4/qb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ob;->a:Lr4/vb;

    iput-object p2, p0, Lr4/ob;->b:Lr4/qb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/ob;->a:Lr4/vb;

    iget-object v1, p0, Lr4/ob;->b:Lr4/qb;

    invoke-virtual {v0}, Lr4/vb;->c()I

    move-result v0

    invoke-interface {v1, v0}, Lr4/qb;->h(I)V

    return-void
.end method
