.class public final Lb5/j2;
.super Lb5/n2;
.source "SourceFile"


# instance fields
.field public final synthetic p:Z

.field public final synthetic q:Lb5/y2;


# direct methods
.method public constructor <init>(Lb5/y2;Z)V
    .locals 0

    iput-object p1, p0, Lb5/j2;->q:Lb5/y2;

    iput-boolean p2, p0, Lb5/j2;->p:Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lb5/n2;-><init>(Lb5/y2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lb5/j2;->q:Lb5/y2;

    invoke-static {v0}, Lb5/y2;->s(Lb5/y2;)Lb5/f1;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/f1;

    iget-boolean v1, p0, Lb5/j2;->p:Z

    invoke-interface {v0, v1}, Lb5/f1;->setDataCollectionEnabled(Z)V

    return-void
.end method
